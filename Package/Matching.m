(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`Matching`*)


(* ::Subtitle:: *)
(*Various modules for defining the EFT power counting and matching.*)


(* ::Chapter:: *)
(*Public:*)


(* ::Section:: *)
(*Scoping*)


PackageImport["GroupMagic`"]


(* ::Subsection::Closed:: *)
(*Exported*)


PackageExport["SeriesEFT"]
PackageExport["Match"]
PackageExport["CovariantLoop"]


(* ::Text:: *)
(*Options *)


PackageExport["EFTOrder"]
PackageExport["LoopOrder"]


(* ::Subsection::Closed:: *)
(*Internal*)


PackageScope["OperatorDimension"]
PackageScope["TruncateOperator"]


PackageScope["SetCurrentLagrangian"]


PackageScope["FindUvFields"]


PackageScope["TypeDim"]


PackageScope["$currentEOMs"]
PackageScope["$currentHeavyDims"]
PackageScope["$currentXsubs"]
PackageScope["$currentXdims"]


PackageScope["$currentFieldAssociation"]
PackageScope["GetFieldsUpdated"]
PackageScope["GetFieldsUpdatedByProperty"]


PackageScope["IsolateMassTerms"]


(* ::Text:: *)
(*Options *)


PackageScope["Simplifications"]


(* ::Section:: *)
(*Usage messages*)


(* ::Subsection::Closed:: *)
(*Exported*)


SeriesEFT::usage =
"SeriesEFT[expr, EFTOrder -> 6] truncates the expression expr in the EFT power counting at the mass-dimension specified by the option EFTOrder (6 by default). The EFTOrder can be given as n, to return the expansion up to mass dimension n, or {n} to return exclusively the terms of order exactly n.";


Match::usage=
	"Match[Lag, EFTOrder -> 6, LoopOrder-> 1] returns the EFT Lagrangian resulting from integrating out the heavy fields from the Lagrangian Lag. The optional arguments EFTOrder and LoopOrder determine, respectively, the desired order in the EFT and loop expansion, with LoopOrder admitting the values 0 (tree), {1} (loop) or 1 (tree+loop).";


LoopOrder::usage = "LoopOrder is an option for Match routine specifying the targeted order in the loop expansion. It can take the values 0 (tree), {1} (loop) or 1 (tree+loop).";


CovariantLoop::usage=
	"CovariantLoop[Lag, {fields}] returns the value of the supertraces involving exactly the degrees of freedom specified in the field list. It takes the option EFTOrder.";


(* ::Subsection::Closed:: *)
(*Internal*)


OperatorDimension::usage = "OperatorDimension[op] returns the mass-dimension of the operator op.";
IsolateMassTerms::usage="IsolateMassTerms[\[ScriptCapitalL], Heavy -> All] returns all massterms of the Lagrangian \[ScriptCapitalL]. Replacing All by True or False only returns the heavy or light mass terms respectively.";


(* ::Chapter:: *)
(*Private:*)


(* ::Section:: *)
(*EFT power counting *)


(* ::Subsection::Closed:: *)
(*Global flag for the mass dimension*)


$currentEFTOrder = 6;


(* ::Subsection::Closed:: *)
(*Dimensionality of an operator*)


OperatorDimension::notanop = "The term `1` is not a single operator.";


OperatorDimension[x_Operator] := OperatorDimension[NormalForm@x];
OperatorDimension[c_ x_Operator] := OperatorDimension[c] + OperatorDimension[NormalForm@x];


OperatorDimension[0]= 100;
OperatorDimension[expr_Plus]:= Min[OperatorDimension/@ (List@@ expr)];
OperatorDimension[expr_List]:= Min[OperatorDimension/@ expr];


OperatorDimension[op_]:=Module[
	{
		expr = RemovePower@op,
		dim
	},
	(*Dimensions of all fields*)
	dim = Plus@@ Cases[expr, Field[arg___]:>FieldDimension@Field[arg], All];
	(*Dimensions of all FS-tensors*)
	dim += Plus@@ Cases[expr, FieldStrength[___, devs_]:> 2 + Length@ devs, All];
	(*Dimensions of couplings*)
	dim += Plus@@ Cases[Numerator@expr, Coupling[_,_,n_]:>n, All] - Plus@@Cases[Denominator@expr, Coupling[_,_,n_]:>n, All];
	(*Dimension of symmetrized CD*)
	dim += Plus@@ Cases[expr, SymmetrizedCD[\[Mu]_List, _]:> Length@ \[Mu], All];
	(*Dimension of the IR regulator from the loop integral*)
	(*dim += Plus@@ Cases[expr, Power[InvProp@ mIR, n_]:> 4 + 2 n, All]; *)
	dim
]


