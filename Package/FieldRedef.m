(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`FieldRedef`*)


(* ::Subtitle:: *)
(*Paclet for performing field redefinition and obtaining on-shell EFT basis *)


(* ::Chapter:: *)
(*Public:*)


(* ::Section:: *)
(*Scoping*)


(* ::Subsubsection::Closed:: *)
(*Exported*)


PackageExport["EOMSimplify"]


(* ::Subsubsection::Closed:: *)
(*Internal*)


PackageScope["FieldsToShift"]
PackageScope["KineticTerms"]
PackageScope["OperatorType"]


PackageScope["RenormalizeMatterFields"]


(* ::Section:: *)
(*Usage messages*)


(* ::Subsubsection::Closed:: *)
(*Exported*)


EOMSimplify::usage =                    "EOMSimplify[L] takes a Lagrangian and removes redundant operators by the means of field redefinitions. The option 'EFTOrder' allows to define a maximal order in EFT counting. The standard value (Automatic) determines it from the input Lagrangian. The option 'DummyCoefficients' internally replaces matching coefficients with symbols, potentially improving performance when simplifying very large Lagrangians (standard is False).";
PrintEffectiveCouplings::usage =        "PrintEffectiveCouplings[L] prints a list of effective couplings defined by EOMSimplify appearing in the input Lagrangian L, along with their definitions. With the option Rules\[Rule] True, the function will return the replacement list for these couplings, instead.";
ReplaceEffectiveCouplings::usage =      "ReplaceEffectiveCouplings[L] resubstitutes effective couplings defined by EOMSimplify or by IntroduceEffective couplings.";
Rules::usage =                          "Rules is an option to specify whether output should be a list of replacement rules instead of printed.";
IntroduceEffectiveMasses::usage =       "IntroduceEffectiveMasses[L] replaces heavy mass terms with newly defined, generic mass couplings to compress the structure of the Lagrangian. Use ReplaceEffectiveCouplings to resubstitute them or PrintEffectiveCouplings to show a list of the couplings and their definitions.";


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
			EoM[Bar@Field[l_,Scalar,i_,_]]:>  (derivs+=2;labels=Join[labels, {Field[l,Scalar,{},{}]}];Bar@tf[l,Scalar,i]),
			EoM[Field[l_,Fermion,i_,_]]:>  (derivs+=1;labels=Join[labels, {Field[l,Fermion,{},{}]}];tf[l,Fermion,i]),
			EoM[Bar@Field[l_,Fermion,i_,_]]:>  (derivs+=1;labels=Join[labels, {Field[l,Fermion,{},{}]}];Bar@tf[l,Fermion,i]),
			EoM[Transp@Field[l_,Fermion,i_,_]]:>  (derivs+=1;labels=Join[labels, {Field[l,Fermion,{},{}]}];Bar@tf[l,Fermion,i]),
			EoM[Field[l_,Vector,i_,_]]:>  (derivs+=1;labels=Join[labels, {Field[l,Vector,{},{}]}];tf[l,Vector,i]),
			EoM[Bar@Field[l_,Vector,i_,_]]:>  (derivs+=1;labels=Join[labels, {Field[l,Vector,{},{}]}];Bar@tf[l,Vector,i])
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


(* ::Subsection:: *)
(*Utility functions*)


(* ::Subsubsection::Closed:: *)
(*CoefficientOperator*)


