(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`FieldRedef`*)


(* ::Subtitle:: *)
(*Paclet for performing field redefinition and obtaining on-shell EFT basis *)


(* ::Chapter:: *)
(*Public:*)


PackageImport["GroupMagic`"]


(* ::Section:: *)
(*Scoping*)


(* ::Subsubsection:: *)
(*Exported*)


PackageExport["EOMSimplify"]
PackageExport["PrintEffectiveCouplings"]
PackageExport["ReplaceEffectiveCouplings"]
PackageExport["Rules"]
PackageExport["DummyCoefficients"]
PackageExport["EffectiveCouplingSymbol"]


(* ::Subsubsection:: *)
(*Internal*)


PackageScope["IntroduceEffectiveMasses"]
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


PackageScope["IntroduceEffectiveCouplings"]
PackageScope["OverrideDuplicateCouplingCheck"]
PackageScope["ShiftRenCouplings"]


(* ::Section:: *)
(*Usage messages*)


(* ::Subsubsection:: *)
(*Exported*)


EOMSimplify::usage =                    "EOMSimplify[L] takes a Lagrangian and removes redundant operators by the means of field redefinitions. The option 'EFTOrder' allows to define a maximal order in EFT counting. The standard value (Automatic) determines it from the input Lagrangian. The option 'DummyCoefficients' internally replaces matching coefficients with symbols, potentially improving performance when simplifying very large Lagrangians (standard is False).";
IntroduceEffectiveCouplings::usage =    "IntroduceEffectiveCouplings[L] replaces operator coefficients with newly defined, generic couplings to compress the structure of the Lagrangian. Use ReplaceEffectiveCouplings to resubstitute them or PrintEffectiveCouplings to show a list of the couplings and their definitions.";
PrintEffectiveCouplings::usage =        "PrintEffectiveCouplings[L] prints a list of effective couplings defined by EOMSimplify appearing in the input Lagrangian L, along with their definitions. With the option Rules\[Rule] True, the function will return the replacement list for these couplings, instead.";
ReplaceEffectiveCouplings::usage =      "ReplaceEffectiveCouplings[L] resubstitutes effective couplings defined by EOMSimplify or by IntroduceEffective couplings.";
Rules::usage =                          "Rules is an option to specify whether output should be a list of replacement rules instead of printed.";
EffectiveCouplingSymbol::usage =        "EffectiveCouplingSymbol an option of IntroduceEffectiveCouplings and is the symbol used for automatically defined effective couplings. The standard option is EffectiveCouplingSymbol -> \"C\"";
OverrideDuplicateCouplingCheck::usage = "OverrideDuplicateCouplingCheck is an option for IntroduceEffectiveCouplings (standard is False). If set to true, the function will introduce effective couplings even if an identical one has been defined previously.";
ShiftRenCouplings::usage              = "ShiftRenCouplings[L] shifts the EFT corrections in the renormalizable couplings to the higher-dimensional operators.";
IntroduceEffectiveMasses::usage =       "IntroduceEffectiveMasses[L] replaces mass terms with newly defined, generic mass couplings to compress the structure of the Lagrangian. Use ReplaceEffectiveCouplings to resubstitute them or PrintEffectiveCouplings to show a list of the couplings and their definitions.";


(* ::Chapter:: *)
(*Private:*)


(* ::Subsection:: *)
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


(* ::Subsubsection::Closed:: *)
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
GetMinOrder[L_]:=Min[OperatorDimension/@(List@@(Expand@(L+Nothing)))]


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

rsp=Inactive[CD][drvs,NormalForm[rs,CanonizeKinetic->False]/.Thread[oinds->inds]];
lsp=(ls/.Field[l_,t_,i_,_List]:>Field[l,t,i,Pattern[drvs,_]])/.Thread[oinds -> pinds];

(* the replacement rule for the vector field itself *)
With[{trhs = rsp},
	outV=lsp :> RelabelIndices[trhs,Unique->True]/.Inactive[CD]->CD
];

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
rslistV = (
	Total[
		Cases[rslist, (c_:1)(x:Operator@Field[_, _Vector,___])/;FreeQ[c, Field|FieldStrength]]
		] /.
	Index[vectormu,Lorentz]:> mu) /. Field[lab_,Vector[mu],in_,_] :> FieldStrength[lab,{Index[mu,Lorentz],Index[nu,Lorentz]},in,{}];
(* currents that we will act on with the CD *)
rslistJ=NormalForm[RelabelIndices[Total[DeleteCases[rslist, (c_:1)(x:Operator[Field[_, _Vector,___]])/;FreeQ[c, Field|FieldStrength]]],Unique->True], CanonizeKinetic->False];


jmu= rslistJ/.Index[vectormu,Lorentz]:> Index[mu,Lorentz];
jnu= rslistJ/.Index[vectormu,Lorentz]:> Index[nu,Lorentz];
outFS=NormalForm[rslistV+CD[mu,jnu]-CD[nu,jmu], CanonizeKinetic->False];

With[{trhs = outFS},
	outFS=FieldStrength[vectorlabel,{Index[pmu,Lorentz],Index[pnu,Lorentz]},pvectorindices,Pattern[drvs,_]]:> RelabelIndices[CD[drvs,trhs],Unique->True]/.Inactive[CD]-> CD
];

{outFS,outV}
]