TypeDim[Scalar|Vector[_]|Ghost]:=1;
TypeDim[Fermion]:=3/2;


TypeDim[Field[_,type_,___]] := TypeDim[type];


(* ::Subsubsection::Closed:: *)
(*Counting rule for IR fields*)


FieldDimension[Field[f:Except[List[___]],type_,_,derivs_List]] :=
	Length[derivs] + TypeDim[type] + If[GetFieldsUpdated[f, Heavy], 1, 0]; (* heavy fields have at least one suppression factor*)


(* ::Subsubsection::Closed:: *)
(*Counting rule for expanded UV fields*)


(*FieldDimension[Field[{_,n_},type_,_,derivs_List]] := (n + Length[derivs] + TypeDim[type])*)
FieldDimension[Field[{_,n_,___},type_,_,derivs_List]] := (n + Length[derivs] + TypeDim[type])


(* ::Subsection::Closed:: *)
(*EFT series*)


SeriesEFT::notarationale = "The order for the EFT series expansion specified `1` is neither an integer nor a rationale.";


Options[SeriesEFT]={EFTOrder -> 6};


SeriesEFT[arg_,OptionsPattern[]]:=Module[
	{
		order = OptionValue[EFTOrder],
		(*In some situations BetterExpand may perform slightly better, but downside can be orders of magnitude in others*)
		expr  = EvenBetterExpand[arg],
		result
	},
	Switch[order,
		(* select terms up to the given order *)
		_Integer | _Rational,
			If[Head[expr]===Plus,
				result = TruncateOperator[#,order]&/@expr
				,
				result = TruncateOperator[expr,order]
			],
		(* select terms of the exact order *)
		{_Integer | _Rational},
			order = First[order];
			If[Head[expr]===Plus,
				result = TruncateOperatorExact[#,order]&/@expr
				,
				result = TruncateOperatorExact[expr,order]
			],
		_,
			Message[SeriesEFT::notarationale, order];
			Abort[]
	];
	Return[result]
]


TruncateOperator[op_,dim_]:=If[OperatorDimension[op]>dim,
	Return[0]
	,
	Return[op]
]


TruncateOperatorExact[op_,dim_]:=If[OperatorDimension[op]==dim,
	Return[op]
	,
	Return[0]
]


(* ::Section:: *)
(*Matching routines*)


(* ::Subsection::Closed:: *)
(*Update the current Lagrangian*)


(* ::Text:: *)
(*Initialize loop and EFT order of the current Lagrangian*)


$currentLoopOrder = -1;


$currentHeavyDims = <||>;


(* ::Text:: *)
(*Sets the global state for the the current Lagrangian and associated objects*)


Options@ SetCurrentLagrangian= {Verbose-> True};


SetCurrentLagrangian[lagrangian_, loopOrder_, eftOrder_, OptionsPattern[]] := Module[
	{eftOrd, newLag, lag = lagrangian}
	,

	(* expand Lagrangian and write mass terms in canonical format *)
	lag = RelabelIndices@ Contract@ IntroduceEffectiveMasses@ CanonizeFermionMassTerms@ EvenBetterExpand@ ContractCGs@ lag;

	If[(newLag = lag =!= $currentLagrangian),
		If[!CheckLagrangian@ lag, Abort[]; ];

		(* set the new Lagrangian *)
		$currentLagrangian= lag;
		(* determine its fields with their Masses *)

		Determine$currentFieldAssociation[lag];
	];

	eftOrd= If[Head@ eftOrder === List, First@ eftOrder, eftOrder];
	If[newLag || eftOrder > $currentEFTOrder,
		(* Reset $currentHeavyDims *)
		$currentHeavyDims = <||>;
		(* Derive and solve the EOMs *)
		DetermineEOMs[lag, EFTOrder-> eftOrder]; (* This internally sets $currentEOMs and $currentHeavyDims *)
	];
	$currentEFTOrder= eftOrder;

	If[newLag || loopOrder > $currentLoopOrder,
		If[($currentLoopOrder= loopOrder) > 0,
			OptionalMonitor[OptionValue@ Verbose,
				{$currentXdims, $currentXsubs}= DeriveSubstitutions[lag,EFTOrder->eftOrder];
			, "Evaluating X-terms"];
		];
	];

	Return[lag]
];


(* ::Subsubsection::Closed:: *)
(*Determine  Fields  and  Masses*)


(* ::Text:: *)
(*Define  the  function  $currentFieldAssociation[]  which  works  similar  to  GetFields[], but  containing  the  definitions  specific  to  the  current  Lagrangian . Furthermore, light  masses  are  treated  as  interactions  and  thus  for  a  light  but  massive  field  \[Phi]  we  have  Mass -> 0  in  $currentFieldAssociation[\[Phi]], contrary  to  GetFields[\[Phi]]*)


Determine$currentFieldAssociation[lagrangian_]:=Module[
	{
		lag = lagrangian,
		fieldLabels,
		\[ScriptCapitalL]Mass,
		massTerms,
		fieldAssoc
	}
	,
	(* determine fields in new Lagrangian *)
	fieldLabels = DeleteDuplicates@ Cases[lag, (Field[l_,___] | FieldStrength[l_,___]):>l, All];

	(* extract all heavy mass terms *)
	\[ScriptCapitalL]Mass = IsolateMassTerms[lag, Heavy -> True];

	\[ScriptCapitalL]Mass = CollectOperators[\[ScriptCapitalL]Mass, NormalForm->False];

	(* loop over fields *)
	$currentFieldAssociation = <||>;
	Do[
		AssociateTo[
			$currentFieldAssociation,
			field -> DetermineFieldProperties[field, \[ScriptCapitalL]Mass/.Except[Field[field,___], _Field]->0]
		]
		,
		{field, fieldLabels}
	];

	(* Throw warnings if Heavy attribute changed *)
	Do[
		If[$FieldAssociation[f,Heavy]=!=$currentFieldAssociation[f,Heavy],
			Print["WARNING: The field ", f, " was defined as ", If[$FieldAssociation[f,Heavy],"heavy","light"], ", but in the given Lagrangian it is ", If[$currentFieldAssociation[f,Heavy],"heavy","light"], "."];
		];
		If[$currentFieldAssociation[f,Heavy],
			If[$currentFieldAssociation[f,Mass]=!=$FieldAssociation[f,Mass],
				Print["WARNING: The heavy field ", f, " was defined with mass ", NiceForm@$FieldAssociation[f,Mass],", but the mass found in the Lagrangian is ", NiceForm@$currentFieldAssociation[f,Mass], "."]
			]
		]
		,
		{f, Keys@$currentFieldAssociation}
	];
]


DetermineFieldProperties[l_, massterm_]:=Module[
	{
		defProps = GetFields[l],
		heavy, mass,
		massTerm = Contract@ massterm
	}
	,

	(* determine mass-coupling depending on field type *)
	If[massTerm===0,
		(* massless/light fields -> light masses are treated as interactions *)
		mass = 0;
		heavy = False
		,
		(* heavy/massive fields *)
		Switch[defProps[Type],
			Scalar,
				If[defProps[SelfConjugate],
					mass = Sqrt[-2*massTerm/._Operator->1], (*real*)
					mass = Sqrt[-massTerm/._Operator->1] (*complex*)
				],
			Vector,
				If[defProps[SelfConjugate],
					mass = Sqrt[2*massTerm/._Operator->1], (*real*)
					mass = Sqrt[massTerm/._Operator->1] (*complex*)
				],
			Fermion,
				If[defProps[SelfConjugate],
					mass = -2*massTerm/._Operator->1, (*Majorana*)
					Switch[defProps[Chiral],
						LeftHanded | RightHanded, (*Weyl*)
							mass = -massTerm/._Operator->1,
						False, (*Dirac*)
							mass = -massTerm/._Operator->1
					]
				]
		];

		mass = Contract@ mass;

		mass = mass /. {Sqrt[x_Coupling^2]:>x /; GetCouplings[First@x][SelfConjugate]}; (* simplify Sqrt[] for real couplings *)
		If[MatchQ[mass, _Coupling],
			(* extract mass label *)
			If[GetCouplings[First@ mass][EFTOrder]==0,
				mass = First@ mass;
				heavy = True
				,
				mass = 0; (* light field masses are treated as interactions *)
				heavy = False
			]
			,
			Message[SetCurrentLagrangian::massterm, l, mass];
			Abort[]
		];
	];

	(* return field properties in given Lagrangian *)
	<|
		Type          -> defProps[Type],
		Indices       -> defProps[Indices],
		Charges       -> defProps[Charges],
		SelfConjugate -> defProps[SelfConjugate],
		Chiral        -> defProps[Chiral],
		Mass          -> mass,
		Heavy         -> heavy
	|>
]


SetCurrentLagrangian::massterm="Could not identify the mass coupling `2` for the field `1`.";


(* ::Subsubsection::Closed:: *)
(*Return most recently determined fields association*)


$currentFieldAssociation = 0;


GetFieldsUpdated[] := If[Head[$currentFieldAssociation]===Association, $currentFieldAssociation, $FieldAssociation]


GetFieldsUpdated[f_] := If[Head[$currentFieldAssociation]===Association && KeyExistsQ[$currentFieldAssociation,f],
	$currentFieldAssociation@ f,
	$FieldAssociation@ f
]


GetFieldsUpdated[f_,prop_] := If[Head[$currentFieldAssociation]===Association && KeyExistsQ[$currentFieldAssociation,f],
	$currentFieldAssociation[f,prop],
	$FieldAssociation[f,prop]
]


GetFieldsUpdatedByProperty[]:=GetFieldsUpdated[]

GetFieldsUpdatedByProperty[propsSeq__]:=GetFieldsUpdatedByProperty[List[propsSeq]]

GetFieldsUpdatedByProperty[props_Association]:= GetFieldsUpdatedByProperty@ Normal@ props;

GetFieldsUpdatedByProperty[props:_List|_Rule]:= If[Head[$currentFieldAssociation]===Association,
	Keys@ Select[$currentFieldAssociation, MatchQ[#, KeyValuePattern[props]]&],
	Keys@ Select[$FieldAssociation, MatchQ[#, KeyValuePattern[props]]&]
]


(* ::Subsubsection::Closed:: *)
(*Extract all mass terms from a Lagrangian*)


Options@ IsolateMassTerms= {Heavy -> All};


IsolateMassTerms[L_, OptionsPattern[]] := Module[{res},
	res = Plus@@ Table[
		If[Plus@@Cases[RemovePower@term, Field[___,aux_List] :> 1+Length[aux], All]==2,
			Switch[OptionValue[Heavy],
				True, If[OperatorDimension2[term]<4, term, Nothing],
				False, If[OperatorDimension2[term]>=4, term, Nothing],
				All, term
			]
			,
			Nothing
		]
		,
		{term, List@@ (EvenBetterExpand@ HcExpand@ L)}
	]
]


(* ::Subsubsection::Closed:: *)
(*OperatorDimension2*)


(* ::Text:: *)
(*Same as OperatorDimension[...], but all/heavy fields are counted with their canonical mass dimension, i.e., w/o EFT suppression factors.*)


OperatorDimension2[x_Operator] := OperatorDimension2[NormalForm@x];
OperatorDimension2[c_ x_Operator] := OperatorDimension2[c] + OperatorDimension2[NormalForm@x];


OperatorDimension2[0]= 100;
OperatorDimension2[expr_Plus]:= Min[OperatorDimension2/@ (List@@ expr)];
OperatorDimension2[expr_List]:= Min[OperatorDimension2/@ expr];


OperatorDimension2[op_]:=Module[
	{
		expr = RemovePower@op,
		dim
	},
	(*Dimensions of all fields*)
	dim = Plus@@ Cases[expr, Field[arg___]:>FieldDimension2@Field[arg], All];
	(*Dimensions of all FS-tensors*)
	dim += Plus@@ Cases[expr, FieldStrength[___, devs_]:> 2 + Length@ devs, All];
	(*Dimensions of couplings*)
	dim += Plus@@ Cases[Numerator@expr, Coupling[_,_,n_]:>n, All] - Plus@@Cases[Denominator@expr, Coupling[_,_,n_]:>n, All];
	(*Dimension of symmetrized CD*)
	dim += Plus@@ Cases[expr, SymmetrizedCD[\[Mu]_List, _]:> Length@ \[Mu], All];
	(*Dimension of the IR regulator from the loop integral*)
	(*dim += Plus@@ Cases[expr, Power[InvProp@ mIR, n_]:> 4 + 2 n, All]; *)
	dim
]


FieldDimension2[Field[f:Except[List[___]],type_,_,derivs_List]] := Length[derivs] + TypeDim[type];


(* ::Subsection::Closed:: *)
(*Finds the UV fields in the given expression*)


FindUvFields::error = "The field `1` is not part of the Lagrangian.";


FindUvFields[lagrangian_]:=Module[
	{
		fieldAssociation = GetFieldsUpdated[],
		uvFields
	},
	(* find all field labels *)
	uvFields = DeleteDuplicates@Join[
		Cases[lagrangian, Field[label_,___]:>label, All],
		Cases[lagrangian, FieldStrength[label_,___]:>label, All]
	];
	(* select labels of all heavy fields *)
	uvFields = If[fieldAssociation[#][Heavy]===True,#,Nothing[]]&/@uvFields;
	(* pick the apropriate fields *)
	uvFields = FirstCase[lagrangian,Field[#,___],Message[FindUvFields::error,#]; Abort[],All]&/@uvFields;
	(* make the indices unique *)
	uvFields = uvFields /. Index[_,rep_]:>Index[Unique[],rep];
	Return[uvFields]
]


(* ::Subsection::Closed:: *)
(*Routine for specific covariant loops*)


(* ::Text:: *)
(*The user function for computing specific supertrace contributions by specifying the internal fields. *)


CovariantLoop::ukwnfld= "The field(s) `1` is not part of the Lagrangian."
CovariantLoop::noheavy= "There are no heavy fields in the loop."


Options@ CovariantLoop= {
		EFTOrder:> 6
	};


CovariantLoop[lagrangian_, fields_List, opts:OptionsPattern[]]? OptionsCheck:=
CovariantLoop[lagrangian, fields, opts]=Module[{lagFields, n, types, dofNumbers, ord, out, lag=lagrangian},
	lagFields= LagrangianDofs@ lag;
	(*Check fields*)
	If[!SubsetQ[Join@@ List@@ lagFields, fields],
		Message[CovariantLoop::ukwnfld, Complement[fields, Join@@ List@@ lagFields]];
		Abort[];
	];
	If[Intersection[GetFieldsUpdatedByProperty[Heavy-> True], fields] === {},
		Message[CovariantLoop::noheavy];
		Abort[];
	];


	(*Update Lagrangian*)
	ord= OptionValue@ EFTOrder;
	lag = SetCurrentLagrangian[lag, 1, If[Head@ ord === List, First @ord, ord]];

	(*Number the fields *)
	types= FieldType/@ fields;
	dofNumbers= Table[
		Position[lagFields@ types[[n]], fields[[n]]][[;;, 1]]
	, {n, Length@ types}];

	(*Add log type STr*)
	out= If[Length@ fields === 1,
			LogTypeSTr[First@ types, ord, Fields-> dofNumbers]
		,
			0
		];

	out+ PowerTypeSTr[types, ord, Fields-> dofNumbers]//ContractCGs//MatchReduce
];


CovariantLoop[lag_, field_Symbol, ord_, opts:OptionsPattern[]]:=
	CovariantLoop[lag, {field}, ord, opts];


(* ::Subsection:: *)
(*Main Matchete routine for integrating out fields*)


Options[Match]={EFTOrder -> 6, LoopOrder-> 1, Simplifications -> All, Verbose -> Monitor};


Match[lag_, opts:OptionsPattern[]]? OptionsCheck :=
Match[lag, opts] = Module[{
		(*lagrangian = BetterExpand[ContractCGs@lag],*)
		lagrangian = lag,
		eftOrder=OptionValue@EFTOrder,
		loopOrder=OptionValue@LoopOrder,
		LagrangianEFT,
		ReplaceHeavyEOMOpts = Sequence@@FilterRules[{opts},Options[ReplaceHeavyEOM]],
		VerboseOption = (OptionValue@Verbose===Print||OptionValue@Verbose===Monitor)
	},

	(*
	(*Check Lagrangian*)
	If[!CheckLagrangian@ lagrangian,
		Abort[];
	];
	*)

	(* canonize fermion masses *)
	(*lagrangian = CanonizeFermionMassTerms[lagrangian];*)

	(* canonize fermion masses *)
	lagrangian = CanonizeFermionMassTerms[lagrangian];

	(* Set global variables for the given Lagrangian *)
	lagrangian = SetCurrentLagrangian[lagrangian, If[loopOrder === {1}, 1, loopOrder],
		If[Head@ eftOrder === List, First @eftOrder, eftOrder], Verbose-> VerboseOption];

	MyPrint["Integrating out the fields: ", Sequence@@Riffle[Intersection[Matchete`PackageScope`OccuringFields[lagrangian],GetFieldsUpdatedByProperty[Heavy->True]],", "], Verbose->OptionValue@Verbose===Print];

	LagrangianEFT= If[MatchQ[loopOrder, 0|1],
			(*Tree-level Lagrangian*)
			OptionalMonitor[VerboseOption,
				RelabelIndices@ ReplaceHeavyEOM[lagrangian, ReplaceHeavyEOMOpts]
			, "Matching at tree level..."]
		, 0]+ If[MatchQ[loopOrder, 1|{1}],
			(*One-loop Lagrangian*)
			OptionalMonitor[VerboseOption,
				LagrangianEFT = LoopMatch[EFTOrder->eftOrder,Verbose->VerboseOption]
			, "Matching at 1-loop level..."]
		, 0];

	LagrangianEFT//ContractCGs//MatchReduce
];


(* ::Subsection::Closed:: *)
(*Routine to simplify the output*)


(* ::Text:: *)
(*Function to convert CGs to Matchete Deltas and to evaluate single scale loop integrals*)


MatchReduce[expr_]:= Module[{},
	Contract[ContractCGs[expr/.
	{
		(*\[Epsilon]^-1-> 0,*)(*Needs to be done after Gamma reduction*)
		FieldStrength[label_,linds_,{Bar@ind1_,ind2_},{CDer___}]:> Module[{A},
				-CG[Bar[gen[ind2[[2]]]],{Index[A,GroupFromRep[ind2[[2]]][adj]],Bar@ind1,ind2}] FieldStrength[label,linds,{Index[A,GroupFromRep[ind2[[2]]][adj]]},{CDer}]
			],
		FieldStrength[label_,linds_,{ind1_,Bar@ind2_},{CDer___}]:> Module[{A},
				CG[gen[ind2[[2]]],{Index[A,GroupFromRep[ind2[[2]]][adj]],ind1,Bar@ind2}] FieldStrength[label,linds,{Index[A,GroupFromRep[ind2[[2]]][adj]]},{CDer}]
			],
		FieldStrength[label_,linds_,{ind1_Index,ind2_Index},{CDer___}]:> Module[{A},
				CG[gen[ind2[[2]]],{Index[A,GroupFromRep[ind2[[2]]][adj]],ind1,ind2}] FieldStrength[label,linds,{Index[A,GroupFromRep[ind2[[2]]][adj]]},{CDer}]
			]
	}]//.
	{
		LF[masses_?(Length[#]==1&),powers_]:> EvaluateLoopFunctions@LF[masses,powers],
		HoldPattern@CG[del[_],{a_,b_}]:> Delta[a,b],
		HoldPattern[CG[eps[x_],a:{_Index..}]CG[Bar@eps[x_],b:{_Bar..}]]:> Det[Outer[Delta,a,b]]
	}]
]


(* ::Subsection::Closed:: *)
(*Canonize fermion mass terms*)


PackageScope["CanonizeFermionMassTerms"]


CanonizeFermionMassTerms[lagrangian_] := Module[
	{
		lag = List@@lagrangian (*needs to be already expanded*)
	}
	,
	lag = Plus@@Table[
		(* canonize Dirac masses of vectorlike fermions *)
		If[MatchQ[term, aux_ * Bar@Field[l_,Fermion,___]**DiracProduct[Proj[-1]]**Field[l_,Fermion,___] /; (FreeQ[aux, _Field, All] && !(GetFields[l][SelfConjugate]) && GetFields[l][Chiral]===False)],
			(term /. {Proj[-1]->1}) - (term /. {Proj[-1]->Proj[+1]})
			,
			(* canonize Majorana masses *)
			If[MatchQ[term, aux_ * Transp[Field[l_,Fermion,___]]**DiracProduct[GammaCC,Proj[-1]]**Field[l_,Fermion,___] /; (FreeQ[aux, _Field, All] && GetFields[l][SelfConjugate] && GetFields[l][Chiral]===False)],
				(term /. {Proj[-1]->1}) - (term /. {Proj[-1]->Proj[+1]})
				,
				term
			]
		]
		,
		{term,lag}
	];

	Return@RelabelIndices[lag]
];