CoefficientOperator[0,_] = 0;
CoefficientOperator[a_Plus,b_]:=(CoefficientOperator[#,b]& /@ a)
CoefficientOperator[a_ n_^(m_/;m<0),b_]:=(CoefficientOperator[a,b]n^m)
CoefficientOperator[a_,b_]/;(Head[a]=!= Plus&&(!FreeQ[a, Plus])):=(CoefficientOperator[Expand[a],b])

CoefficientOperator[(cin_:1)oin_Operator, b_]:=Module[{c,o,internalize,bPattern, rule={}, repcounter=0, closedChains},

	c=cin;
	o=oin;

	If[(LOpenSpinChainQ@ OperatorToNormalForm[o] && LOpenSpinChainQ@ b)||(ROpenSpinChainQ@ OperatorToNormalForm[o] && ROpenSpinChainQ@ b),
		o = Operator[OperatorToNormalForm[o] //.x_?ClosedSpinChainQ:>(c=c*x;1)]
	];

	internalize[m_]:=Symbol[SymbolName[m]<>"int"];
	internalize[Index[m_, t_]]:=Index[internalize[m],t];

	bPattern=b/. Index[mu_, t_]:> Index[Pattern[Evaluate@internalize[mu], _],t];

	AppendTo[rule,RuleDelayed[Condition[bPattern,repcounter++==0],Evaluate[(Times@@Table[Delta[k,internalize[k]],{k,FindOpenIndices[b]}])]]];

	Operator[ ContractDelta[OperatorToNormalForm[If[FreeQ[o,bPattern],0,c*ReplaceAll[o,rule]], Unique -> True]]]
]


(* ::Subsubsection::Closed:: *)
(*Anomaly Factors*)


AnomalyFactor[field_]:=Module[{grAbel,grNAbel,dims,charges,tempInd,tI,tB,tJ,tA,t\[Mu],t\[Nu],t\[Rho],t\[Sigma]},
	grAbel = Head/@ GetFields[field, Charges];
	grNAbel = DeleteDuplicates@ DeleteCases[GroupFromRep/@GetFields[field ,Indices],None];

	(* dimensionality of each represenation including a 1 for the abelian *)
	dims = Join[ConstantArray[1,Length@grAbel],Table[Delta[#,#]&@Index[tempInd,FirstCase[GetFields[field, Indices], _gr]],{gr,grNAbel}]];
	(* anomaly trace factors for each group *)
	charges = Join[
		(GetGaugeGroups[#,Coupling]^2 FS[GetGaugeGroups[#,Field],t\[Mu],t\[Nu]]FS[GetGaugeGroups[#,Field],t\[Rho],t\[Sigma]]FirstCase[GetFields[field,Charges], #[q_]:>q]^2)&/@ grAbel,
		(GetGaugeGroups[#,Coupling]^2 FS[GetGaugeGroups[#,Field],t\[Mu],t\[Nu],tA]FS[GetGaugeGroups[#,Field],t\[Rho],t\[Sigma],tB]FieldGenerators[field,#,{tA,tI,tJ}]FieldGenerators[field,#,{tB,tJ,tI}])&/@grNAbel
	];

	Return[-2 I hbar RelabelIndices[Sum[Part[charges,inc]Times@@Drop[dims,{inc}],{inc,Length@dims}],Unique->True]]
]


(* ::Section:: *)
(*Field redefinitions*)


(* ::Subsection:: *)
(*EOMSimplify*)


(* ::Subsubsection::Closed:: *)
(*Check for a standard kinetic term present*)


EOMInvalidQ[L_]:=Module[{fieldsInL, freeLag, kinLag},
	fieldsInL = DeleteDuplicates[Join[
		Cases[L, _Field, Infinity]/.Field[f_,__]:>f,
		Cases[L, _FieldStrength, Infinity]/.FieldStrength[f_,__]:>f
		]];
	(* free Lagrangian of all fields appearing in L *)
	freeLag=Sum[FreeLag[field],{field,fieldsInL}];
	(* subtract freeLag from the kinetic terms in L at tree-level and at dimension 4 *)
	kinLag = SeriesEFT[InternalSimplify@KineticTerms[freeLag - L]/.hbar -> 0, EFTOrder->4];
	Return[!(kinLag === 0)]
]


ContainsHeavyEOMQ[L_]:=Module[{EOMFields},
	(* occurences of EOM objects and which field labels they are *)
	EOMFields = DeleteDuplicates@Cases[L,EoM[Field[f_,___]]|EoM[Bar@Field[f_,___]]|EoM[Transp@Field[f_,___]]->f,Infinity];
	(* check if they are registered as heavy *)
	EOMFields = (Heavy//$FieldAssociation@#)&/@EOMFields;
	(* return true if one of them is true *)
	Return[Or@@EOMFields]
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
	list = Cases[TermsToList@L, x_/;MemberQ[x, EoM[___],{0,Infinity}]];
	list = SortBy[{(First@Cases[#, _EoM,{0,Infinity}]&/@list)/.EoM[Field[f_,___]]|EoM[Bar@Field[f_,___]]|EoM[Transp@Field[f_,___]]:>f,(OperatorDimension@OperatorToNormalForm@#)&/@list}\[Transpose],{First,Last}];
	(* ignore EOM operators of heavy fields *)
	list = Select[list,!(Heavy//$FieldAssociation@First[#])&];
	Return[SortBy[First/@Gather[SortBy[list,{First,Last}],First[#1]===First[#2]&],Last]]
]



(* ::Subsubsection::Closed:: *)
(*Main module*)


EOMSimplify::EffectiveCoupling = "The Lagrangian contains terms of lower power than dimension 4. Defining effective couplings and assuming these terms to be dimension 4. Use 'PrintEffectiveCouplings' and 'ReplaceEffectiveCouplings' to recover explicit expressions.";
EOMSimplify::InvalidLagrangian = "The Lagrangian contains no valid kinetic terms for the occuring Kinetic terms and thus cannot be simplified.";
EOMSimplify::HeavyFieldEOM = "The Lagrangian contains redundant operators of fields that are flagged to be integrated out. Operators of this kind are not reduced by EOMSimplify.";


Options[EOMSimplify] = {
		DummyCoefficients -> False,
		EFTOrder -> All,
		EffectiveCouplingSymbol -> "C",
		ReductionIdentities->EvanescenceFree,
		Verbose -> True
	};
Options[EoMSimplificationStep] = {EFTOrder -> Automatic};


EOMSimplify[Lagrangian_, OptionsPattern[]] ? OptionsCheck:=Module[
		{out, maxOrder, operatorDims, L3, L4, La, L, consts,
			redID= OptionValue@ ReductionIdentities, redIDIntermediate},

	If[redID === EvanescenceFree,
		AddToBibliography["EvanescentTreatment", "Simplified expression to evanescent-free scheme (with EOMSimplify)"]
	];

	(* if the user chooses to keep evanescent operators explicit, do intermediate steps without introducing them, otherwise we keep expanding and reintroducing them in every step *)
	If[redID === Evanescent, redIDIntermediate = dDimensional, redIDIntermediate = redID];

	(*subtract off constants*)
	OptionalMonitor[OptionValue@Verbose,
		If[FreeQ[Lagrangian,_Field,All]&&FreeQ[Lagrangian,_FieldStrength,All], Return[Lagrangian]];
		L= HcExpand@ LagrangianExpand@ Lagrangian;
		{consts, L}= SeparateOutConstants@ L;
	,"Checking for constant terms \[Ellipsis]"];

	If[EOMInvalidQ[L],Message[EOMSimplify::InvalidLagrangian]; Return[L]];

	operatorDims= OperatorDimension/@ TermsToList@ L// DeleteDuplicates;

	maxOrder= If[Head@ OptionValue@ EFTOrder === Integer, OptionValue@ EFTOrder, Max@ operatorDims];
	If[Min[operatorDims]<4,
		(* there are superleading terms in the Lagrangian, redefine them *)
		OptionalMonitor[OptionValue@Verbose,
			La = SeriesEFT[SubstituteSuperleadingCoefficients[InternalSimplify[L], EffectiveCouplingSymbol -> OptionValue[EffectiveCouplingSymbol]], EFTOrder -> maxOrder];
		,"Redefining superleading terms \[Ellipsis]"];
		If[TrueQ@OptionValue@Verbose, Echo[EOMSimplify::EffectiveCoupling]]; (* maybe we could also print the operators here ? *)
		,
		La = L;
	];

	If[OptionValue@DummyCoefficients === True,
		OptionalMonitor[OptionValue@Verbose,
			La = InternalSimplify[ IntroduceDummyCoefficients @ La, ReductionIdentities->redIDIntermediate ];
		,"Introducing dummy coefficients and simplifying the Lagrangian \[Ellipsis]"]
		,
		OptionalMonitor[OptionValue@Verbose,
			La = InternalSimplify[ La, ReductionIdentities->redIDIntermediate ];
		,"Simplifying the Lagrangian \[Ellipsis]"]
	];

	If[ContainsHeavyEOMQ[La], Message[EOMSimplify::HeavyFieldEOM]];
	out= PerformSystematicFieldRedefs[La, maxOrder, OptionValue@ Verbose];

	If[OptionValue@DummyCoefficients === True,
		OptionalMonitor[OptionValue@Verbose,
			out = RelabelIndices[ out , Unique -> True ] //. $IntCouplingRules;
			(* fast expansion *)
			out = Collect[out,hbar];
			out = FastExpand@out;
		,"Resubstituting dummy coefficients \[Ellipsis]"];

		(* due to some issue it is necessary to truncate the EFT series again if the option DummyCoefficients -> True is used *)
		out = SeriesEFT[out,EFTOrder->maxOrder]
	];

	OptionalMonitor[OptionValue@Verbose,
		out = consts + GreensSimplify[out, ReductionIdentities->redID];
	,"Simplifying the results \[Ellipsis]"];

	out
]


(* ::Subsection:: *)
(*Simplification steps*)


(* ::Subsubsection::Closed:: *)
(*PerformSystematicFieldRedefs*)


(* ::Text:: *)
(*Performs all field redefinitions to remove all EOM terms from the Lagrangian *)


PerformSystematicFieldRedefs[lag_, maxOrder_, verbose_? BooleanQ] := Module[
		{devs, gaugeNormalizations, kinMix, eftOrd, out= lag},
	OptionalMonitor[verbose,
		out= RenormalizeMatterFields@ lag;
		(*The gauge field normalization is compensated for in future shifts of the gauge fields*)
		{gaugeNormalizations, kinMix}= GaugeFieldNormalization[out, maxOrder];
	, "Renormalizing fields \[Ellipsis]"];
	OptionalMonitor[verbose,
		Do[
			out= ShiftLagrangian[out, gaugeNormalizations, kinMix, devs, eftOrd, maxOrder];
		, {eftOrd, 5, maxOrder}, {devs, Reverse@ Range[eftOrd- 2]}];
	, StringForm["Redefining fields at dimension `1` with `2` derivatives \[Ellipsis]", eftOrd, devs]];
	out
]


(* ::Subsubsection::Closed:: *)
(*Kinetic normalization*)


$emptyKinMix= <|FieldMap-> <||>, Fields-> {}, Zinv-> {{}}|>;


(* ::Text:: *)
(*Renormalizes the kinetic terms for the matter fields. *)


RenormalizeMatterFields[lag_]:= Module[{fields, jacobianShift, out, replacementRules, terms},
	terms= SelectOperatorDevsAndDim[lag, _? Positive, 4];
	(* all fields appearing in the input Lagrangian *)
	fields= DeleteDuplicates@ Cases[terms, Field[lab_, __]-> lab, Infinity];
	(* the free Lagrangian of all of these fields - so we get non-standard kinetic terms *)
	terms= hbar Coefficient[terms, hbar]// BetterExpand;

	(*Determine shifts*)
	fields= DeleteDuplicates@ Cases[terms, EoM@ Alternatives[
		Field[lab_, __], _@ Field[lab_, __], _@ _@ Field[lab_, __]]:> lab, All];
	If[Length@ fields === 0, Return@ lag];

	{replacementRules, jacobianShift}= DetermineShifts[terms, fields, <||>, $emptyKinMix];
	(*TODO: implement check that the shifts are equal to \[Delta] at leading order (Z= 1 + O(hbar)) *)

	(* insert the field expansion, return to NormalForm since we're inserting fields into EoM objects as well *)
	out= OperatorToNormalForm @ lag/. Field[f_/; MemberQ[fields, f], args__]:>
			Field[f, args]+ hbar Field[{f, 0, 1}, args]// LagrangianExpand;

	(* we need to prepare the Lagrangian: powers need to be removed but we cannot use operators, because we need EoM-type objects to stay unchanged *)
	out= (RelabelIndices[out, Unique-> True])/.
		Power[f_/; (!FreeQ[f, Field|FieldStrength]), k_Integer? Positive]:>
		Inactive[Times]@@ ConstantArray[f, k];

	(* plug in the rule, reactivate the powers and IBPSimplify *)
	(* Might be better to simplify elsewhere *)
	InternalSimplify[Activate[out/. replacementRules]+ jacobianShift, CoefficientSimplify-> False]
	(*Collect[Operator@ Activate[out/. replacementRules], _Operator]*)
]


(* ::Text:: *)
(*Determines the inverse of the the kinetic normalization for the gauge groups. *)
(*gaugeNormalization gives the Z^-1 for the fields w/o kinetic mixing*)
(*kinMix gives the Z^-1 matrix for the Abelian fields if there is more than one (potential mixing) *)


GaugeFieldNormalization::mixnormalization= "The kinetic mixing is not canonically normalized a LO: `2`";


GaugeFieldNormalization[lag_, ord_]:= Module[
		{abelianFields, fields, gaugeNormalizations, kinMix, mu1, mu2, terms, z, z1},
	terms= SelectOperatorDevsAndDim[lag/. _Field-> 0, _? Positive, 4];
	(* all fields appearing in the input Lagrangian *)
	fields= Intersection[DeleteDuplicates@ Cases[terms, FieldStrength[lab_, __]-> lab, Infinity],
		List@@ Query[All, Key@ Field]@ $GaugeGroups];
	If[Length@ fields === 0, Return@ {<||>, $emptyKinMix}; ];

	abelianFields= Intersection[fields,
		List@@ Query[Key/@ GetGaugeGroupByProperty[Group-> U1], Key@ Field]@ $GaugeGroups];

	(*Check if there might be kinetic mixing*)
	kinMix= If[Length@ abelianFields > 1,
			fields= Complement[fields, abelianFields];
			z= Table[
					If[f1 =!= f2, 1 / 2, 1]* GetOperatorCoefficient[terms,
						-1/4 FS[f1, mu1, mu2]FS[f2, mu1, mu2]]
				, {f1, abelianFields}, {f2, abelianFields}];
			{z, z1}= Transpose[CoefficientList[z, hbar, 2], {2, 3, 1}];
			If[!DiagonalMatrixQ@ z,
				Message[GaugeFieldNormalization::mixnormalization, z];
				Abort[];
			];
			(*Normalization of hbar is taking Z^{-1} at one-loop order*)
			z= DiagonalMatrix@ Power[Diagonal@ z, -1];
			z= z - hbar z . z1 . z;
			<|
				FieldMap-> Association@@ MapIndexed[#1-> First@ #2&, abelianFields],
				Fields-> abelianFields,
				Zinv-> z
			|>
		,
			$emptyKinMix
		];

	(*Non-mixing fields*)
	(*Read-off the normalization of the kinetic terms*)
	gaugeNormalizations= Association@@ Table[
			(*Remove canonical gauge noramlization from gauge field*)
			z= GetOperatorCoefficient[terms, FreeLag@ f/. _Coupling-> 1];
			{z, z1}= CoefficientList[z, hbar, 2];
			(*Normalization of hbar is taking Z^{-1} at one-loop order*)
			z= z^(-1) - hbar z1 z^(-2);
			f-> z
		, {f, fields}];

	{gaugeNormalizations, kinMix}
]


(* ::Subsubsection::Closed:: *)
(*ShiftLagrangian*)


(* ::Text:: *)
(*Shift the fields in the Lagrangian to remove EOM terms at a given order and number of derivatives*)


ShiftLagrangian[lag_, gaugeNormalization_, kinMix_, devs_Integer, dim_Integer, maxOrder_Integer]:= Module[
		{eomTerms, fields, jacobianShift, replacementRules, shiftOrd, termsToShift, termsToKeep},
	eomTerms= (*InternalSimplify@ *)SelectOperatorDevsAndDim[lag, devs, dim];
	shiftOrd= dim- 4;

	(*Determine shifts*)
	fields= DeleteDuplicates@ Cases[eomTerms, EoM@ Alternatives[
		Field[lab_, __], _@ Field[lab_, __], _@ _@ Field[lab_, __]]:> lab, All];
	If[Length@ fields === 0, Return@ lag];

	{replacementRules, jacobianShift}= DetermineShifts[eomTerms, fields, gaugeNormalization, kinMix];

	(* Insert the field expansion, return to NormalForm since we're inserting fields into EoM objects as well *)
	(* Shift all kinetic-mixed fields if at least one appears with an EOM *)
	If[ContainsAny[fields, kinMix@ Fields], fields= Union[fields, kinMix@ Fields]];
	{termsToShift, termsToKeep}= SplitLagByDims[lag, maxOrder- shiftOrd];
	termsToShift= DummyShiftTerms[termsToShift, fields, shiftOrd, maxOrder];

	(* Prepare the Lagrangian: powers need to be removed but we cannot use operators, because we need EoM-type objects to stay unchanged *)
	termsToShift= (*(RelabelIndices[termsToShift, Unique-> True])*)termsToShift/.
		Power[f_/; (!FreeQ[f, Field|FieldStrength]), k_Integer?Positive]:>
		Inactive[Times]@@ ConstantArray[f, k];

	(* Plug in the rule, reactivate the powers and IBPSimplify *)
	termsToShift= InternalSimplify[Activate[RelabelIndices[termsToShift, Unique-> True]/. replacementRules]+ jacobianShift,
		CoefficientSimplify-> False];

	termsToShift + termsToKeep
]


(* ::Text:: *)
(*Determine the field shifts needed to cancel all occurrences of EoM in the Lagrangian terms*)


DetermineShifts::notimpl = "Shift has not been implemented for type `1`";


DetermineShifts[lagTerms_, fields_, gaugeNormalization_, kinMix_]:= Module[
		{jacobianShift= 0, real, replacementRules, type, mixedFields, unmixedFields, temp},

	mixedFields= Intersection[fields, kinMix@ Fields];
	unmixedFields= Complement[fields, mixedFields];

	replacementRules= Join@@ Table[
			{real, type}= Lookup[GetFields@ f, {SelfConjugate, Type}];
			Switch[type
			,Scalar, ScalarShift[lagTerms, f, real]
			,Fermion,
				(*format: {field replacement rule, jacobian shift (from chiral fermions)}*)
				temp= FermionShift[lagTerms, f, real];
				jacobianShift+= Last@ temp;
				First@ temp
			,Vector,
				VectorShift[lagTerms, f, gaugeNormalization@ f, real]
			]
		, {f, unmixedFields}];

	If[Length@ mixedFields > 0,
		replacementRules= Join[replacementRules, KinMixingShift[lagTerms, mixedFields, kinMix]];
	];

	{replacementRules, jacobianShift}
]


(* ::Text:: *)
(*Perform a dummy shift of all the fields that are redefined *)


DummyShiftTerms[lagTerms_, fields_, shiftOrd_, maxOrd_]:= Module[{gaugeFields, matterFields, out},
	gaugeFields= Intersection[fields, List@@Query[All, Key@ Field]@ $GaugeGroups];
	matterFields= Complement[fields, gaugeFields];

	(* Insert the field expansion, return to NormalForm since we're inserting fields into EoM objects as well *)
	out= OperatorToNormalForm @lagTerms;

	Do[
		(*All gauge fields are from the shift and should eventually be substituted*)
		out= DummyGaugeShift[out, f]/. Field[f, args__]:> Field[{f, shiftOrd, 0}, args]+ hbar Field[{f, shiftOrd, 1}, args];
		out= TruncateShift[out, f, maxOrd];
	, {f, gaugeFields}];

	out= SeriesEFT[out/. Field[f_/; MemberQ[matterFields, f], args__]:>
			Field[f, args]+ Field[{f, shiftOrd, 0}, args]+ hbar Field[{f, shiftOrd, 1}, args],
		EFTOrder-> maxOrd];

	out
]


TruncateShift[lag_, fieldLab_, maxOrd_]:=
	Plus@@ (If[FreeQ[#, Field[{fieldLab, __}, __]], #, TruncateOperator[#, maxOrd]]&)/@ TermsToList@ lag;


(* ::Text:: *)
(*Function to ensure that terms with EOMs of multiple distinct fields  get shifted the right amount *)


AdjustEOMShifts[shift_, field_Symbol]:= Module[{terms},
	terms= TermsToList@ shift;
	(*Include only the shift for the field of the leading canonical (lexiographic) order*)
	terms= If[FreeQ[Operator@ #, EoM@ Alternatives[Field[lab_, __], _@ Field[lab_, __], _@ _@ Field[lab_, __]]/;
		Order[field, lab] === -1], #, 0]&/@ terms;
	(*terms= Power[Length@ DeleteDuplicates@ Cases[Operator@ #,
		EoM@ Alternatives[Field[lab_, __], _@ Field[lab_, __], _@ _@ Field[lab_, __]]/; lab=!= field:> lab,
		All]+ 1, -1]* #&/@ terms;*)
	Plus@@ terms
]


(* ::Subsubsection::Closed:: *)
(*Scalar shift*)


ScalarShift[lagTerms_, f_Symbol, real_? BooleanQ]:= Module[{chi1, chi2, devPat, fieldPattern, fieldShift, inds, pInds, rules, terms},
	inds= Symbol["i" <> ToString@ #]&/@ Range@ Length@ GetFields[f, Indices];
	pInds= Pattern[#, _]&/@inds;

	(*Keep only relevant terms*)
	terms= Plus@@ Select[TermsToList@ lagTerms, Not@* FreeQ[f]];

	fieldShift= If[real,
			RelabelIndices[OperatorToNormalForm[CoefficientOperator[terms,
				EoM@ f[Sequence@@ inds]], Unique-> True], Unique->True]
		,
			(* factor out the EoM[f] term *)
			chi1= RelabelIndices[OperatorToNormalForm[CoefficientOperator[terms,
				EoM@ f[Sequence@@ inds]], Unique-> True], Unique-> True];

			(* ...and subtract the terms we found, to now get the EoM[Bar@f] coefficients *)
			chi2= RelabelIndices[CoefficientOperator[
				RelabelIndices[terms - Operator[chi1 EoM@f[Sequence@@ inds] ] ],
				EoM@ Bar@ f[Sequence@@ inds] ], Unique->True];
			1/2 Bar@ OperatorToNormalForm[(chi1 + Bar@chi2), Unique-> True]
		];
	fieldShift= AdjustEOMShifts[fieldShift, f];

	rules= Table[
		fieldPattern= First@ Cases[{f[Sequence@@ pInds]},
			Field[lab_, type_, is_, {}]:> Field[{lab, _, n}, type, is, devPat_], Infinity];
		With[{shift= RelabelIndices[Coefficient[fieldShift, hbar, n], Unique-> True], tDevs= devPat},
			fieldPattern:> RelabelIndices[CD[tDevs, shift], Unique-> True]
		]
	, {n, 0, 1}]
]


(* ::Subsubsection::Closed:: *)
(*Fermion shift*)


FermionShift[lagTerms_, f_Symbol, real_? BooleanQ]:= Module[
		{chi1, chi2, devPat, eomField, fieldPattern, fieldShift, inds, jacobianShift, pInds, rules, terms},
	inds= Symbol["i" <> ToString@ #]&/@ Range@ Length@ GetFields[f, Indices];
	pInds= Pattern[#, _]&/@inds;

	(*Keep only relevant terms*)
	terms= Plus@@ Select[TermsToList@ lagTerms, Not@* FreeQ[f]];

	eomField= EoM@ First@ Cases[{f[Sequence@@inds]}, _Field, Infinity];

	fieldShift= If[real,
			(* factor out the EoM[f] term *)
			chi1=RelabelIndices[OperatorToNormalForm[CoefficientOperator[terms, eomField],
				Unique-> True], Unique-> True];
			(* ...and subtract the terms we found, to now get the EoM[Bar@f] coefficients *)
			chi2=RelabelIndices[OperatorToNormalForm[CoefficientOperator[RelabelIndices[
				terms-Operator[chi1\[CenterDot] eomField]], Transp/@ eomField], Unique->True], Unique->True];
			RelabelIndices[I*CC\[CenterDot] (Transp@chi1-chi2)]
		,
			(* factor out the EoM[f] term *)
			chi1= RelabelIndices[OperatorToNormalForm[CoefficientOperator[terms, eomField],
				Unique-> True], Unique-> True];
			(* ...and subtract the terms we found, to now get the EoM[Bar@f] coefficients *)
			chi2=RelabelIndices[CoefficientOperator[RelabelIndices[
				terms- Operator[chi1\[CenterDot] eomField]], Bar/@ eomField], Unique-> True];
			-I/2* Bar@ OperatorToNormalForm[chi1+ Bar@ chi2, Unique-> True]
		];
	fieldShift= AdjustEOMShifts[fieldShift, f];

	(*TODO: include chiral Jacobian*)
	jacobianShift= 0;

	rules= Table[
		fieldPattern= First@ Cases[{f[Sequence@@ pInds]},
			Field[lab_, type_, is_, {}]:> Field[{lab, _, n}, type, is, devPat_], Infinity];
		With[{shift= RelabelIndices[Coefficient[fieldShift, hbar, n], Unique-> True], tDevs= devPat},
			fieldPattern:> RelabelIndices[CD[tDevs, shift], Unique-> True]
		]
	, {n, 0, 1}];

	{rules, jacobianShift}
]


(* ::Subsubsection::Closed:: *)
(*Vector shift*)


VectorShift::cmplx= "Complex vectors are not supported currently."


(* ::Text:: *)
(*The normalization is there to compensate for the normalization of the gauge kinetic term. *)


VectorShift[lagTerms_, f_Symbol, normalization_, real_? BooleanQ]:= Module[{devPat, fieldPattern, fieldShift, inds, pInds, rules, terms},
	inds= Symbol["i" <> ToString@ #]&/@ Range[Length@ GetFields[f, Indices]+ 1];
	pInds= Pattern[#, _]&/@inds;

	terms= Plus@@ Select[TermsToList@ lagTerms, Not@* FreeQ[f]];

	fieldShift= If[real,
			-normalization* RelabelIndices[OperatorToNormalForm[
				CoefficientOperator[terms, EoM@ f[Sequence@@inds] ],Unique->True, CanonizeKinetic->True]
				, Unique-> True]
		,
			Message[VectorShift::cmplx]; Abort[];
		];
	fieldShift= AdjustEOMShifts[fieldShift, f];

	rules= Table[
		fieldPattern= First@ Cases[{f[Sequence@@ pInds]},
			Field[lab_, type_, is_, {}]:> Field[{lab, _, n}, type, is, devPat_], Infinity];
		With[{shift= RelabelIndices[Coefficient[fieldShift, hbar, n], Unique-> True], tDevs= devPat},
			fieldPattern:> RelabelIndices[CD[tDevs, shift], Unique-> True]
		]
	, {n, 0, 1}]
]


(* ::Text:: *)
(*Kinetic mixing assumes (currently) mixing between real U(1) fields *)


KinMixingShift[lagTerms_, eomFields_List, kinMix_Association]:= Module[
		{devPat, fieldPattern, fieldShifts, inds, pInds, rules, fShift, terms},
	inds= Symbol["i" <> ToString@ #]&/@ Range[1];
	pInds= Pattern[#, _]&/@inds;

	terms= Plus@@ Select[TermsToList@ lagTerms, Not@* FreeQ[Alternatives@@ eomFields]];
	fieldShifts= Sum[
			fShift= RelabelIndices[OperatorToNormalForm[
						CoefficientOperator[terms, EoM@ f[Sequence@@ inds] ],Unique->True, CanonizeKinetic->True]
						, Unique-> True];
			fShift= AdjustEOMShifts[fShift, f];
			fShift* UnitVector[Length@ kinMix@ Fields, kinMix[FieldMap, f] ]
		, {f, eomFields}];
	fieldShifts= -kinMix@ Zinv . fieldShifts;

	rules= Flatten@ Table[
		fieldPattern= First@ Cases[{f[Sequence@@ pInds]},
			Field[lab_, type_, is_, {}]:> Field[{lab, _, n}, type, is, devPat_], Infinity];
		With[{shift= RelabelIndices[Coefficient[fieldShifts[[kinMix[FieldMap, f]]], hbar, n], Unique-> True], tDevs= devPat},
			fieldPattern:> RelabelIndices[CD[tDevs, shift], Unique-> True]
		]
	, {f, kinMix@ Fields}, {n, 0, 1}]
]


(* ::Subsubsection::Closed:: *)
(*Utility*)


(* ::Text:: *)
(*Selects all operators with the required number of derivatives and operator dimension (in internal Operator form)*)


(*SelectOperatorDevsAndDim[lag_, devs_, dim_]:= Module[{gaugeFields},
	(*lag/. op_Operator/; !MatchQ[OpDevsAndDim@op, {devs, dim}]-> 0 *) (*coefficient is part of the counting*)
	(*Plus@@ Select[TermsToList@ lag, MatchQ[{devs, dim}]@* OpDevsAndDim]*)
	gaugeFields= List@@ Query[All, Key@ Field]@ $GaugeGroups;
	Plus@@ Select[Select[TermsToList@lag, MatchQ[dim]@* OperatorDimension],
		MatchQ[devs]@ Echo@ OpDevs[#, gaugeFields]&]
];*)


(*OpDevs[op_, gaugeFields_]:= Block[{devs= 0},
	devs+= Plus@@ Cases[op, EoM@
		Alternatives[Field[_, type_, __], _@ Field[_, type_, __], _@ _@ Field[_, type_, __]]:>
			EOMDevs@ type, All];
	devs+= Plus@@ Cases[op, FieldStrength[lab_, __, linds_]:>
		If[MemberQ[gaugeFields, lab], 2, 1]+ Length@ linds, All];
	devs+= Plus@@ Cases[op, Field[___, linds_]:> Length@ linds, All];
	devs
];*)


SelectOperatorDevsAndDim[lag_, devs_, dim_]:= 
	Plus@@ Select[TermsToList@ lag, MatchQ[{devs, dim}]@* OpDevsAndDim];


(* ::Text:: *)
(*No counting of gauge fields as derivatives. (Shifts will also contain the same number of gauge FS operator as the operators they are shifted from, preserving the counting. *)


OpDevsAndDim@ op_:= Block[{devs= 0, gaugeFields, dim},
	dim= OperatorDimension@ op;

	devs+= Plus@@ Cases[op, EoM@
		Alternatives[Field[_, type_, __], _@ Field[_, type_, __], _@ _@ Field[_, type_, __]]:>
			EOMDevs@ type, All];
	devs+= Plus@@ Cases[op, FieldStrength[lab_, __, linds_]:> 1+ Length@ linds, All];
	devs+= Plus@@ Cases[op, Field[___, linds_]:> Length@ linds, All];
	{devs, dim}
];


(* ::Text:: *)
(*Separates the Lagrangian into two parts depending on the dimension *)


SplitLagByDims[lag_, dim_]:= Block[{},
	Plus@@ (If[OperatorDimension@ # > dim, {0, #}, {#, 0}]&)/@ TermsToList@ lag
];


(* ::Subsubsection::Closed:: *)
(*Gauge group shifts*)


DummyGaugeShift[expr_, gaugeField_Symbol]:= Module[{group, out},
	group= First@ GetGaugeGroupByProperty[Field-> gaugeField];

	(*If group is Abelian include its own field strength even though it doesn't transform*)
	out= If[$GaugeGroups[group, Group] === U1,
			expr/. f:FieldStrength[gaugeField, __]:> f+ ShiftAbelianFS@ f
		,
			expr
		];

	(*Shift of CDs*)
	out= out/. (f:(Field[__, {__}]| _FieldStrength))/; FieldTransformsUnderGaugeGroupQ[f, group]:>
		ShiftCDnew[f, group, gaugeField];

	out
];


ShiftAbelianFS[FieldStrength[fsLab_, {l1_, l2_}, {}, devs_]]:= Block[{},
	Field[fsLab, Vector@ l2, {}, Append[devs, l1]]- Field[fsLab, Vector@ l1, {}, Append[devs, l2]]
];


(* ::Text:: *)
(*Applies iteratively*)


ShiftCDnew[fieldOrFS_[fieldLab_, typeOrLors_, inds_, devs:{__}], group_, gaugeField_]:= Module[
		{charge, next, newAdj, newFieldInds, newInd, origInd},
	If[$GaugeGroups[group, Abelian],
		charge= FirstCase[GetFields[fieldLab, Charges], group@ q_-> q];
		next= ShiftCDnew[fieldOrFS[fieldLab, typeOrLors, inds, Rest@ devs], group, gaugeField];
		-I* charge* Field[gaugeField, Vector@ First@ devs, {}, {}]* next + CD[First@ devs, next]
	,
		{newFieldInds, origInd, newInd}= ChangeGroupIndex[inds, group, Unique[a]];
		newAdj= Index[Unique@ A, group@ adj];
		CD[First@ devs, ShiftCDnew[fieldOrFS[fieldLab, typeOrLors, inds, Rest@ devs], group, gaugeField]] +
			Field[gaugeField, Vector@ First@ devs, {newAdj}, {}] If[Head@ origInd === Bar,
					+I* Bar@ CG[gen@ origInd[[1, 2]], {newAdj, Bar@ origInd, newInd}],
					-I* CG[gen@ origInd[[2]], {newAdj, origInd, Bar@ newInd}]
				]* ShiftCDnew[fieldOrFS[fieldLab, typeOrLors, newFieldInds, Rest@ devs], group, gaugeField]
	]
];
ShiftCDnew[f:Field[_, _, _, {}], _, _]:= f;
ShiftCDnew[f:FieldStrength[_, _, _, {}], group_, gaugeField_]:= f+ ShiftCoreFS[f, group, gaugeField];


ShiftCoreFS[FieldStrength[fsLab_, {l1_, l2_}, grInds_, {}], group_, gaugeField_]:= Module[
		{charge, newAdj, newFsInds, newInd, origInd},
	If[fsLab === $GaugeGroups[group, Field], Return[
		(* Only non-Abelian gauge groups get to this point *)
		Field[fsLab, Vector@ l2, grInds, {l1}]-
		Field[fsLab, Vector@ l1, grInds, {l2}] +
		Module[{b, c}, CG[fStruct@ group, {grInds[[1, 1]], b, c}]*
			fsLab[l1, b]fsLab[l2, c] ]
	]; ];
	If[$GaugeGroups[group, Abelian],
		charge= FirstCase[GetFields[fsLab, Charges], group@ q_-> q];
		-I* charge* CD[devs, Field[gaugeField, Vector@ l1, {}, {}] Field[fsLab, Vector@ l2, grInds, {}]-
			Field[gaugeField, Vector@ l2, {}, {}] Field[fsLab, Vector@ l1, grInds, {}]]
	,
		{newFsInds, origInd, newInd}= ChangeGroupIndex[grInds, group, Unique[a]];
		newAdj= Index[Unique@ A, group@ adj];
		If[Head@ origInd === Bar,
			+I* Bar@ CG[gen@ origInd[[1, 2]], {newAdj, Bar@ origInd, newInd}],
			-I* CG[gen@ origInd[[2]], {newAdj, origInd, Bar@ newInd}] ]*
			CD[devs,
				Field[gaugeField, Vector@ l1, {newAdj}, {}]* Field[fsLab, Vector@ l2, newFsInds, {}]-
				Field[gaugeField, Vector@ l2, {newAdj}, {}]* Field[fsLab, Vector@ l1, newFsInds, {}]
			]
	]
];


(* Function finding the index in a list that belongs to a specific group, returning the list with the index replaced by a given label, the old index, and the new *)
ChangeGroupIndex[indices_, group_, newLab_]:=Module[{groupIndex, newInd},
	(* Find the index belongin to the given group *)
	groupIndex= FirstCase[indices, (Index[_, rep_]| Bar@ Index[_, rep_])/; GroupFromRep@ rep === group, {}];

	(* Return the field with replaced index and the original and new index labels *)
	newInd= If[Head@ groupIndex === Bar,
			Bar@ Index[newLab, groupIndex[[1, 2]]]
		,
			Index[newLab, Last[groupIndex]]
		];
	{indices/. groupIndex-> newInd, groupIndex, newInd}
];
