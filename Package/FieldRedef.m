(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`FieldRedef`*)


(* ::Subtitle:: *)
(*Paclet for performing field redefinition and obtaining on-shell EFT basis *)


(* ::Chapter:: *)
(*Public:*)


PackageImport["GroupMagic`"]


(* ::Section::Closed:: *)
(*Scoping*)


(* ::Subsubsection::Closed:: *)
(*Exported*)


PackageExport["EOMSimplify"]
PackageExport["PrintEffectiveCouplings"]
PackageExport["ReplaceEffectiveCouplings"]
PackageExport["Rules"]


(* ::Subsubsection::Closed:: *)
(*Internal*)


PackageScope["LCurrent"]
PackageScope["EoMSimplificationStep"]
PackageScope["ReduceField"]
PackageScope["FieldsToShift"]
PackageScope["CoefficientOperator"]
PackageScope["KineticTerms"]
PackageScope["KineticTermQ"]
PackageScope["OccuringFields"]
PackageScope["WriteEFTLambda"]
PackageScope["ShiftOrder"]
PackageScope["CDExp"]
PackageScope["OperatorType"]
PackageScope["ResetTempCouplings"]


(* ::Section:: *)
(*Usage messages*)


(* ::Subsubsection::Closed:: *)
(*Exported*)


EOMSimplify::usage="EOMSimplify[L] takes a Lagrangian and removes redundant operators by the means of field redefinitions.";
PrintEffectiveCouplings::usage="PrintEffectiveCouplings[L] prints a list of effective couplings defined by EOMSimplify appearing in the input Lagrangian L, along with their definitions. With the option Rules\[Rule] True, the function will return the replacement list for these couplings, instead.";
ReplaceEffectiveCouplings::usage="ReplaceEffectiveCouplings[L] resubstitutes effective couplings defined by EOMSimplify.";


Rules::usage= "Rules is an option to specify whether output should be a list of replacement ruls instead of printed."


(* ::Chapter:: *)
(*Private:*)


(* ::Subsection::Closed:: *)
(*Operator classification*)


(* ::Subsubsection::Closed:: *)
(*Operator type*)


(* ::Text:: *)
(*Classifies an operator*)


Options[OperatorType]={CountEoMDerivatives -> False};

OperatorType[(c_:1)o_Operator, OptionsPattern[]]/;FreeQ[c, Operator]:=Module[
	{to=List@@ o,labels={}, derivs=0, tf,cEoMDer}
,
	cEoMDer=OptionValue[CountEoMDerivatives];

	If[cEoMDer,
		to=to//.{
			EoM[Field[l_,Scalar,i_,_]]:>  (derivs+=2;labels=Join[labels, {Field[l,Scalar,{},{}]}];tf[l,Scalar,i]),
			EoM[Field[l_,Fermion,i_,_]]:>  (derivs+=1;labels=Join[labels, {Field[l,Fermion,{},{}]}];tf[l,Fermion,i]),
			EoM[Bar@Field[l_,Fermion,i_,_]]:>  (derivs+=1;labels=Join[labels, {Field[l,Fermion,{},{}]}];Bar@tf[l,Fermion,i]),
			EoM[Transp@Field[l_,Fermion,i_,_]]:>  (derivs+=1;labels=Join[labels, {Field[l,Fermion,{},{}]}];Bar@tf[l,Fermion,i]),
			EoM[Field[l_,Vector,i_,_]]:>  (derivs+=1;labels=Join[labels, {Field[l,Vector,{},{}]}];tf[l,Vector,i])
			}
	];

	to=to//.{
		Field[l_, t_, i_, \[Mu]_/;Length[\[Mu]]>0]:> (derivs+=Length[\[Mu]];Field[l,t,i,{}]),
		FieldStrength[l_, mn_, i_, \[Mu]_/;Length[\[Mu]]>0]:> (derivs+=Length[\[Mu]];FieldStrength[l,mn,i,{}]),
		Field[l_,t_,i_,{}]:> (labels=Join[labels, {Field[l,t,{},{}]}];tf[l,t,i]),
		FieldStrength[l_,mn_,i_,{}]:> (labels=Join[labels, {FieldStrength[l,mn,{},{}]}];tf[l,mn,i])
	};
	{Sort[labels],derivs}
]


(* ::Subsubsection:: *)
(*Find kinetic terms*)


KineticTermQ[L_Plus]:=False
KineticTermQ[(c_:1)q_Operator]:=Module[{ot1,ot2},
	ot1=OperatorType[q,CountEoMDerivatives->True];
	ot2=OperatorType[q,CountEoMDerivatives->False];
	MatchQ[ot1, {{Field[_,Scalar,__],Field[_,Scalar,__]},2}]||
	(MatchQ[ot1, {{Field[_,Fermion,__],Field[_,Fermion,__]},1}]&&MatchQ[ot2, {{Field[_,Fermion,__],Field[_,Fermion,__]},0}])||MatchQ[ot1,{{FieldStrength[__],FieldStrength[__]},0}]
]


KineticTerms[L_]:=Operator[L]//.o_Operator /;(!KineticTermQ[o]):>0


OccuringFields[L_]:=Module[{f={},rField,rFS},
	L/. {Field[k_, A__]:>(AppendTo[f, k];rField[k,A]),FieldStrength[k_, A__]:>(AppendTo[f, k];rFS[k,A])};
	DeleteDuplicates[f]
]


(* ::Section:: *)
(*Field redefinitions*)


(* ::Subsection::Closed:: *)
(*Intermediate functions for power counting*)


(* make the EFT counting explicit so we can expand with the traditional series function *)
WriteEFTLambda[a_+b_, \[Lambda]_]:=WriteEFTLambda[a,\[Lambda]]+WriteEFTLambda[b,\[Lambda]]
WriteEFTLambda[a_*b_, \[Lambda]_]:=WriteEFTLambda[a,\[Lambda]]*WriteEFTLambda[b,\[Lambda]]
WriteEFTLambda[a_^b_, \[Lambda]_]:=WriteEFTLambda[a,\[Lambda]]^b
WriteEFTLambda[x_/;!(Head[x]===Plus ||Head[x]===Times), \[Lambda]_]:= x \[Lambda]^OperatorDimension[x]


(* splits Lagrangian by powercounting, returning a list of two Lagrangians {L0, L1}, where L0 contains all terms with of order splitOrder or below and L1 the rest *)
SplitLagrangianByPower[L_, splitOrder_]:=Module[{below=0,above=0,LExp},
	Do[
		If[OperatorDimension[term]<=splitOrder,
			below+=term,
			above+=term],
		{term,List@@(EvenBetterExpand[L]+Nothing)}];
	Return[{below,above}]
]