(* ::Subsubsection::Closed:: *)
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
	(*temp=temp/.(Map[Inactive@RelabelIndices[#,Unique->True]&,Association@Flatten[VectorFieldReplacement/@({A,dAV+dAA}\[Transpose])],1] /.Association->List );*)

	temp=temp//Activate;
	(* now we remove the gauge fields explicitly showing since they are a relic of our method *)
	temp=temp/.Field[Alternatives@@(GetGaugeGroups[#][Field]&/@Keys@GetGaugeGroups[]), ___]:>0;
	temp

]


(* ::Subsection:: *)
(*Field redefinitions*)


(* ::Subsubsection::Closed:: *)
(*HBarExpand*)


(* quickly handles large expressions expanding them step by step - which is somehow faster than Mathematica's in-house solution "Expand" *)
HBarExpand[expr_Plus]:=HBarExpand/@ expr


HBarExpand[expr_Times]:=Module[{reexp, t=1,inc},
	reexp =List@@(HBarExpand /@  expr);
	For[inc=1,inc<=Length@reexp,inc++,
		t =Expand[ t * reexp[[inc]]]
	];
	t
]


HBarExpand[Except[_Times|_Plus,x_]]:=x


(* ::Subsubsection::Closed:: *)
(*CoefficientOperator*)


CoefficientOperator[0,_] = 0;
CoefficientOperator[a_Plus,b_]:=(CoefficientOperator[#,b]& /@ a)
CoefficientOperator[a_ n_^(m_/;m<0),b_]:=(CoefficientOperator[a,b]n^m)
CoefficientOperator[a_,b_]/;(Head[a]=!= Plus&&(!FreeQ[a, Plus])):=(CoefficientOperator[Expand[a],b])

CoefficientOperator[(c_:1)o_Operator, b_]:=Module[{internalize,bPattern, rule={}, repcounter=0},
	internalize[m_]:=Symbol[SymbolName[m]<>"int"];
	internalize[Index[m_, t_]]:=Index[internalize[m],t];

	bPattern=b/. Index[mu_, t_]:> Index[Pattern[Evaluate@internalize[mu], _],t];

	AppendTo[rule,RuleDelayed[Condition[bPattern,repcounter++==0],Evaluate[(Times@@Table[Delta[k,internalize[k]],{k,FindOpenIndices[b]}])]]];


	Operator[ ContractDelta[NormalForm[If[FreeQ[o,bPattern],0,ReplaceAll[c* Operator@o,rule]], CanonizeKinetic -> False]]]
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
		{Fermion,False}, ReduceDiracFermion[iL,f, oShift, oRes],
		{Fermion,True}, ReduceMajoranaFermion[iL,f, oShift,oRes],
		{Vector,True}, ReduceRealVector[iL, f, oShift, oRes],
		_, Message[ReduceField::unimplemented, f];iL
	]

]


(* ::Subsubsection::Closed:: *)
(*ReduceRealScalar*)


ReduceRealScalar[iL_, f_Symbol, oShift_,oRes_]:=
Module[
	{LNoShift=0,L,Ltemp,LR,inds,pinds, rule0,rule1, shift,shift0,shift1, field, fieldPattern0,fieldPattern1, drvs,Lread, a,b,c,ri, LAMBDA}
,
	inds=Symbol["i"<>ToString[#]]&/@Range@Length@GetFields[][f][Indices];
	pinds=Pattern[#, _]&/@inds;

	(* prepare the Lagrangian for reading off shift: expand and remove the FreeLag of the field we are reducing *)
	L=SeriesEFT[DropFreeQ[iL,f]-InternalSimplify@FreeLag[f],EFTOrder->oShift];
	(* need to relabel indices so the dummy indices don't lead to problems when substituting *)
	shift= RelabelIndices[NormalForm[CoefficientOperator[L, EoM[f[Sequence@@inds]]], CanonizeKinetic -> False],Unique->True];
	shift0 = Coefficient[shift, hbar, 0];
	shift1 = Coefficient[shift, hbar, 1];

	(* set up the redefinition *)
	field=First@Cases[{f[Sequence@@inds]},_Field,Infinity]/. Field[a_,b_,c_,{}]:> Field[a,b,c,drvs];
	fieldPattern0=First@Cases[{f[Sequence@@pinds]},_Field,Infinity]/. Field[a_,b_,c_,{}]:> Field[{a, oShift-4,0},b,c,Pattern[drvs,_]];
	fieldPattern1=First@Cases[{f[Sequence@@pinds]},_Field,Infinity]/. Field[a_,b_,c_,{}]:> Field[{a, oShift-4,1},b,c,Pattern[drvs,_]];

	With[{temp0=shift0,temp1=shift1,tfield=field,tdrvs=drvs},
		rule0 = (fieldPattern0 :> RelabelIndices[CD[tdrvs, temp0],Unique->True]);
		rule1 = (fieldPattern1 :> RelabelIndices[CD[tdrvs, temp1],Unique->True])
	];

	(* split the Lagrangian into terms affected and unaffected by the shift *)
	{LR,LNoShift}=SeparateByFieldContent[SplitLagrangianByPower[iL,4+oRes-oShift],f];

	(* insert the field expansion, return to NormalForm since we're inserting fields into EoM objects as well *)
	LR = SeriesEFT[BetterExpand @ NormalForm @ LR /. Field[f,args__]:>Field[f,args] + Field[{f, oShift-4,0},args] + hbar Field[{f, oShift-4,1},args],EFTOrder->oRes];

	(* we need to prepare the Lagrangian: powers need to be removed but we cannot use operators, because we need EoM-type objects to stay unchanged *)
	LR = (RelabelIndices[LR,Unique->True])/.(a1_:1) Power[b1_/;(!FreeQ[b1, Field|FieldStrength]), k1_Integer?Positive]:>a1 Inactive[Times]@@ConstantArray[b1,k1];

	(* plug in the rule, reactivate the powers and IBPSimplify *)
	LR = InternalSimplify @ Activate[LR/.{rule0,rule1}];

	LR+LNoShift
]


(* ::Subsubsection::Closed:: *)
(*ReduceComplexScalar*)


ReduceComplexScalar[iL_, f_Symbol, oShift_,oRes_]:=Module[
	{L,LNoShift,Ltemp,LR,inds,pinds,  chi1, chi2, shift,
	shift0,rule0,shift1,rule1,LR0,LR1,
	field, fieldPattern0,fieldPattern1, drvs,Lread,a,b,c,ri},

	inds=Symbol["i"<>ToString[#]]&/@Range@Length@GetFields[][f][Indices];
	pinds=Pattern[#, _]&/@inds;


	(* expand Lagrangian to ShiftOrder, keep only terms depending on the field f and IBPSimplify them *)
	L=SeriesEFT[DropFreeQ[iL,f]-InternalSimplify@FreeLag[f],EFTOrder->oShift];

	(* factor out the EoM[f] term *)
	chi1=RelabelIndices[NormalForm[CoefficientOperator[L, EoM[f[Sequence@@inds]]],CanonizeKinetic -> False],Unique->True];

	(* ...and subtract the terms we found, to now get the EoM[Bar@f] coefficients *)
	chi2=RelabelIndices[CoefficientOperator[RelabelIndices@(L - Operator[chi1 EoM[f[Sequence@@inds]]]),EoM[Bar@f[Sequence@@inds]]],Unique->True];


	shift=1/2 Bar@NormalForm[(chi1+Bar@chi2),CanonizeKinetic -> False];
	shift0 = Coefficient[shift, hbar, 0];
	shift1 = Coefficient[shift, hbar, 1];

	field=First@Cases[{f[Sequence@@inds]},_Field,Infinity] /. Field[a_,b_,c_,{}] :> Field[a,b,c,drvs];
	fieldPattern0=First@Cases[{f[Sequence@@pinds]},_Field,Infinity] /. Field[a_,b_,c_,{}] :> Field[{a,oShift-4,0},b,c,Pattern[drvs,_]];
	fieldPattern1=First@Cases[{f[Sequence@@pinds]},_Field,Infinity] /. Field[a_,b_,c_,{}] :> Field[{a,oShift-4,1},b,c,Pattern[drvs,_]];

	With[{temp0=shift0,temp1=shift1,tfield=field,tdrvs=drvs},
		rule0 = (fieldPattern0 :> RelabelIndices[CD[tdrvs, temp0],Unique->True]);
		rule1 = (fieldPattern1 :> RelabelIndices[CD[tdrvs, temp1],Unique->True])
	];

	(* split the Lagrangian into terms affected and unaffected by the shift *)
	{LR,LNoShift}=SeparateByFieldContent[SplitLagrangianByPower[iL,4+oRes-oShift],f];


	(* we now expand the field and then the Lagrangian *)
	LR = SeriesEFT[BetterExpand @ NormalForm @ LR /. Field[f, args__] :> Field[f, args ] + Field[{f,oShift-4,0},args] + hbar Field[{f,oShift-4,1},args],EFTOrder->oRes];


	(* we need to prepare the Lagrangian: powers need to be removed but we cannot use operators, because we need EoM-type objects to stay unchanged *)
	LR = (RelabelIndices[LR,Unique->True])/.(a1_:1) Power[b1_/;(!FreeQ[b1, Field|FieldStrength]), k1_Integer?Positive]:>a1 Inactive[Times]@@ConstantArray[b1,k1];

	LR = Activate[LR /. {rule0,rule1}];

	LR=InternalSimplify @ LR;

	LR+LNoShift
]


(* ::Subsubsection::Closed:: *)
(*ReduceMajoranaFermion*)


ReduceMajoranaFermion[iL_, f_Symbol, oShift_, oRes_]:=Module[{start=Now,LNoShift=0,L,LInt,Ltemp,LR,inds,pinds, rule0,rule1, chi1, chi2, shift,shift0,shift1, field, fieldPattern0,fieldPattern1, drvs,Lread, a,b,c,ri, LAMBDA},

	inds=Symbol["i"<>ToString[#]]&/@Range@Length@GetFields[][f][Indices];
	pinds=Pattern[#, _]&/@inds;

	(* expand Lagrangian to ShiftOrder, keep only terms depending on the field f and IBPSimplify them *)
	L=SeriesEFT[DropFreeQ[iL,f]-InternalSimplify@FreeLag[f],EFTOrder->oShift];

	(* factor out the EoM[f] term *)
	chi1=RelabelIndices[NormalForm[CoefficientOperator[L, EoM[First@Cases[{f[Sequence@@inds]},_Field,Infinity]]],CanonizeKinetic->False],Unique->True];

	(* ...and subtract the terms we found, to now get the EoM[Bar@f] coefficients *)
	chi2=RelabelIndices[NormalForm[CoefficientOperator[RelabelIndices[L-Operator[chi1**EoM[First@Cases[{f[Sequence@@inds]},_Field,Infinity]]]],EoM[First@Cases[{Transp@f[Sequence@@inds]},Transp[_Field],Infinity]]],CanonizeKinetic->False],Unique->True];

	shift=RelabelIndices[I*CC**(Transp@chi1-chi2)];
	shift0 = Coefficient[shift, hbar, 0];
	shift1 = Coefficient[shift, hbar, 1];

	field=First@Cases[{f[Sequence@@inds]},_Field,Infinity]/. Field[a_,b_,c_,{}]-> Field[a,b,c,drvs];
	fieldPattern0=First@Cases[{f[Sequence@@pinds]},_Field,Infinity]/. Field[a_,b_,c_,{}]-> Field[{a,oShift-4,0},b,c,Pattern[drvs,_]];
	fieldPattern1=First@Cases[{f[Sequence@@pinds]},_Field,Infinity]/. Field[a_,b_,c_,{}]-> Field[{a,oShift-4,1},b,c,Pattern[drvs,_]];

	With[{temp0=shift0,temp1=shift1,tfield=field,tdrvs=drvs},
		rule0 = (fieldPattern0 :> RelabelIndices[CD[tdrvs, temp0],Unique->True]);
		rule1 = (fieldPattern1 :> RelabelIndices[CD[tdrvs, temp1],Unique->True])
	];

	(* the shift should be homogeneous in power-counting, so we split the Lagrangian into two pieces *)
	{LR,LNoShift}=SplitLagrangianByPower[iL,4+oRes-oShift];

	LR = SeriesEFT[ NormalForm @ LR /. Field[f, args__] :> Field[f, args] + Field[{f, oShift-4,0}, args]+hbar Field[{f, oShift-4,1}, args] , EFTOrder->oRes];

	(* we need to prepare the Lagrangian: powers need to be removed but we cannot use operators, because we need EoM-type objects to stay unchanged *)
	LR = (RelabelIndices[LR,Unique->True])/.(a1_:1) Power[b1_/;(!FreeQ[b1, Field|FieldStrength]), k1_Integer?Positive]:>a1 Inactive[Times]@@ConstantArray[b1,k1];

	LR=Activate[LR/.{rule0,rule1}];

	LR=InternalSimplify @ LR;

	LR+LNoShift
]


(* ::Subsubsection::Closed:: *)
(*ReduceDiracFermion*)


ReduceDiracFermion[iL_, f_Symbol, oShift_, oRes_]:=Module[
	{L,LInt,Ltemp,LR,inds,pinds, rule0,rule1, chi1, chi2, shift,shift0,shift1, field, fieldPattern0,fieldPattern1, drvs,Lread, a,b,c,ri, LAMBDA,
	LNoShift},

		inds=Symbol["i"<>ToString[#]]&/@Range@Length@GetFields[][f][Indices];
	pinds=Pattern[#, _]&/@inds;

	(* expand Lagrangian to ShiftOrder, keep only terms depending on the field f and IBPSimplify them *)
	L=SeriesEFT[DropFreeQ[iL,f]-InternalSimplify@FreeLag[f],EFTOrder->oShift];

	(* factor out the EoM[f] term *)
	chi1=RelabelIndices[NormalForm[CoefficientOperator[L , EoM[First@Cases[{f[Sequence@@inds]},_Field,Infinity]]], CanonizeKinetic->False],Unique->True];
	(* ...and subtract the terms we found, to now get the EoM[Bar@f] coefficients *)
	chi2=RelabelIndices[
			CoefficientOperator[
				RelabelIndices[L-Operator[chi1**EoM[First@Cases[{f[Sequence@@inds]},_Field,Infinity]]]],
				EoM[First@Cases[{Bar@f[Sequence@@inds]},Bar[_Field],Infinity]]],
			Unique->True];

	shift=-I/2*Bar@NormalForm[( chi1+ Bar@chi2),CanonizeKinetic->False];
	shift0 = Coefficient[shift, hbar, 0];
	shift1 = Coefficient[shift, hbar, 1];

	field=First@Cases[{f[Sequence@@inds]},_Field,Infinity]/. Field[a_,b_,c_,{}]-> Field[a,b,c,drvs];
	fieldPattern0=First@Cases[{f[Sequence@@pinds]},_Field,Infinity]/. Field[a_,b_,c_,{}]:> Field[{a,oShift-4,0},b,c,Pattern[drvs,_]];
	fieldPattern1=First@Cases[{f[Sequence@@pinds]},_Field,Infinity]/. Field[a_,b_,c_,{}]:> Field[{a,oShift-4,1},b,c,Pattern[drvs,_]];

	With[{temp0=shift0,temp1=shift1,tfield=field,tdrvs=drvs},
		rule0 = (fieldPattern0 :> RelabelIndices[CD[tdrvs, temp0],Unique->True]);
		rule1 = (fieldPattern1 :> RelabelIndices[CD[tdrvs, temp1],Unique->True])
	];

	{LR,LNoShift}=SeparateByFieldContent[SplitLagrangianByPower[iL,4+oRes-oShift],f];

	LR = SeriesEFT[BetterExpand @ NormalForm @ LR /. Field[f, args__] :> Field[f,args] + Field[{f, oShift-4,0}, args] +hbar Field[{f, oShift-4, 1}, args] , EFTOrder-> oRes];

	(* we need to prepare the Lagrangian: powers need to be removed but we cannot use operators, because we need EoM-type objects to stay unchanged *)
	LR=(RelabelIndices[LR,Unique->True])/.(a1_:1) Power[b1_/;(!FreeQ[b1, Field|FieldStrength]), k1_Integer?Positive]:>a1 Inactive[Times]@@ConstantArray[b1,k1];

	LR= Activate[LR/.{rule0,rule1}];

	LR=InternalSimplify @  LR;

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
	{LNoShift,L,Ltemp,LR,inds,pinds, rule, shift, field, fieldPattern, drvs,Lread, LAMBDA, mixingFields,Z},

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

				{LR,LNoShift}=SplitLagrangianByPower[L,4+oRes-oShift];
		];
		LR=(*InternalSimplify@*)RelabelIndices@Activate@ShiftVectorFields[NormalForm@LR, {field},{field+shift}]
	,

		(* there is mixing, so we need to work a bit harder, first extract the rotation matrix *)
		Z = GetZMatrix[L,mixingFields];

		(* the shift is now vector-valued, with the standard shift in the 1 component and then rotated by Z *)
		shift=Z . (-(SparseArray[{1->1},{Length@mixingFields}])RelabelIndices[NormalForm[CoefficientOperator[Operator@(SeriesEFT[DropFreeQ[L,mixingFields],EFTOrder->oShift]), EoM[f[Sequence@@inds]]], CanonizeKinetic->False],Unique->True]);
		field=(First@Cases[{#[Sequence@@inds]},_Field,Infinity])&/@mixingFields;


		{LR,LNoShift}=SplitLagrangianByPower[L,4+oRes-oShift];


		LR=RelabelIndices@NormalForm@Activate@ShiftVectorFields[NormalForm@LR, field,field+shift]
	];

	LR=InternalSimplify@SeriesEFT[HBarExpand @ LR, EFTOrder->oRes];
	LR+LNoShift
]


(* ::Subsection:: *)
(*Handling redefined effective couplings*)


(* ::Subsubsection::Closed:: *)
(*Data structures holding the information*)


ResetTempCouplings[]:= (
		$TempCouplings={};
		$TempCouplingRules={};
	);
ResetTempCouplings[];


ResetInternalCouplings[]:= (
		$InternalCouplings={};
		$IntCouplingRules={};
	);
ResetInternalCouplings[];


(* ::Subsubsection::Closed:: *)
(*Replace couplings  and helpers*)


(* check if two operators are the same (or the hc of each other) *)
SameOperatorQ[(c1_:1) o1_Operator,(c2_:1) o2_Operator] := Module[{baro1,o1r,o2r},
	o1r = c1 RelabelIndices @ o1;
	o2r = c2 RelabelIndices @ o2;
	baro1 = Operator @ Bar @ RelabelIndices @ NormalForm @ (c1 o1);
	Return[SameQ[o1r,o2r] || SameQ[baro1, o2r]]
]


(* check if an operator is hermitian *)
BarredOpQ[x_Operator] := Expand[RelabelIndices @ x - Operator @ Bar @ RelabelIndices @ NormalForm @ x]===0
MHermitianQ[x_]:= GreensSimplify[x - Bar @ x] === 0


(* hacky check to see if a rule has already been defined - SameQ doesn't work reliably on RuleDelayed objects *)
SameRuleQ[r_, q_]:=Module[{rx=r,qx=q,tlbl,rd},
	rx = rx /.RuleDelayed[Coupling[a_,f___],b_]:> rd[Coupling[tlbl,f],RelabelIndices@b];
	qx = qx /.RuleDelayed[Coupling[a_,f___],b_]:> rd[Coupling[tlbl,f],RelabelIndices@b];
	SameQ[rx, qx]
]


ToEffectiveCoupling::IndexProblem="The expression `1` contains a mixture of diagonal and non-diagonal indices and cannot be treated.";

(* option Superleading specifies if this coupling acts as a replacement of superleading terms or just as an internal coupling
   option Internal specifies if this coupling is saved to the temporary internal list or the public one *)
Options @ ToEffectiveCoupling = { Superleading -> True, Internal -> True, EffectiveCouplingSymbol -> "C", HermitianTerm -> False, OverrideDuplicateCouplingCheck -> False };

(* exp is only the coupling, this expression returns only the effective coupling as well, not the product with the operator *)
ToEffectiveCoupling[exp_, operator_Operator, OptionsPattern[] ] :=Module[
		{superleading,internal,power,diagIndex,nDiagIndex,index,indexType,\[Lambda]EFT, outCoupling,temp,inds, pinds, ruleLHS,ruleRHS,hermite, derivativePhase = 1, preRHS,
		preExisting, candidates, candidateLabels, hermitianTerm, pOrder, permConversion, symmetries = {},
		tbdassociation, couplingsSameProperty, ignoreduplicates, isdiagonal = False,
		baseString, incr=1, opdevcount, fieldtally, prettylabel, couplingstring = "C"}
	,
		(* get options *)
		hermitianTerm = TrueQ @ OptionValue @ HermitianTerm;
		superleading = TrueQ @ OptionValue @ Superleading;
		internal = TrueQ @ OptionValue @ Internal;
		ignoreduplicates = TrueQ @ OptionValue @ OverrideDuplicateCouplingCheck;

		If[Head @ OptionValue[ EffectiveCouplingSymbol ] === String, couplingstring = OptionValue[ EffectiveCouplingSymbol ] ];

		(* build the coupling name from the operator field content and number of derivatives *)
		opdevcount = Length@Flatten@Cases[operator, Field[__,k_/;Length[k]>0]|FieldStrength[__,k_/;Length[k]>0] :> k,Infinity] +
					2 Length@Flatten@Cases[operator, EoM[Field[_,Scalar,__]]|EoM[Bar @ Field[_,Scalar,__]],Infinity] +
					Length@Flatten@Cases[operator, EoM[Field[_,Except@ Scalar,__]]|EoM[Bar @ Field[_,Except@ Scalar,__]],Infinity];
		fieldtally = Tally@Cases[operator,Field[f_,__]|FieldStrength[f_,__]:> f,Infinity];
		baseString = couplingstring <> StringJoin[ ToString/@ Flatten[ If[MatchQ[#,{_,k_/;k>1}], #, {#[[1]]}]& /@ Join[fieldtally, {If[opdevcount>0,{"D",opdevcount},Nothing]}] ] ];
		If[Defined[Symbol@baseString],
			While[Defined[Symbol[baseString<>ToString[incr]]], incr++];
			temp = Symbol[baseString<>ToString[incr]];
			prettylabel = StandardForm[
							Subsuperscript[StandardForm[couplingstring],
									  Row@ Join[If[#[[2]]>1,Superscript[StandardForm[#[[1]]],#[[2]]],StandardForm[#[[1]]]]&/@fieldtally,
									            {If[#>0,If[#>1,Superscript[StandardForm[D],#],StandardForm[D]],Nothing]&@opdevcount}],Row[{"(",incr,")"}]]]
		,
			temp = Symbol@baseString;
			prettylabel = StandardForm[
							Subscript[StandardForm[couplingstring],
									  Row@ Join[If[#[[2]]>1,Superscript[StandardForm[#[[1]]],#[[2]]],StandardForm[#[[1]]]]&/@fieldtally,
									            {If[#>0,If[#>1,Superscript[StandardForm[D],#],StandardForm[D]],Nothing]&@opdevcount}]]]
		];

		(* determine the open indices that the coupling needs to have *)
		nDiagIndex = FindOpenIndices @ First[List @@ (NormalForm @ operator + Nothing)];
		(* check the prefactor for diagonal indices *)
		diagIndex = FindDiagonalIndices @ exp;

		index = Join[nDiagIndex,diagIndex];
		indexType = Last /@ index;
		isdiagonal = Join[ ConstantArray[False, Length@nDiagIndex] , ConstantArray[False, Length@diagIndex] ];

		(* determine the phase coming from derivatives *)
		derivativePhase = (operator /. {Field[A__, ders_List] :> I^Length@ders Field[A, ders],EoM[Field[f_,Fermion, A___,ders_List]] :> I EoM @ Field[f, Fermion, A, ders]})/operator;

		(* power-counting of the object depending on context *)
		If[superleading,
			power = 4 - OperatorDimension @ operator
		,
			power = GetMinOrder @ exp
		];

		(* the coupling as it appears in the Lagrangian term *)
		outCoupling = derivativePhase Coupling[temp, index, power];

		(* is the operator hermitian? *)
		If[ superleading || internal || !hermitianTerm ,
			(* for the automated routes or if this is not overridden by HermitianTerm -> True, just determine it from the operator *)
			hermite = MHermitianQ[derivativePhase NormalForm@operator]
		,
			(* called by IntroduceEffectiveCouplings with HermitianTerm -> True, need to determine symmetries *)
			If[Length @ FindOpenIndices @ First[List @@ (NormalForm @ operator + Nothing)] > 0,
				(*  pull the symmetries in coefficient from the database of IBPSimplify, but have to account for different ordering there vs here *)
				permConversion = Echo@FindPermutationOrder[ Last @ MatchOperatorPatterns @ NormalForm @ operator, FindOpenIndices @ First[List @@ (NormalForm @ operator + Nothing)]];
				pOrder = FindPermutationOrder[(Last@MatchOperatorPatterns@NormalForm@operator)[[permConversion]],(Last@MatchOperatorPatterns@Bar@NormalForm@operator)[[permConversion]]];

				(* if the list is empty, this operator is simply hermitian without further constraints *)
				If[Length @ pOrder > 0,
					hermite = pOrder
				,
					hermite=True
				]
			,
				(* actually no open indices so just hermitian right away *)
				hermite=True
			];
		];

		(* define the default symmetries - we can get more fancy about this later *)
		symmetries = Association[Range[Length@index]->1];

		(* indices for the replacement rules *)
		inds = Symbol["i" <> ToString[#]]& /@ Range@Length@index;
		pinds = Pattern[#, _]& /@ inds;

		(* setting up the rules *)
		ruleRHS = exp /. Thread[index->inds];
		ruleLHS = Coupling[temp, pinds, power];

		preRHS = With[{RHS = ruleRHS derivativePhase^-1}, ruleLHS :> RelabelIndices[RHS,Unique -> True]];

		If[!ignoreduplicates,
			(* check for any couplings with the identical properties to the one we are about to define *)
			tbdassociation = CouplingAssociationEntry[power, indexType,hermite, symmetries, isdiagonal];
			couplingsSameProperty = Cases[{Keys@$CouplingAssociation,Values@$CouplingAssociation}\[Transpose],{val_, tbdassociation} :> val]
		];

		If[superleading == True ||(superleading == False && internal == False),
			(* this branch is for couplings visible to the user *)

			If[!ignoreduplicates,
				(* check we do not define duplicate couplings *)
				candidates =  Cases[$TempCouplingRules, HoldPattern[ Coupling[f_/;MemberQ[couplingsSameProperty,f],__] :> _ ]];
				candidateLabels = Cases[$TempCouplingRules, HoldPattern[ Coupling[f_/;MemberQ[couplingsSameProperty,f],__] :> _ ] :> f ];
				preExisting = (SameRuleQ[preRHS,#]& /@ candidates)
			];

			If[Or@@preExisting && !ignoreduplicates,
				(* the coupling has already be defined so figure out which one it is and use it instead *)
				outCoupling = derivativePhase Coupling[candidateLabels[[FirstPosition[preExisting,True][[1]]]], index, power]
			,
				(* does not exist so define it *)
				DefineCoupling[temp, Indices -> indexType, EFTOrder -> power, SelfConjugate -> hermite, Symmetries -> SymmetryOverride[symmetries], DiagonalCoupling -> isdiagonal];
				AppendTo[$TempCouplings,temp];
				AppendTo[$TempCouplingRules, preRHS];
				(* define the NiceForm of this new coupling *)
				Format[Coupling[temp, in_,_], NiceForm] := UpDownIndices[prettylabel,in];
				If[hermite===False, Format[Bar @ Coupling[temp, in_,_], NiceForm] := UpDownIndices[OverBar @ prettylabel, Bar /@ in]]
			]

		,
			(* this branch is for couplings invisible to the user *)

			If[!ignoreduplicates,
				(* check we do not define duplicate couplings *)
				candidates = Cases[$IntCouplingRules, HoldPattern[ Coupling[f_/;MemberQ[couplingsSameProperty,f],__] ]];
				candidateLabels = Cases[$IntCouplingRules, HoldPattern[ Coupling[f_/;MemberQ[couplingsSameProperty,f],__] :> _ ] :> f ];
				preExisting = (SameRuleQ[preRHS,#]&/@ candidates)
			];

			If[Or@@preExisting && !ignoreduplicates,
				(* the coupling has already be defined so figure out which one it is and use it instead *)
				outCoupling = derivativePhase Coupling[candidateLabels[[FirstPosition[preExisting,True][[1]]]], index, power]
			,
				(* does not exist so define it *)
				DefineCoupling[temp, Indices -> indexType, EFTOrder -> power, SelfConjugate -> hermite, DiagonalCoupling -> isdiagonal];
				AppendTo[$InternalCouplings,temp];
				AppendTo[$IntCouplingRules, preRHS];
				(* define the NiceForm of this new coupling *)
				Format[Coupling[temp, in_,_], NiceForm] := UpDownIndices[prettylabel,in];
				If[hermite===False, Format[Bar @ Coupling[temp, in_,_], NiceForm] := UpDownIndices[OverBar @ prettylabel, Bar /@ in]]
			]

		];

		Return[outCoupling]
	]


Options @ SubstituteCoefficients = {EffectiveCouplingSymbol -> "c"};

SubstituteCoefficients[L_, OptionsPattern[]]:=Module[{op3,tempCplPre,newCpls,LOut},
	(* list of all operators that appear at superleading power *)
	op3 =  DeleteDuplicates [ SortBy[DeleteDuplicates@Cases[SeriesEFT[L, EFTOrder -> 3],_Operator,Infinity],LeafCount], SameOperatorQ];

	(* replace the coefficients of all operators appearing in the above list by a newly defined effective coupling *)
	tempCplPre = $TempCouplings;
	LOut=Collect[L, _Operator]/.{
		x_Operator*c_ /;(MemberQ[op3, x] && !BarredOpQ[x]) :> Operator@PlusHc@NormalForm[x ToEffectiveCoupling[c, x, EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol]]]-Operator@Bar@NormalForm[x c],
		x_Operator * c_ /;(MemberQ[op3, x] && BarredOpQ[x]) :> x ToEffectiveCoupling[c, x, EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol]]};

	newCpls=TreeReplacement /@ DeleteCases[$TempCouplings, x_/;MemberQ[tempCplPre,x]];
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


(* ::Subsubsection::Closed:: *)
(*User output for the coupling*)


(* ::Text:: *)
(*Function for printing or outputting the rules of relevant replacement couplings for a given Lagrangian *)


Options @ PrintEffectiveCouplings= { Rules -> False}


PrintEffectiveCouplings[L_, OptionsPattern[]]? OptionsCheck:= Module[{rules={},couplings,inds},
	couplings = Cases[DeleteDuplicates[Cases[L, _Coupling, Infinity]/.Coupling[a_,__]:> a], x_/;MemberQ[ $TempCouplings,x]];
	If[Length@couplings === 0, Print["The supplied Lagrangian does not contain effective couplings."];Return[]];

	(* return replacement rules if Rules-> True*)
	If[OptionValue@ Rules,
		Return@ DeleteCases[$TempCouplingRules, _? (FreeQ[First@ #, Alternatives@@ couplings]&) ];
	];
	Do[
		inds=With[{l=Alphabet[], n=Length@(GetCouplings[term][Indices])},
			(Symbol/@ (Flatten@Table[StringJoin[#,If[i=!=0,ToString[i],""]]&/@l,{i,0,(Ceiling[n/Length[l]]-1)}])[[;;n]])
		];
		Print[NiceForm[term[Sequence@@inds]], " = ", NiceForm[ Collect[RelabelIndices[term[Sequence@@inds]/.$TempCouplingRules],hbar,Simplify]]]
	,
		{term,couplings}];
]


ReplaceEffectiveCouplings[L_]:=L /. $TempCouplingRules


(* ::Subsection:: *)
(*Replacing coefficients with effective couplings*)


(* ::Subsubsection::Closed:: *)
(*Setting up effective couplings for loop functions*)


IntroduceDummyCoefficients[L_]:=Module[{tL, L0, tLHcTerms, tLHTerms},
	(* extract all one-loop terms of our Lagrangian *)
	L0 = GreensSimplify @ L;
	tL = List@@(Nothing + (HcSimplify@Coefficient[L0, hbar]));
	tLHcTerms = Collect[Operator[(Total@Cases[tL, _HcTerms])/.HcTerms -> Identity],_Operator];
	tLHTerms = Collect[Operator@Total@(tL /. _HcTerms -> 0),_Operator];

	tLHcTerms = tLHcTerms /. x_Operator * c_ :> x ToEffectiveCoupling[c, x, Superleading -> False];
	tLHTerms = tLHTerms /. x_Operator * c_ :> x ToEffectiveCoupling[c, x, Superleading -> False];

	RelabelIndices[hbar(Operator@PlusHc[NormalForm@tLHcTerms]+1/2 Operator@PlusHc[NormalForm@tLHTerms])+Operator@(L0/.hbar->0)]
]


(* ::Subsubsection::Closed:: *)
(*Effective couplings for the final Lagrangian*)


Options @ IntroduceEffectiveCouplings = {EffectiveCouplingSymbol -> "C", OverrideDuplicateCouplingCheck -> False};


IntroduceEffectiveCouplings[L_ , OptionsPattern[]] := Module[{L0, LHcTerms, LHTerms, noCouplingTerms},
	L0 = Expand @ L;

	(* determine which terms have no couplings at all and subtract these from the Lagrangian *)
	noCouplingTerms = Total @ Select[List @@ (Nothing + L0), (FreeQ[#,hbar] && FreeQ[#,Coupling]&)];

	L0 = L0 - noCouplingTerms;

	L0 = List @@ (Nothing + HcSimplify @ L0);

	LHcTerms = Collect[ Contract @ Operator[(Total @ Cases[L0, _HcTerms])/.HcTerms -> Identity], _Operator ];
	LHTerms  = Collect[ Contract @ Operator @ Total @ (L0 /. _HcTerms -> 0), _Operator ];

	LHcTerms = LHcTerms /. x_Operator * c_ :> x ToEffectiveCoupling[c, x, Superleading -> False, Internal -> False, HermitianTerm -> False , EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol] , OverrideDuplicateCouplingCheck -> OptionValue[OverrideDuplicateCouplingCheck] ];
	LHTerms  = LHTerms  /. x_Operator * c_ :> x ToEffectiveCoupling[c, x, Superleading -> False, Internal -> False, HermitianTerm -> True , EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol] , OverrideDuplicateCouplingCheck -> OptionValue[OverrideDuplicateCouplingCheck] ];

	HcTerms[ RelabelIndices @ CollectOperators @ NormalForm @ LHcTerms] +  RelabelIndices @ CollectOperators[ ( PlusHc @ NormalForm @  LHTerms) / 2 ] + noCouplingTerms
]


(* ::Subsubsection:: *)
(*Effective masses*)


Options @ IntroduceEffectiveMasses = {EffectiveCouplingSymbol -> "\[ScriptCapitalM]", OverrideDuplicateCouplingCheck -> False, Heavy -> True};


IntroduceEffectiveMasses[L_ , OptionsPattern[]] := Module[{L0, LHcTerms, LHTerms, noCouplingTerms, Lmass, field, prop, newMasses},
	L0 = Expand @ L;

	(* Extrac mass terms *)
	Lmass = IsolateMassTerms[L0, Heavy -> OptionValue[Heavy]];
	L0 = L0 - Lmass;
	
	Lmass = List @@ (Nothing + HcSimplify @ Lmass);
	Lmass = Contract/@Lmass;

	LHcTerms = Collect[Operator[(Total @ Cases[Lmass, _HcTerms])/.HcTerms -> Identity], _Operator];
	LHTerms  = Collect[Operator @ Total @ (Lmass /. _HcTerms -> 0), _Operator];

	Switch[Head[LHTerms],
		Plus, LHTerms = List@@ LHTerms,
		Times, LHTerms = {LHTerms}
	];

	Switch[Head[LHcTerms],
		Plus, LHcTerms = List@@ LHcTerms,
		Times, LHcTerms = {LHcTerms}
	];

	newMasses = Last@ Reap[
	LHcTerms = Plus@@ Table[
		(*find fields*)
		field = DeleteDuplicates[Cases[term, Field[lab_,___]:>lab, All]];
		If[Length@field > 1,
			term (*ignore mass mixing terms*)
			,
			field = First@ field;
			prop = GetFields[field];
			(* only chiral fermions have non-hermitian mass terms *)
			If[prop[Type]===Fermion && (!prop[SelfConjugate]) && MatchQ[prop[Chiral], LeftHanded|RightHanded],
				If[MatchQ[term,-(1/2)*_Coupling*_Operator],
					term,
					term /. x_Operator * c_ :> -(1/2)*x Sow@ToEffectiveCoupling[-2*c, x, Superleading -> False, Internal -> False, HermitianTerm -> True , EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol] , OverrideDuplicateCouplingCheck -> OptionValue[OverrideDuplicateCouplingCheck] ]
				],
				term
			]
		]
		,
		{term, LHcTerms}
	];

	LHTerms = Plus@@ Table[
		(*find fields*)
		field = DeleteDuplicates[Cases[term, Field[lab_,___]:>lab, All]];
		If[Length@field > 1,
			term (*ignore mass mixing terms*)
			,
			field = First@ field;
			prop = GetFields[field];
			Switch[prop[Type],
				Scalar,
					If[prop[SelfConjugate],
						If[MatchQ[term,-(1/2)*(_Coupling)^2*_Operator],
							term,
							term /. x_Operator * c_ :> -(1/2)*x Sow@(ToEffectiveCoupling[Sqrt[-2*c], x, Superleading -> False, Internal -> False, HermitianTerm -> True , EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol] , OverrideDuplicateCouplingCheck -> OptionValue[OverrideDuplicateCouplingCheck] ]^2)
						], (*real*)
						If[MatchQ[term,-(_Coupling)^2*_Operator],
							term,
							term /. x_Operator * c_ :> -x Sow@(ToEffectiveCoupling[Sqrt[-c], x, Superleading -> False, Internal -> False, HermitianTerm -> True , EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol] , OverrideDuplicateCouplingCheck -> OptionValue[OverrideDuplicateCouplingCheck] ]^2)
						] (*complex*)
					],
				Vector,
					If[prop[SelfConjugate],
						If[MatchQ[term,1/2*(_Coupling)^2*_Operator],
							term,
							term /. x_Operator * c_ :> 1/2*x Sow@(ToEffectiveCoupling[Sqrt[2*c], x, Superleading -> False, Internal -> False, HermitianTerm -> True , EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol] , OverrideDuplicateCouplingCheck -> OptionValue[OverrideDuplicateCouplingCheck] ]^2)
						], (*real*)
						If[MatchQ[term,(_Coupling)^2*_Operator],
							term,
							term /. x_Operator * c_ :> x Sow@(ToEffectiveCoupling[Sqrt[c], x, Superleading -> False, Internal -> False, HermitianTerm -> True , EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol] , OverrideDuplicateCouplingCheck -> OptionValue[OverrideDuplicateCouplingCheck] ]^2)
						] (*complex*)
					],
				Fermion,
					If[prop[SelfConjugate],
						If[MatchQ[term,-(1/2)*_Coupling*_Operator],
							term,
							term /. x_Operator * c_ :> -(1/2)*x Sow@ToEffectiveCoupling[-2*c, x, Superleading -> False, Internal -> False, HermitianTerm -> True , EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol] , OverrideDuplicateCouplingCheck -> OptionValue[OverrideDuplicateCouplingCheck] ]
						], (*Majorana*)
						If[MatchQ[prop[Chiral],False],
							If[MatchQ[term,-_Coupling*_Operator],
								term,
								term /. x_Operator * c_ :> -x Sow@ToEffectiveCoupling[-c, x, Superleading -> False, Internal -> False, HermitianTerm -> True , EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol] , OverrideDuplicateCouplingCheck -> OptionValue[OverrideDuplicateCouplingCheck] ]
							], (*Dirac*)
							term
						]
					],
				_ , term
			]
		]
		,
		{term, LHTerms}
	];
	];

	If[Length@newMasses>0,
		Print["The following effective mass terms have been defined to simpify the Lagrangian:"];
		PrintEffectiveCouplings[newMasses];
	];

	HcTerms[ RelabelIndices @ CollectOperators @ NormalForm @ LHcTerms] +  RelabelIndices @ CollectOperators[ ( PlusHc @ NormalForm @  LHTerms) / 2 ] + L0
]


(* ::Subsection:: *)
(*EOMSimplify*)


(* ::Subsubsection::Closed:: *)
(*Check for a standard kinetic term present*)


EOMInvalidQ[L_]:=Module[{fieldsInL, L4},
	fieldsInL =DeleteDuplicates[Join[
		Cases[L, _Field, Infinity]/.Field[f_,__]:>f,
		Cases[L, _FieldStrength, Infinity]/.FieldStrength[f_,__]:>f
		]];
	L4 = InternalSimplify@Total@Cases[List@@Expand@(SeriesEFT[L, EFTOrder->4]-Sum[FreeLag[field],{field,fieldsInL}]+Nothing), x_/;FreeQ[x,_Coupling]];
	!(L4 === 0)
]


(* ::Subsubsection::Closed:: *)
(*FieldsToShift*)


(* return the label of a field that needs to be redefined along with the lowest order in EFT counting at which the shift has to be performed *)
FieldsToShift[L0_]:=Module[{freeL,L,fields, list},
	(* all fields appearing in the input Lagrangian *)
	fields=DeleteDuplicates@Cases[L0, HoldPattern@Field[a_,__]:>a,Infinity];
	(* the free Lagrangian of all of these fields - so we get non-standard kinetic terms *)
	freeL = InternalSimplify@Total[FreeLag[#]&/@fields];
	L = Collect[L0 - freeL,_Operator];

	(* vector fields get a special treatment, so their kinetic terms have to be removed completely *)
	L = L - SelectOperatorClass[L,{},4];

	(* now extract all EoM terms *)
	list = Cases[List@@Expand[L+Nothing], x_/;MemberQ[x, EoM[___],{0,Infinity}]];
	list = SortBy[{(First@Cases[#, _EoM,{0,Infinity}]&/@list)/.EoM[Field[f_,___]]|EoM[Bar@Field[f_,___]]|EoM[Transp@Field[f_,___]]:>f,(OperatorDimension@NormalForm@#)&/@list}\[Transpose],{First,Last}];
	SortBy[First/@Gather[SortBy[list,{First,Last}],First[#1]===First[#2]&],Last]
]



(* ::Subsubsection::Closed:: *)
(*Main module*)


EOMSimplify::EffectiveCoupling = "The Lagrangian contains terms of lower power than dimension 4. Defining effective couplings and assuming these terms to be dimension 4. Use 'PrintEffectiveCouplings' and 'ReplaceEffectiveCouplings' to recover explicit expressions.";
EOMSimplify::InvalidLagrangian = "The Lagrangian contains no valid kinetic terms for the occuring Kinetic terms and thus cannot be simplified.";


Options[EOMSimplify] = {Verbose -> True, DummyCoefficients -> False, EFTOrder->All, EffectiveCouplingSymbol -> "C"};
Options[EoMSimplificationStep] = {EFTOrder -> Automatic};


EOMSimplify[L_,OptionsPattern[]]:=Module[{out,maxOrder,operatorList,L3,L4,La},
	$MonitorString1="Preparing field redefinitions...";
	$MonitorString2="Determining order of input Lagrangian...";
	If[EOMInvalidQ[L],Message[EOMSimplify::InvalidLagrangian]; Return[L]];
	operatorList=OperatorDimension/@(List@@(Expand@(L+Nothing)));
	If[Head@OptionValue[EFTOrder]===Integer, maxOrder = OptionValue@EFTOrder, maxOrder=Max[operatorList]];
	If[Min[operatorList]<4,
		(* there are superleading terms in the Lagrangian, redefine them *)
		Echo[EOMSimplify::EffectiveCoupling];
		La = SeriesEFT[SubstituteCoefficients[InternalSimplify @ L, EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol]], EFTOrder -> maxOrder]
		,
		La = L;
	];
	If[OptionValue@DummyCoefficients === True,
		La = InternalSimplify @ IntroduceDummyCoefficients @ La;
		,
		La = InternalSimplify @ La;
	];
	out = OptionalMonitor[OptionValue@Verbose,FixedPoint[EoMSimplificationStep[#,EFTOrder->maxOrder]&, La],$MonitorString1<>"\n"<>$MonitorString2];
	$MonitorString1="";
	$MonitorString2="";

	If[OptionValue@DummyCoefficients === True,
		out = RelabelIndices[ out , Unique -> True ] //. $IntCouplingRules
	];

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
	InternalSimplify @ temp
]


(* ::Subsection::Closed:: *)
(*Handling off-diagonal kinetic terms*)


(* ::Subsubsection::Closed:: *)
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


(* ::Subsection:: *)
(*Shifting corrections to renormalizable operators*)


(* ::Subsubsection::Closed:: *)
(*Auxiliary functions*)


(* ::Text:: *)
(*Truncates Lagrangian to the renormalizable operators only*)


TrucanteRen[expr_]:= Operator@expr/.op_Operator:> TruncateOperator[op,4]//CollectOperators


(* ::Text:: *)
(*Function to put Lagrangian couplings in a list*)


SelectCouplings[expr_]:= Operator/@List@@((HcSimplify@expr/.HcTerms -> Identity)+Nothing)/._Operator->1


(* ::Text:: *)
(*Function to create the replacement rules*)


OpenIndexToPattern[rule_]:=Module[{lhs=rule[[1]],rhs=rule[[2]],index,inds,pinds,coeff},
	 (* looking for open indices and creating the pattern *)
	index = FindOpenIndices@lhs/.Index[a_,_]:>a;
	inds = Symbol["i" <> ToString[#]]& /@ Range@Length@index;
	pinds = Pattern[#, _]& /@ inds;

	coeff=lhs/(lhs/.Times[pre___,fact_?NumericQ,post___]:>pre post);

	(* setting up the rule *)
	(lhs/coeff/. Thread[index->pinds])-> (RelabelIndices[rhs/coeff,Unique->True]/. Thread[index->inds])
]


(* ::Subsubsection::Closed:: *)
(*Main module*)


Options[ShiftRenCouplings] = {EFTOrder->All};


ShiftRenCouplings[Lag_,OptionsPattern[]]:=Module[{SimpLag=GreensSimplify@Lag,LEFTRen,RenOpList,LEFTCorrections,LighFields,CouplingCorrections,RenCouplings,RepRules,OperatorList,MaxOrder},

	LighFields=Select[OccuringFields[SimpLag],!GetFieldsUpdated[#][Heavy]&];
	LEFTRen= SeriesEFT[SimpLag,EFTOrder->4]-FreeLag@@LighFields/.hbar->0//CollectOperators;

	If[LEFTRen=!=0,
		(* The corrections to the gauge boson kinetic terms are not shifted as this requires to redefine the gauge coupling *)
		LEFTCorrections=TrucanteRen@SimpLag-FreeLag@@LighFields/._FieldStrength->0//CollectOperators;

		(* Renormalizable operators not present in LEFTRen are set to zero *)
		RenOpList= (Collect[Operator@LEFTRen, _Operator] /. x_Operator * c_ :> x) + Nothing /. Plus->List;
		LEFTCorrections= Collect[Operator@LEFTCorrections, _Operator] /. x_Operator?(!MemberQ[RenOpList,#]&) * c_ :> 0 //CollectOperators;

	    (* If there are multiple renormalizables couplings for a single operator, I take the first one *)
		RenCouplings=SelectCouplings@LEFTRen/.terms_Plus:>terms[[1]];
		CouplingCorrections=SelectCouplings@LEFTCorrections-RenCouplings;

		RepRules=OpenIndexToPattern/@MapThread[#1->#1-#2&,{RenCouplings}~Join~{CouplingCorrections}];

		OperatorList=OperatorDimension/@ List@@Expand[Lag+Nothing];
		If[Head@OptionValue[EFTOrder]===Integer, MaxOrder = OptionValue@EFTOrder, MaxOrder=Max[OperatorList]];

		SeriesEFT[SimpLag/.RepRules, EFTOrder->MaxOrder]//CollectOperators
		,
		Lag
	]
]