(* further separates the Lagrangian into terms that will be unaffected by field redefinitions of f *)
SeparateByFieldContent[{L0_,L1_}, f_Symbol]:=Module[{l0,ol0=0,ol1=L1},
	l0 = List@@(L0+Nothing);
	If[Length[l0]===0,Return[{L0,L1}]];
	Do[
		If[FreeQ[l0,f],
			ol1+=term,
			ol0+=term
		]
	,{term,l0}];
	
	{ol0,ol1}
]


DropFreeQ[L_,f_Symbol]:=Total@DeleteCases[List@@(Expand@L+Nothing), x_/;FreeQ[x,f]]
DropFreeQ[L_,f_List]:=Total@DeleteCases[List@@(Expand@L+Nothing), x_/;FreeQ[x,Alternatives@@f]]


GetMaxOrder[L_]:=Max[OperatorDimension/@(List@@(Expand@(L+Nothing)))]


(* ::Subsection:: *)
(*Aux modules needed for the vector fields*)


(* ::Subsubsection::Closed:: *)
(*Shorthand for collecting by operators (without simplification)*)


CBOp[ex_]:=Collect[ex,_Operator]


(* ::Subsubsection::Closed:: *)
(*Expanding out the covariant derivatives*)


CDGaugeTerm[mu_,Field[l_,t_,i_,d_],gr_]:=Module[{a,i2,in,j,gf},
	(* get the index of the field we're contracting *)
	i2=First[Cases[i/.Index[index_,repr_]:> in[index, GroupFromRep@repr], in[_,gr]]/.in[f_,gr]:> f];
	-I ($GaugeGroups[gr][Coupling][])RelabelIndices[$GaugeGroups[gr][Field][mu,a]FieldGenerators[l,gr,{a,i2,j}](Field[l,t,i,d]/.i2 -> j),Unique->True]
]

CDGaugeTerm[mu_,FieldStrength[l_,t_,i_,d_],gr_]:=Module[{a,i2,in,j,gf},
	(* get the index of the field we're contracting *)
	i2=First[Cases[i/.Index[index_,repr_]:> in[index, GroupFromRep@repr], in[_,gr]]/.in[f_,gr]:> f];
	-I ($GaugeGroups[gr][Coupling][])RelabelIndices[$GaugeGroups[gr][Field][mu,a]FieldGenerators[l,gr,{a,i2,j}](FieldStrength[l,t,i,d]/.i2 -> j),Unique->True]
]

CDGaugeTermsAbel[mu_,FieldStrength[l_,t_,i_,d_]]:=Module[{grps,qs,As,gs},
	(* all the groups a field is charged under *)
	grps=Head/@($FieldAssociation[l][Charges]);
	(* all the charges corresponding to those *)
	qs=#[[1]]&/@($FieldAssociation[l][Charges]);
	(* the gauge fields and couplings *)
	As=$GaugeGroups[#][Field][mu]&/@grps;
	gs=$GaugeGroups[#][Coupling][]&/@grps;
	-I Total[qs As gs]FieldStrength[l,t,i,d]
]

CDGaugeTermsAbel[mu_,Field[l_,t_,i_,d_]]:=Module[{grps,qs,As,gs},
	(* all the groups a field is charged under *)
	grps=Head/@($FieldAssociation[l][Charges]);
	(* all the charges corresponding to those *)
	qs=#[[1]]&/@($FieldAssociation[l][Charges]);
	(* the gauge fields and couplings *)
	As=$GaugeGroups[#][Field][mu]&/@grps;
	gs=$GaugeGroups[#][Coupling][]&/@grps;
	-I Total[qs As gs]Field[l,t,i,d]
]


CDExp[ind_List/;Length[ind]>1,expr_]:=Module[{},
	CDExp[ind[[;;-2]],CDExp[{Last@ind},expr]]
]

CDExp[{Index[f_,Lorentz]}, x_]:=CDExp[{f},x]

CDExp[{mu_},a_+b_]:=CDExp[{mu},a]+CDExp[{mu},b]

CDExp[{mu_Symbol},a:_Times|_NonCommutativeMultiply]:=Module[{t},
	(* the argument is a composite object - first let the covariant derivative act *)
	t= CD[mu,a];

	(* now we replace the derivative wrt mu with CDExp again *)
	t/.{Field[l_,t_,i_, {Index[mu,Lorentz],v___}]:> CDExp[{mu},Field[l,t,i,{v}]]}]

CDExp[{mu_Symbol},Bar[x_]]:=Bar@CDExp[{mu},x]

CDExp[{mu_Symbol},Transp[x_]]:=Transp@CDExp[{mu},x]


CDExp[{mu_Symbol},Field[l_,t_,ind_,d_]]:=Module[{groups},
	groups=DeleteCases[DeleteDuplicates[GroupFromRep/@(ind//.Index[_,g_]:> g)],None];
	CD[mu,Field[l,t,ind,d]]+Total[CDGaugeTerm[mu,Field[l,t,ind,d],#]&/@groups]+CDGaugeTermsAbel[mu,Field[l,t,ind,d]]
]

CDExp[{mu_Symbol},FieldStrength[l_,li_,ind_,d_]]:=Module[{groups},
	groups=DeleteCases[DeleteDuplicates[GroupFromRep/@(ind//.Index[_,g_]:> g)],None];
	CD[mu,FieldStrength[l,li,ind,d]]+Total[CDGaugeTerm[mu,FieldStrength[l,li,ind,d],#]&/@groups]+CDGaugeTermsAbel[mu,FieldStrength[l,li,ind,d]]
]



(* ::Subsubsection::Closed:: *)
(*VectorFieldReplacement*)


(* out of a pair of V[\[Mu]] and \[Delta]V[\[Mu]], this function creates the appropriate replacement rules for fields and field-strengths *)
VectorFieldReplacement::indexError="The expression '`1`' does not have the same open indices as '`2`'.";
VectorFieldReplacement[{ls:Field[_,_Vector,__],rs_}]:=Module[{oinds,pinds,inds,lsp,rsp,rslist,rslistJ,rslistV,outV,outFS,nu,pnu,mu,pmu,jmu,jnu,vectorlabel,vectormu,vectorindices,pvectorindices,drvs},
(*If[!(Sort[FindOpenIndices[ls]]===Sort[FindOpenIndices[rs]]),Message[FieldReplacement::indexError, ls,rs];Abort[]];*)

(* set up patterns and their non-pattern counterparts for the replacement rules *)
oinds=FindOpenIndices[ls];
inds=Symbol["ix"<>ToString[#]]&/@Range@Length@oinds;
pinds=Pattern[#, _]&/@inds;

rsp=Inactive[CD][drvs,NormalForm@rs/.Thread[oinds->inds]];
lsp=(ls/.Field[l_,t_,i_,_List]:>Field[l,t,i,Pattern[drvs,_]])/.Thread[oinds -> pinds];

(* the replacement rule for the vector field in its pure form *)
outV=lsp:>Evaluate[rsp]/.Inactive[CD]->CD;

(* two indices for the FS object *)
mu = Unique["a"];
pmu=Pattern[Evaluate@mu,_];
nu = Unique["b"];
pnu=Pattern[Evaluate@nu,_];

(* label of the field we are replacing *)
vectorlabel = (ls/.Field[a_,__]:> a);
vectormu=(ls/.Field[_,Vector@Index[a_,Lorentz],___]:> a);
(* non-Lorentz indices of the field *)
vectorindices=(ls/.Field[_,_,i_,___]:> i)/.Index[in_,_]:> in;
pvectorindices=Pattern[#,_]&/@vectorindices;

(* on the rs, drop all things that are just constant*vector field *)
rslist=List@@(rs+Nothing);

(* turn the vectors in this list into FS objects *)
rslistV=(Total[Cases[rslist, (c_:1)(x:Operator@Field[_, _Vector,___])/;FreeQ[c, Field|FieldStrength]]]/.Index[vectormu,Lorentz]:> mu)/.Field[lab_,Vector[mu],in_,_]:>(FieldStrength[lab,{Index[mu,Lorentz],Index[nu,Lorentz]},in,{}]);
(* currents that we will act on with the CD *)
rslistJ=NormalForm@RelabelIndices[Total[DeleteCases[rslist, (c_:1)(x:Operator[Field[_, _Vector,___]])/;FreeQ[c, Field|FieldStrength]]],Unique->True];


jmu= rslistJ/.Index[vectormu,Lorentz]:> Index[mu,Lorentz];
jnu= rslistJ/.Index[vectormu,Lorentz]:> Index[nu,Lorentz];
outFS=NormalForm[rslistV+CD[mu,jnu]-CD[nu,jmu]];

outFS=FieldStrength[vectorlabel,{Index[pmu,Lorentz],Index[pnu,Lorentz]},pvectorindices,Pattern[drvs,_]]:> Evaluate[Inactive[CD][drvs,outFS]]/.Inactive[CD]-> CD;

{outFS,outV}
]


(* ::Subsubsection:: *)
(*ShiftVectorFields*)


(*ShiftVectorFields::usage="ShiftVectorFields[L, V, dV] redefines (non-gauge) vector fields V inside L by dV.";*)
ShiftVectorFields::shiftmismatch="The fields list '`1`' and the list of shifts '`2`' are not of the same length.";
ShiftVectorFields::gaugeinvariance= "The vector field shifts contain at least one gauge term, which is currently impossible.";

ShiftVectorFields[expr_,fields_List,shift_List]:=Module[
	{pairs,pairsA,pairsV,
	A, V, dAA, dAV, dVA, dVV,temp,
	SplitVectorShift,GaugeContributionQ,
	chargeShiftMatrix
	},

	(* make sure shapes are compatible *)
	If[Length@fields =!= Length@shift,
	Message[ShiftVectorFields::shiftmismatch,fields,shift];Return[expr]];
	
	(* split fields and their shifts into gauge and non-gauge *)
	pairs=Transpose@{fields,Operator/@(Expand@shift)};
	pairsA=Cases[pairs,{x_,y_}/;GaugeFieldQ@x];
	pairsV=Cases[pairs,{x_,y_}/;!GaugeFieldQ@x];

	If[pairsV==={}, pairsV={{},{}},pairsV=Transpose@pairsV];
	If[pairsA==={}, pairsA={{},{}},pairsA=Transpose@pairsA];

	V=pairsV[[1]];
	A=pairsA[[1]];

	(* is a term a shift by a gauge field? *)
	GaugeContributionQ[x_]:=MatchQ[x, (c_:1)*Operator[Field[X_,FT_Vector,ARGS__]]/;GaugeFieldQ[Field[X, FT,ARGS]]];

	(* splitting shifts into gauge and nongauge. And yes, this is a module inside a module. *)
	SplitVectorShift[x_]:=Module[{shiftlist},
		shiftlist=List@@(x+Nothing);
		{Total@Cases[shiftlist,k_?GaugeContributionQ],Total@Cases[shiftlist,Except[k_?GaugeContributionQ]]}
	];


	temp=(SplitVectorShift/@pairsA[[2]]);
	If[temp=={}, temp={{},{}},temp=Transpose@temp];
	{dAA,dAV}=temp;

	temp=(SplitVectorShift/@pairsV[[2]]);
	If[temp=={}, temp={{},{}},temp=Transpose@temp];
	{dVA,dVV}=temp;

	(* make sure any doubly occuring indices are replaced by unique dummies *)
	dVV=RelabelIndices[dVV, Unique->True];
	dVA=RelabelIndices[dVA, Unique->True];
	dAA=RelabelIndices[dAA, Unique->True];
	dAV=RelabelIndices[dAV, Unique->True];

	(* check that there is no shift of a proca field involving a gauge field *)
	If[Length@Cases[Flatten[dVA], x_/;x=!=0] >0,
		Message[ShiftVectorFields::gaugeinvariance];
		Return[expr];
	];

	(* now we need to remove EoM operators, so the shifts trigger on them, but still need to deactivate Mathematica's x*x -> x\.b2 rule *)
	temp=(RelabelIndices[NormalForm@expr,Unique->True])/.(a1_:1) Power[b1_/;(!FreeQ[b1, Field|FieldStrength]), k1_Integer?Positive]:>a1 Inactive[Times]@@ConstantArray[b1,k1];

	(* set up replacement rules for the non-gauge vectors, meaning V -> dVV *)
	temp=temp/.Flatten[VectorFieldReplacement/@({V,dVV}\[Transpose])];

	(* now we expand the covariant derivatives everywhere, so we have gauge vectors explicit and can replace them by proca fields A -> dAV *)
	temp=temp/.{
		Field[l_,t_,i_,d_List/;Length[d]>0]:> (CDExp[d,Field[l,t,i,{}]]),
		FieldStrength[l_,t_,i_,d_List/;Length[d]>0]:> (CDExp[d,FieldStrength[l,t,i,{}]])
		};
	(* now we replace the gauge fields *)
	temp=temp/.Flatten[VectorFieldReplacement/@({A,dAV+dAA}\[Transpose])];
	(* now we remove the gauge fields explicitly showing since they are a relic of our method *)
	temp=temp/.Field[Alternatives@@(GetGaugeGroups[#][Field]&/@Keys@GetGaugeGroups[]), ___]:>0;

	temp
]


(* ::Subsection::Closed:: *)
(*Field redefinitions*)


(* ::Subsubsection::Closed:: *)
(*CoefficientOperator*)


CoefficientOperator[0,_] = 0;
CoefficientOperator[a1_+a2_,b_]:=CoefficientOperator[a1,b]+CoefficientOperator[a2,b]
CoefficientOperator[a_/n_,b_]:=CoefficientOperator[a,b]/n
CoefficientOperator[a_,b_]/;(Head[a]=!= Plus&&(!FreeQ[a, Plus])):=CoefficientOperator[Expand[a],b]

CoefficientOperator[(c_:1)o_Operator, b_]:=Module[{internalize,bPattern, rule={}, repcounter=0},
	internalize[m_]:=Symbol[SymbolName[m]<>"int"];
	internalize[Index[m_, t_]]:=Index[internalize[m],t];

	bPattern=b/. Index[mu_, t_]:> Index[Pattern[Evaluate@internalize[mu], _],t];
	AppendTo[rule,RuleDelayed[Condition[bPattern,repcounter++==0],Evaluate[(Times@@Table[Delta[k,internalize[k]],{k,FindOpenIndices[b]}])]]];
	
	Operator[ContractDelta[NormalForm[If[FreeQ[o,bPattern],0,ReplaceAll[c* Operator[o],rule]]]]]
]


(* ::Subsubsection::Closed:: *)
(*ReduceField*)


ReduceField::unimplemented = "The field type of '`1`' is currently not supported. Returning the input Lagrangian.";


(* redefines the field f such that reducible operators proportional to EoM[f] are removed from L *)
Options[ReduceField]={ShiftOrder -> All, ResultOrder->All};

ReduceField[L_,f_List/;Length[f]>1,opt:OptionsPattern[]]:=ReduceField[ReduceField[L, First@f, opt], f[[2;;]] , opt]

ReduceField[L_,{f_Symbol},opt:OptionsPattern[]]:=ReduceField[L,f,opt]

ReduceField[iL_, f_Symbol, OptionsPattern[]]:=Module[{real, type,oShift,oRes},
	type = GetFields[][f][Type];
	real = GetFields[][f][SelfConjugate];
	
	(* handle arguments *)
	oShift=If[MatchQ[OptionValue[ShiftOrder],_Integer],OptionValue[ShiftOrder],GetMaxOrder[iL]];
	oRes=If[MatchQ[OptionValue[ResultOrder],_Integer],OptionValue[ResultOrder],GetMaxOrder[iL]];
	
	$MonitorString2="-> Reducing "<> ToString@f<> " in terms of dimension "<>ToString@OptionValue@ShiftOrder <>".";
	
	Switch[{type,real},
		{Scalar,True}, ReduceRealScalar[iL,f,oShift,oRes],
		{Scalar,False}, ReduceComplexScalar[iL,f, oShift, oRes],
		{Fermion,False},ReduceDiracFermion[iL,f, oShift, oRes],
		{Fermion,True},ReduceMajoranaFermion[iL,f, oShift,oRes],
		{Vector,True},ReduceRealVector[iL, f, oShift, oRes],
		_, Message[ReduceField::unimplemented, f];iL
	]

]


(* ::Subsubsection::Closed:: *)
(*ReduceRealScalar*)


ReduceRealScalar[iL_, f_Symbol, oShift_,oRes_]:=
Module[
	{LNoShift=0,L,Ltemp,LR,inds,pinds, rule, shift, field, fieldPattern, drvs,Lread, a,b,c,ri, LAMBDA}
,

	inds=Symbol["i"<>ToString[#]]&/@Range@Length@GetFields[][f][Indices];
	pinds=Pattern[#, _]&/@inds;

	(* prepare the Lagrangian for reading off shift: expand and remove the FreeLag of the field we are reducing *)
	L=SeriesEFT[DropFreeQ[iL,f]-IBPSimplify@FreeLag[f],EFTOrder->oShift];
	(* need to relabel indices so the dummy indices don't lead to problems when substituting *)
	shift=RelabelIndices[NormalForm@CoefficientOperator[L, EoM[f[Sequence@@inds]]],Unique->True];
	
	(* set up the redefinition *)
	field=First@Cases[{f[Sequence@@inds]},_Field,Infinity]/. Field[a_,b_,c_,{}]:> Field[a,b,c,drvs];
	fieldPattern=First@Cases[{f[Sequence@@pinds]},_Field,Infinity]/. Field[a_,b_,c_,{}]:> Field[{a, oShift-4},b,c,Pattern[drvs,_]];
	With[{temp=shift,tfield=field,tdrvs=drvs},
		rule= (fieldPattern :> RelabelIndices[CD[tdrvs, temp],Unique->True])
	];
	
	(* split the Lagrangian into terms affected and unaffected by the shift *)
	{LR,LNoShift}=SeparateByFieldContent[SplitLagrangianByPower[iL,4+oRes-oShift],f];
	
	(* insert the field expansion, return to NormalForm since we're inserting fields into EoM objects as well *)
	LR = SeriesEFT[NormalForm @ LR /. Field[f,args__]:>Field[f,args]+Field[{f, oShift-4},args],EFTOrder->oRes];

	(* we need to prepare the Lagrangian: powers need to be removed but we cannot use operators, because we need EoM-type objects to stay unchanged *)
	LR = (CollectOperators@RelabelIndices[LR,Unique->True])/.(a1_:1) Power[b1_/;(!FreeQ[b1, Field|FieldStrength]), k1_Integer?Positive]:>a1 Inactive[Times]@@ConstantArray[b1,k1];

	(* plug in the rule, reactivate the powers and IBPSimplify *)
	LR=IBPSimplify19@Activate[LR/.rule];
	
	LR+LNoShift
]


(* ::Subsubsection::Closed:: *)
(*ReduceComplexScalar*)


ReduceComplexScalar[iL_, f_Symbol, oShift_,oRes_]:=Module[
	{start=Now,L,LNoShift,Ltemp,LR,inds,pinds, rule, chi1, chi2, shift, 
	field, fieldPattern, drvs,Lread,a,b,c,ri},

	inds=Symbol["i"<>ToString[#]]&/@Range@Length@GetFields[][f][Indices];
	pinds=Pattern[#, _]&/@inds;

	(* expand Lagrangian to ShiftOrder, keep only terms depending on the field f and IBPSimplify them *)
	L=SeriesEFT[DropFreeQ[iL,f]-IBPSimplify@FreeLag[f],EFTOrder->oShift];
	
	(* factor out the EoM[f] term *)
	chi1=RelabelIndices[NormalForm@CoefficientOperator[L, EoM[f[Sequence@@inds]]],Unique->True];
	(* ...and subtract the terms we found, to now get the EoM[Bar@f] coefficients *)
	chi2=RelabelIndices[CoefficientOperator[RelabelIndices@(L - Operator[chi1 EoM[f[Sequence@@inds]]]),EoM[Bar@f[Sequence@@inds]]],Unique->True];

	shift=1/2 Bar@NormalForm[(chi1+Bar@chi2)];
	
	field=First@Cases[{f[Sequence@@inds]},_Field,Infinity] /. Field[a_,b_,c_,{}] :> Field[a,b,c,drvs];
	fieldPattern=First@Cases[{f[Sequence@@pinds]},_Field,Infinity] /. Field[a_,b_,c_,{}] :> Field[{a,oShift-4},b,c,Pattern[drvs,_]];
	
	With[{temp=shift,tfield=field,tdrvs=drvs},
		rule= (fieldPattern :> RelabelIndices[tfield 0+CD[tdrvs, temp],Unique->True])
	];

	(* split the Lagrangian into terms affected and unaffected by the shift *)
	{LR,LNoShift}=SeparateByFieldContent[SplitLagrangianByPower[iL,4+oRes-oShift],f];
	
	(* we now expand the field and then the Lagrangian *)
	LR = SeriesEFT[NormalForm @ LR /. Field[f, args__] :> Field[f, args ]+ Field[{f,oShift-4},args],EFTOrder->oRes];
	
	(* we need to prepare the Lagrangian: powers need to be removed but we cannot use operators, because we need EoM-type objects to stay unchanged *)
	LR = (CollectOperators@RelabelIndices[LR,Unique->True])/.(a1_:1) Power[b1_/;(!FreeQ[b1, Field|FieldStrength]), k1_Integer?Positive]:>a1 Inactive[Times]@@ConstantArray[b1,k1];

	LR=Activate[LR/.rule];

	LR=IBPSimplify19@LR;
	
	LR+LNoShift
]


(* ::Subsubsection::Closed:: *)
(*ReduceMajoranaFermion*)


ReduceMajoranaFermion[iL_, f_Symbol, oShift_, oRes_]:=Module[{start=Now,LNoShift=0,L,LInt,Ltemp,LR,inds,pinds, rule, chi1, chi2, shift, field, fieldPattern, drvs,Lread, a,b,c,ri, LAMBDA},

	inds=Symbol["i"<>ToString[#]]&/@Range@Length@GetFields[][f][Indices];
	pinds=Pattern[#, _]&/@inds;

	(* expand Lagrangian to ShiftOrder, keep only terms depending on the field f and IBPSimplify them *)
	L=SeriesEFT[DropFreeQ[iL,f]-IBPSimplify@FreeLag[f],EFTOrder->oShift];

	(* factor out the EoM[f] term *)
	chi1=RelabelIndices[NormalForm@CoefficientOperator[L, EoM[First@Cases[{f[Sequence@@inds]},_Field,Infinity]]],Unique->True];
	(* ...and subtract the terms we found, to now get the EoM[Bar@f] coefficients *)
	chi2=RelabelIndices[NormalForm@CoefficientOperator[RelabelIndices[L-Operator[chi1**EoM[First@Cases[{f[Sequence@@inds]},_Field,Infinity]]],EoM[First@Cases[{Transp@f[Sequence@@inds]},Transp[_Field],Infinity]]]],Unique->True];

	shift=RelabelIndices[I*CC**(Transp@chi1-chi2)];

	field=First@Cases[{f[Sequence@@inds]},_Field,Infinity]/. Field[a_,b_,c_,{}]-> Field[a,b,c,drvs];
	fieldPattern=First@Cases[{f[Sequence@@pinds]},_Field,Infinity]/. Field[a_,b_,c_,{}]-> Field[{a,oShift-4},b,c,Pattern[drvs,_]];

	With[{temp=shift,tfield=field,tdrvs=drvs},
		rule= (fieldPattern :> RelabelIndices[CD[tdrvs, temp],Unique->True])
	];
	
	(* the shift should be homogeneous in power-counting, so we split the Lagrangian into two pieces *)
	{LR,LNoShift}=SplitLagrangianByPower[iL,4+oRes-oShift];
	
	LR = SeriesEFT[ NormalForm @ LR /. Field[f, args__] :> Field[f, args] + Field[{f, oShift-4}, args] , EFTOrder->oRes];

	(* we need to prepare the Lagrangian: powers need to be removed but we cannot use operators, because we need EoM-type objects to stay unchanged *)
	LR = (RelabelIndices[LR,Unique->True])/.(a1_:1) Power[b1_/;(!FreeQ[b1, Field|FieldStrength]), k1_Integer?Positive]:>a1 Inactive[Times]@@ConstantArray[b1,k1];
	
	LR=Activate[LR/.rule];

	LR=IBPSimplify19@LR;
				
	LR+LNoShift
]


(* ::Subsubsection::Closed:: *)
(*ReduceDiracFermion*)


ReduceDiracFermion[iL_, f_Symbol, oShift_, oRes_]:=Module[
	{L,LInt,Ltemp,LR,inds,pinds, rule, chi1, chi2, shift, field, fieldPattern, drvs,Lread, a,b,c,ri, LAMBDA,
	LNoShift, LYesShift, start=Now},

		inds=Symbol["i"<>ToString[#]]&/@Range@Length@GetFields[][f][Indices];
	pinds=Pattern[#, _]&/@inds;
	
	(* expand Lagrangian to ShiftOrder, keep only terms depending on the field f and IBPSimplify them *)
	L=SeriesEFT[DropFreeQ[iL,f]-IBPSimplify@FreeLag[f],EFTOrder->oShift];

	(* factor out the EoM[f] term *)
	chi1=RelabelIndices[NormalForm@CoefficientOperator[L , EoM[First@Cases[{f[Sequence@@inds]},_Field,Infinity]]],Unique->True];
	(* ...and subtract the terms we found, to now get the EoM[Bar@f] coefficients *)
	chi2=RelabelIndices[
			CoefficientOperator[
				RelabelIndices[L-Operator[chi1**EoM[First@Cases[{f[Sequence@@inds]},_Field,Infinity]]]],
				EoM[First@Cases[{Bar@f[Sequence@@inds]},Bar[_Field],Infinity]]],
			Unique->True];

	shift=-I/2*Bar@NormalForm[( chi1+ Bar@chi2)];
	
	field=First@Cases[{f[Sequence@@inds]},_Field,Infinity]/. Field[a_,b_,c_,{}]-> Field[a,b,c,drvs];
	fieldPattern=First@Cases[{f[Sequence@@pinds]},_Field,Infinity]/. Field[a_,b_,c_,{}]:> Field[{a,oShift-4},b,c,Pattern[drvs,_]];

	With[{temp=shift,tfield=field,tdrvs=drvs},
		rule= (fieldPattern :> RelabelIndices[CD[tdrvs, temp],Unique->True])
	];
	
	{LR,LNoShift}=SeparateByFieldContent[SplitLagrangianByPower[iL,4+oRes-oShift],f];
	
	LR = SeriesEFT[ NormalForm @ LR /. Field[f, args__] :> Field[f,args] + Field[{f, oShift-4}, args] , EFTOrder-> oRes];
	
	(* we need to prepare the Lagrangian: powers need to be removed but we cannot use operators, because we need EoM-type objects to stay unchanged *)
	LR=(RelabelIndices[LR,Unique->True])/.(a1_:1) Power[b1_/;(!FreeQ[b1, Field|FieldStrength]), k1_Integer?Positive]:>a1 Inactive[Times]@@ConstantArray[b1,k1];
	
	LR=Activate[LR/.rule];

	LR=IBPSimplify19@LR;
	
	LR+LNoShift
]


(* ::Subsubsection::Closed:: *)
(*ReduceRealVector*)


(* extracts a list of all vector fields that mix kinetically with the field f *)
GetMixingVectorFields[L_,f_]:=Module[{kinT},
	(*get all kinetic terms involving f*)
	kinT=Total@DeleteCases[List@@Expand[NormalForm@KineticTerms@L + Nothing], k_/;FreeQ[k,f]];
	DeleteDuplicates@Join[{f},DeleteDuplicatesBy[Cases[kinT,FieldStrength[___],Infinity],First]/.FieldStrength[k_,__]:>k]
]


GetZMatrix::NotDiagonalizable="The kinetic terms are not canoncially normalized at leading order and cannot be diagonalized.";

GetZMatrix[L_,f_List]:=Module[{Z,emptyList,\[Lambda],\[Mu],\[Nu],GetMaxMassDimension},
	Z=(#+Transpose@#)&@UpperTriangularize@Table[-2Coefficient[KineticTerms@L,Operator[RelabelIndices[FS[i,\[Mu],\[Nu]]FS[j,\[Mu],\[Nu]]]]],{i,f},{j,f}];

	(* take the matrix at leading order, make sure it's identity *)
	emptyList=DeleteCases[Flatten[IdentityMatrix[Length@f]-(Map[SeriesEFT[# , EFTOrder->0]&,Z,{2}]/.hbar -> 0)],0];
	If[Length@emptyList>0,
		Message[GetZMatrix::NotDiagonalizable];
		Return[IdentityMatrix[Length@f]]
	];


	(* the kinetic matrix can be inverted by perturbative methods. check if mixing occurs only at one-loop order *)

	If[Length@DeleteCases[Flatten[IdentityMatrix[Length@f]-(Z/.hbar -> 0)],0]>0,
		(* no, we have tree-level subleading power mixing *)
		Return[(BiPerturbativeInvertRegular[Map[WriteEFTLambda[#,\[Lambda]]&,Z,{2}],{hbar,0,1},{\[Lambda],0,GetMaxOrder[L]-4}]/.\[Lambda]->1)]
	,
		(* kinetic mixing only at loop-level, inversion is trivial *)	
		Return[(2IdentityMatrix[Length@f]-Z)]
	]


]


ReduceRealVector[iL_, f_Symbol, oShift_, oRes_]:=Module[
	{start=Now,LNoShift,L,Ltemp,LR,inds,pinds, rule, shift, field, fieldPattern, drvs,Lread, LAMBDA, mixingFields,Z},

	inds=Symbol["i"<>ToString[#]]&/@Range@(Length@GetFields[][f][Indices]+1);
	pinds=Pattern[#, _]&/@inds;

	L=iL;
	
	(* find if the the field f mixes with any other field *)
	mixingFields=GetMixingVectorFields[L,f];
	
	If[mixingFields==={f},
		(* f does not mix with any other field -> straightforward redefinition *)
		shift= -RelabelIndices[NormalForm@CoefficientOperator[(SeriesEFT[DropFreeQ[L,f],EFTOrder->oShift]), EoM[f[Sequence@@inds]]],Unique->True];

		field=First@Cases[{f[Sequence@@inds]},_Field,Infinity];
		If[OptionValue[ShiftOrder]===All,
				{LR,LNoShift}={L,0}
			,
				TPrint["[",QuantityMagnitude@DateDifference[start, Now,"Seconds"],"s] Splitting Lagrangian."];
				{LR,LNoShift}=SplitLagrangianByPower[L,4+oRes-oShift];
		];
		
		LR=IBPSimplify@Activate@ShiftVectorFields[NormalForm@LR, {field},{field+shift}]
	,

		(* there is mixing, so we need to work a bit harder, first extract the rotation matrix *)
		Z = GetZMatrix[L,mixingFields];
		TPrint["[",QuantityMagnitude@DateDifference[start, Now,"Seconds"],"s] Read off shifts."];
		(* the shift is now vector-valued, with the standard shift in the 1 component and then rotated by Z *)
		shift=Z . (-(SparseArray[{1->1},{Length@mixingFields}])RelabelIndices[NormalForm@CoefficientOperator[Operator@(SeriesEFT[DropFreeQ[L,mixingFields],EFTOrder->oShift]), EoM[f[Sequence@@inds]]],Unique->True]);
		field=(First@Cases[{#[Sequence@@inds]},_Field,Infinity])&/@mixingFields;

		TPrint["[",QuantityMagnitude@DateDifference[start, Now,"Seconds"],"s] Splitting Lagrangian."];
		{LR,LNoShift}=SplitLagrangianByPower[L,4+oRes-oShift];

		TPrint["[",QuantityMagnitude@DateDifference[start, Now,"Seconds"],"s] Performing redefinition."];
		LR=RelabelIndices@NormalForm@Activate@ShiftVectorFields[NormalForm@LR, field,field+shift]
	];

	TPrint["[",QuantityMagnitude@DateDifference[start, Now,"Seconds"],"s] Series expansion."];
	LR=IBPSimplify19@SeriesEFT[LR, EFTOrder->oRes];
	LR+LNoShift
]


(* ::Subsection::Closed:: *)
(*Handling redefined effective couplings*)


(* ::Subsubsection::Closed:: *)
(*Data structures holding the information*)


ResetTempCouplings[]:= (
		$TempCouplings={};
		$TempCouplingRules={};
	);
ResetTempCouplings[];


(* ::Subsubsection::Closed:: *)
(*Unique naming*)


(* module to make a unique symbol for a temp coupling - normally Mathematica's Unique function should do it but the counter seems bugged *)
CouplingUniqueName[op_Operator]:=Module[{baseString, incr=1},
	baseString = "c"<>StringJoin[ToString/@(Cases[op,_Field,Infinity] /. Field[f_,__]:> f )];
	If[Defined[Symbol@baseString], 
		While[Defined[Symbol[baseString<>ToString[incr]]], incr++];
		Return[Symbol[baseString<>ToString[incr]]];
	,
		Return[Symbol@baseString]
	]
]


(* ::Subsubsection::Closed:: *)
(*Replace couplings  and helpers*)


(* check if two operators are the same (or the hc of each other) *)
SameOperatorQ[o1_Operator, o2_Operator] := Module[{baro1,o1r,o2r},
	o1r = RelabelIndices @ o1;
	o2r = RelabelIndices @ o2;
	baro1 = Operator @ Bar @ RelabelIndices @ NormalForm @ o1;
	Return[SameQ[o1r, o2r] || SameQ[baro1, o2r]]
]


BarredOpQ[x_Operator] := SameOperatorQ[RelabelIndices @ x, Operator @ Bar @ RelabelIndices @ NormalForm @ x]


ToEffectiveCoupling[exp_,operator_Operator] :=Module[{index,indexType,\[Lambda]EFT, outCoupling,temp,inds, pinds, ruleLHS,ruleRHS,hermite},
		(* build the coupling name from the operator field content *)
		temp = CouplingUniqueName[operator];
		
		(* determine the open indices that the coupling needs to have *)
		index = FindOpenIndices @ First[List @@ (Expand@exp + Nothing)];
		indexType = Last /@ index;
		
		(* define the effective coupling and add it to the list *)
		hermite = HermitianQ[NormalForm@operator];
		DefineCoupling[temp, Indices -> indexType, EFTOrder -> 4 - OperatorDimension @ operator, SelfConjugate -> hermite];
		AppendTo[$TempCouplings,temp];
		
		(* the coupling as it appears in the Lagrangian term *)
		outCoupling = Coupling[temp, index, 4-OperatorDimension@operator];
		
		(* indices for the replacement rules *)
		inds = Symbol["i" <> ToString[#]]& /@ Range@Length@index;
		pinds = Pattern[#, _]& /@ inds;
		
		(* setting up the rules *)
		ruleRHS = exp /. Thread[index->inds];
		ruleLHS = Coupling[temp, pinds, 4 - OperatorDimension @ operator];
		AppendTo[$TempCouplingRules, With[{RHS = ruleRHS}, ruleLHS :> RelabelIndices[RHS,Unique -> True]]];
		
		(* return the Lagrangian term with replaced coupling *)
		Return[outCoupling]
	]


SubstituteCoefficients[L_]:=Module[{op3,tempCplPre,newCpls,LOut},
	(* list of all operators that appear at superleading power *)
	op3 = DeleteDuplicates [ Cases[SeriesEFT[L, EFTOrder -> 3],_Operator,Infinity], SameOperatorQ];
	
	(* replace the coefficients of all operators appearing in the above list by a newly defined effective coupling *)
	tempCplPre = $TempCouplings;
	LOut=Collect[L, _Operator]/.{
		x_Operator*c_ /;(MemberQ[op3, x] && !BarredOpQ[x]) :> PlusHc[x ToEffectiveCoupling[c, x]]-Bar[x c], 
		x_Operator * c_ /;(MemberQ[op3, x] && BarredOpQ[x]) :> x ToEffectiveCoupling[c, x]};
	
	newCpls=TreeReplacement/@DeleteCases[$TempCouplings, x_/;MemberQ[tempCplPre,x]];
	LOut /. newCpls
]


(* derive replacement rules to eliminate tree-level objects from matching coefficients once the above replacements have been made *)
TreeReplacement[c_] := Module[{finalRep,inds,pinds,fullRHS,treeRHS,deltaRHS, \[Delta]RHS ,variable,rawRule,finalLHS,TP},
	inds=Table[Unique["i"],{incr, Length@GetCouplings[c][Indices]}];
	pinds=Pattern[#, _]&/@inds;
	fullRHS = c[Sequence@@inds]/.$TempCouplingRules;
	treeRHS = fullRHS /. hbar -> 0;
	If[treeRHS===0, Return[Nothing]];
	deltaRHS = fullRHS - treeRHS;
	variable = First@Cases[treeRHS, _Coupling, Infinity];
	rawRule = (Last@Quiet@Solve[c[Sequence@@inds] == treeRHS + \[Delta]RHS, variable]/.\[Delta]RHS -> deltaRHS)[[1]];
	(* hacky way of generating patterns *)
	finalLHS = (rawRule[[1]] /. Index[f_,g_] :> Index[TP[f,_],g])/.TP -> Pattern;
	With[{theRHS = rawRule[[2]]}, finalLHS :> RelabelIndices[theRHS,Unique->True]]
]


(* ::Subsubsection:: *)
(*User output for the coupling*)


(* ::Text:: *)
(*Function for printing or outputting the rules of relevant replacement couplings for a given Lagrangian *)


Options@ PrintEffectiveCouplings= {Rules-> False}


PrintEffectiveCouplings[L_, OptionsPattern[]]? OptionsCheck:= Module[{rules={},couplings,inds},
	couplings = Cases[DeleteDuplicates[Cases[L, _Coupling, Infinity]/.Coupling[a_,__]:> a], x_/;MemberQ[ $TempCouplings,x]];
	If[Length@couplings === 0, Print["The supplied Lagrangian does not contain effective couplings."];Return[]];
	
	(*Return replacement rules if Rules-> True*)
	If[OptionValue@ Rules, 
		Return@ DeleteCases[$TempCouplingRules, _? (FreeQ[First@ #, Alternatives@@ couplings]&) ]; 
	];
	Do[
		inds=With[{l=Alphabet[], n=Length@(GetCouplings[term][Indices])},
			(Symbol/@Flatten@Table[StringJoin[#,If[i=!=0,ToString[i],""]]&/@l,{i,0,Ceiling[n/Length[l]]-1}])
		];
		Print[NiceForm[term[Sequence@@inds]], " = ", NiceForm[ RelabelIndices[term[Sequence@@inds]/.$TempCouplingRules]]]
	,
		{term,couplings}];
]


ReplaceEffectiveCouplings[L_]:=L//.$TempCouplingRules


(* ::Subsection:: *)
(*EOMSimplify*)


(* ::Subsubsection::Closed:: *)
(*Check for a standard kinetic term present*)


EOMInvalidQ[L_]:=Module[{fieldsInL, L4},
	fieldsInL =DeleteDuplicates[Join[
		Cases[L, _Field, Infinity]/.Field[f_,__]:>f,
		Cases[L, _FieldStrength, Infinity]/.FieldStrength[f_,__]:>f
		]];
	L4 = IBPSimplify@Total@Cases[List@@Expand@(SeriesEFT[L, EFTOrder->4]-Sum[FreeLag[field],{field,fieldsInL}]+Nothing), x_/;FreeQ[x,_Coupling]];
	!(L4 === 0)
]


(* ::Subsubsection::Closed:: *)
(*FieldsToShift*)


(* return the label of a field that needs to be redefined along with the lowest order in EFT counting at which the shift has to be performed *)
FieldsToShift[L0_]:=Module[{freeL,L,fields, list},
	(* all fields appearing in the input Lagrangian *)
	fields=DeleteDuplicates@Cases[L0, HoldPattern@Field[a_,__]:>a,Infinity];
	(* the free Lagrangian of all of these fields - so we get non-standard kinetic terms *)
	freeL = IBPSimplify19@Total[FreeLag[#]&/@fields];
	L = Collect[L0 - freeL,_Operator];
	
	(* vector fields get a special treatment, so their kinetic terms have to be removed completely *)
	L = L - SelectOperatorClass[L,{},4];
	
	(* now extract all EoM terms *)
	list = Cases[List@@Expand[L+Nothing], x_/;MemberQ[x, EoM[___],{0,Infinity}]];
	list = SortBy[{(First@Cases[#, _EoM,{0,Infinity}]&/@list)/.EoM[Field[f_,___]]|EoM[Bar@Field[f_,___]]|EoM[Transp@Field[f_,___]]:>f,(OperatorDimension@NormalForm@#)&/@list}\[Transpose],{First,Last}];
	SortBy[First/@Gather[SortBy[list,{First,Last}],First[#1]==First[#2]&],Last]
]



(* ::Subsubsection::Closed:: *)
(*Main module*)


EOMSimplify::EffectiveCoupling = "The Lagrangian contains terms of lower power than dimension 4. Defining effective couplings and assuming these terms to be dimension 4. Use 'PrintEffectiveCouplings' and 'ReplaceEffectiveCouplings' to recover explicit expressions.";
EOMSimplify::InvalidLagrangian = "The Lagrangian contains no valid kinetic terms for the occuring Kinetic terms and thus cannot be simplified."


Options[EOMSimplify] = {Verbose -> True};
Options[EoMSimplificationStep] = {EFTOrder -> All};


EOMSimplify[L_,OptionsPattern[]]:=Module[{out,maxOrder,operatorList,L3,L4,La},
	$MonitorString1="Preparing field redefinitions...";
	$MonitorString2="Determining order of input Lagrangian...";
	If[EOMInvalidQ[L],Message[EOMSimplify::InvalidLagrangian]; Return[L]];
	operatorList=OperatorDimension/@(List@@(Expand@(L+Nothing)));
	maxOrder=Max[operatorList];
	If[Min[operatorList]<4,
		(* there are superleading terms in the Lagrangian, redefine them *)
		Message[EOMSimplify::EffectiveCoupling];
		La = SeriesEFT[SubstituteCoefficients @ IBPSimplify @ L, EFTOrder->maxOrder]
		,
		La = L;
	];
	out = OptionalMonitor[OptionValue@Verbose,FixedPoint[EoMSimplificationStep[#,EFTOrder->maxOrder]&, IBPSimplify19 @ La],$MonitorString1<>"\n"<>$MonitorString2];
	$MonitorString1="";
	$MonitorString2="";
	out = GreensSimplify @ out
]

EoMSimplificationStep[L_,OptionsPattern[]]:=Module[{task, fields,order,temp,maxorder},
	$MonitorString1="Determining redundant operators...";
	$MonitorString2="";
	maxorder=OptionValue[EFTOrder];
	(* look at all fields that are involved in redundant operators *)
	task=GatherBy[FieldsToShift[L],Last];
	(* if nothing to simplify -> break out *)
	If[Length[task]==0, Return[L]];
	
	(* the task list is sorted by mass dimension -> start at the lowest order *)
	task=Transpose@First@task;
	fields=First@task;
	order=First@Last@task;
	$MonitorString1="Field redefinitions needed for "<> ToString@fields<> " at dimension "<> ToString@order<>".";
	(* call ReduceField with the current list of fields *)
	temp=ReduceField[L,fields, ShiftOrder-> order,ResultOrder->maxorder];
	LCurrent=temp;
	$MonitorString2="Simplifying Lagrangian...";
	IBPSimplify19 @ temp
]


(* ::Subsection::Closed:: *)
(*Handling off-diagonal kinetic terms*)


(* ::Subsubsection:: *)
(*Modules used in all cases*)


Options[BiPerturbativeInvert]={Triangular -> True};

BiPerturbativeInvert[M_,{\[Lambda]1_,l1_,n1_},{\[Lambda]2_,l2_,n2_},OptionsPattern[]]:=Module[{val},
	val = OptionValue[Triangular];
	If[val===True,
		BiPerturbativeInvertTriangular[M,{\[Lambda]1,l1,n1},{\[Lambda]2,l2,n2}]
	,
		BiPerturbativeInvertRegular[M,{\[Lambda]1,l1,n1},{\[Lambda]2,l2,n2}]
	]
]

BiPerturbativeInvertTriangular[M_,{\[Lambda]1_,l1_,n1_},{\[Lambda]2_,l2_,n2_}]:=Module[{R,r,m,eqs,var},
m=Length[M];
R= (IdentityMatrix[m]+UpperTriangularize@Table[Sum[(1-KroneckerDelta[k1,0]KroneckerDelta[k2,0])\[Lambda]1^k1 \[Lambda]2^k2 r[k1,k2,i,j],{k1,l1,n1},{k2,l2,n2}],{i,m},{j,m}]);
eqs=DeleteCases[Thread[0==Flatten[CoefficientList[Normal@Series[ComplexExpand[R\[ConjugateTranspose], r[_,_,_,_],TargetFunctions->Conjugate] . M . R-IdentityMatrix[m],{\[Lambda]1,0,n1},{\[Lambda]2,0,n2}],{\[Lambda]1,\[Lambda]2}]]],True]/.r[a_,b_,i_,j_]\[Conjugate]:> r[a,b,j,i];

var=Cases[eqs,r[__],{0,Infinity}];

Quiet[R/.(Last@Solve[Reduce@eqs,var]),{Solve::incnst}]
]

BiPerturbativeInvertRegular[M_,{\[Lambda]1_,l1_,n1_},{\[Lambda]2_,l2_,n2_}]:=Module[{R,r,m,eqs,var},

m=Length[M];
R= (IdentityMatrix[m]+Table[Sum[(1-KroneckerDelta[k1,0]KroneckerDelta[k2,0])\[Lambda]1^k1 \[Lambda]2^k2 r[k1,k2,i,j],{k1,l1,n1},{k2,l2,n2}],{i,m},{j,m}]);
eqs=DeleteCases[Thread[0==Flatten[CoefficientList[Normal@Series[R . M -IdentityMatrix[m],{\[Lambda]1,0,n1},{\[Lambda]2,0,n2}],{\[Lambda]1,\[Lambda]2}]]],True]/.r[a_,b_,i_,j_]\[Conjugate]:> r[a,b,j,i];

var=Cases[eqs,r[__],{0,Infinity}];

Quiet[R/.(Last@Solve[Reduce@eqs,var]),{Solve::incnst}]
]
