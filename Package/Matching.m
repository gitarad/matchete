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


PackageScope["$FieldTypes"]
PackageScope["hScalar"]
PackageScope["lScalar"]
PackageScope["hFermion"]
PackageScope["lFermion"]
PackageScope["hVector"]
PackageScope["lVector"]
PackageScope["hGhost"]
PackageScope["lGhost"]


PackageScope["ValidateCurrentVersion"]
PackageScope["UpdateValidation"]
PackageScope["ActivateValidationMode"]


PackageScope["OperatorDimension"]
PackageScope["TruncateOperator"]


PackageScope["SetCurrentLagrangian"]


PackageScope["TypeDim"]


PackageScope["$currentEOMs"]
PackageScope["$currentHeavyDims"]
PackageScope["$Xsubs"]
PackageScope["$Msubs"]
PackageScope["$XFieldDofs"]
PackageScope["$XOrders"]
PackageScope["$XOrdMin"]
(*PackageScope["$currentXdims"]*)


PackageScope["ListPowerTypeTraces"]


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


ListPowerTypeTraces::usage= "ListPowerTypeTrace[order, <lightFieldsOnly>] returns a list of all the propagator set that can contribute in the supertraces up to a given order and given a Lagrangian.";


ActivateValidationMode::usage="SaveForValidation[\"model name\", bool] specifies that the next time the Match routine is called, the results are saved to an internal database for comparison. The String argument \"model name\" should match the shorthand name used for the model. The boolean argument \"reset\" specifies whether the derived results should replace the previous results or be treated as the new reults.";


ValidateCurrentVersion::usage="Compares the current version of the code for a preset list of models to results obtainde on an earlier version of the code.";


UpdateValidation::usage="Saves matching results for all model files to an internal directory for later comparison.";


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
	(*Dimension of open CD*)
	dim += Plus@@ Cases[expr, OpenCD[\[Mu]_List]:> Length@ \[Mu], All];
	(*Dimension of the IR regulator from the loop integral*)
	(*dim += Plus@@ Cases[expr, Power[InvProp@ mIR, n_]:> 4 + 2 n, All]; *)
	dim
]


TypeDim[Scalar|Vector[_]|Ghost]:=1;
TypeDim[Fermion]:=3/2;


TypeDim[Field[_,type_,___]] := TypeDim[type];


(* ::Subsubsection:: *)
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
(*Extract theory information*)


(* ::Subsection::Closed:: *)
(*Field type info*)


(* ::Text:: *)
(*Properties of the field types propagating in the supertraces*)


$FieldTypes= <|
	hScalar-> <|Type-> Scalar, Heavy-> True|>,
	lScalar-> <|Type-> Scalar, Heavy-> False|>,
	hFermion-> <|Type-> Fermion, Heavy-> True|>,
	lFermion-> <|Type-> Fermion, Heavy-> False|>,
	hVector-> <|Type-> Vector, Heavy-> True|>,
	lVector-> <|Type-> Vector, Heavy-> False|>,
	hGhost-> <|Type-> Ghost, Heavy-> True|>,
	lGhost-> <|Type-> Ghost, Heavy-> False|>
|>;


(* ::Subsection::Closed:: *)
(*Substitution rules *)


(* ::Text:: *)
(*To determine substitution rules given Lagrangian input *)


(* ::Subsubsection:: *)
(*Derive Xterm and Mterm substitutions as well their EFT orders*)


(* ::Text:: *)
(*lag: UV Lagrangian*)
(*	Compute fluctuation operator from given lag.*)
(*	Return values for the global flags {$XFieldDofs, $XSubs, $XOrders, $XOrdMin, $MSubs}.*)


Options[DeriveSubstitutions] = {EFTOrder -> 6};


DeriveSubstitutions[lag_, OptionsPattern[]] := Module[
	{tmp, fields,fieldDofs, Xterms,effLag,allFieldLabels, gfTerms, \[Alpha], \[Beta], i, j, iPattern,jPattern,
		devs,allEFTorders,XOrders=<||>,XOrdMin=<||>,l1,l2,f1,f2,MinXOrderByFieldType,xSubs={},
		xSubsTMP,RelabelI,mSubs}
	,
	(*prepare patterns corresponding to indices i and j*)
	iPattern=ToExpression[ToString[i]<>"_"];
	jPattern=ToExpression[ToString[j]<>"_"];

(* Determine field content *)
	(*Determine fields in lag sorted by classes, accounting for complex dofs as in [2012.08506, (2.33)]*)
	fields=LagrangianDofs@ lag;
	(*Association: Keys = field classes, Values =  field variable functions*)
	fieldDofs=(FieldDoFs/@ fields);
	(*List of all field labels in lag*)
	allFieldLabels=DeleteCases[Flatten@ Values@ fields, _Conj];

(* Prepare the Lagrangian *)
	(*Subtract kinetic terms that go into propagators*)
	effLag=lag-KinOpLagrangian@@ allFieldLabels;
	(*Add gauge-fixing terms for all light vectors*)
	gfTerms=Sum[
			GaugeFixing@GreensSimplify[
				-(1/2)CD[\[Alpha], Bar@ (lVec@i/.Index[_,Lorentz]->Index[\[Alpha],Lorentz])] CD[\[Beta], lVec@i/.Index[_,Lorentz]->Index[\[Beta],Lorentz]]
			]
			,
			{lVec,Values@fieldDofs@lVector}
		];
	effLag+= gfTerms;

(*Determine X-terms*)
	(*Iterate over field types*)
	Do[
		(*save all EFT orders for this type*)
		MinXOrderByFieldType={};
		(*Iterate over fields of given type*)
		Table[
			{l1,f1,l2,f2}=Flatten@{Keys[field1],Values[field1],Keys[field2],Values[field2]};
			(*perform functional derivatives*)
			tmp=-FluctuationOperator[effLag,Bar@f1@i,f2@j,EFTOrder->OptionValue[EFTOrder]];
			(*transform to position space: OpenCD[a]->OpenCD[a]-\[ImaginaryI]*LoopMom[a]*)
			tmp=Expand[
				tmp/.OpenCD[inds_List]:>FuncNCM@@Table[OpenCD[{\[Mu]}]-I*LoopMom[\[Mu]],{\[Mu],inds}]
			];
			(*find all EFTOrder*)
			allEFTorders=GetAllOperatorDimension[tmp];
			AppendTo[XOrders,{l1,l2}->allEFTorders];
			MinXOrderByFieldType=Join[MinXOrderByFieldType,allEFTorders];
			(*write replacements rules order-by-order*)
			xSubsTMP=Table[
				Xterm[{l1,l2},{iPattern,jPattern},ord]:>Evaluate@RelabelI[SeriesEFT[tmp,EFTOrder->{ord}],Unique->True]
				,
				{ord,DeleteCases[allEFTorders,n_/;n>99]}
			]/.{RelabelI[0,_]->0,RelabelI->RelabelIndices};
			xSubs=Join[xSubs,xSubsTMP];
		,
		{field1,fieldDofs@fieldType1},{field2,fieldDofs@fieldType2}
		];
		(*determine min. EFT order for field type*)
		If[MinXOrderByFieldType==={},
			MinXOrderByFieldType=100,
			MinXOrderByFieldType=Min@MinXOrderByFieldType
		];
		AppendTo[XOrdMin,{fieldType1,fieldType2}->MinXOrderByFieldType]
	,
	{fieldType1,Keys@fields},{fieldType2,Keys@fields}
	];

(* Determine Mass substitutions *)
	mSubs= Flatten@ Table[
			Table[
				tmp= GetFieldsUpdated[f, Mass];
				(*give indices to masses if necessary*)
				If[Length@ GetCouplings[tmp][Indices]=== 1,
					Mterm[f,iPattern]->tmp[i]
				,
					Mterm[f,___]->tmp[]
				]
			,
			{f,DeleteDuplicates[fields[fieldType]/.Conj[x_]->x]}
			]
		,
		{fieldType,{hScalar, hFermion, hVector, hGhost}} (*NB: Loop only over heavy DoFs*)
		];

	{fields,XOrders,XOrdMin,xSubs,mSubs}
]


(* ::Subsubsection::Closed:: *)
(*Lagrangian DoFs*)


(* ::Text:: *)
(*Gives an association with the DoFs of a Lagrangian for each field type .*)


LagrangianDofs[lag_]:= LagrangianDofs[lag]= Module[{fields},
	(*Get all fields from Lagrangian*)
	fields= DeleteDuplicates@ Cases[lag, (Field|FieldStrength)[f_, __]:> f, Infinity];
	(*Create association by field type*)
	fields= Association@@
		KeyValueMap[(#1-> Intersection[GetFieldsByProperty[#2], fields]&), $FieldTypes];
	(*Add conjugate DoFs*)
	LagrangianDofsAux/@ fields
 ];


(* ::Text:: *)
(*Extends list of fields with conjugate DoFs if they are not selfconjugate *)


LagrangianDofsAux@ fieldList_List:= LagrangianDofsAux/@ fieldList// Flatten;
LagrangianDofsAux@ field_Symbol:= If[GetFields[field, SelfConjugate], field, {field, Conj@ field}];


(* ::Text:: *)
(*"Conj" is used to describe the conjugated DoF.*)


(* ::Subsubsection::Closed:: *)
(*Auxiliary functions*)


(* ::Text:: *)
(*Auxiliary function for constructing the relevant DoFs of a field with indices to go in functional derivatives*)


FieldDoFs[fields_List]:= (#->FieldDoFs[#])&/@ fields;
FieldDoFs[Conj@ f_Symbol]:= FieldDoFs[f, True];
FieldDoFs[f_Symbol]:= FieldDoFs[f, False];
FieldDoFs[f_Symbol, conj_]:= Block[{props= GetFields[f], inds, i},
	inds= Sequence@@ ConstantArray[i, Length@ props@ Indices + If[GetFields[f, Type]=== Vector, 1, 0]];
	ReplacePart[Switch[{props@ Type, conj}
		,{Fermion, False},
			Function[i, Evaluate@ f@ inds]
		,{Fermion, True},
			Function[i, Evaluate@ CConj@ f@ inds]
		,{_, False},
			Function[i, Evaluate@ f@ inds]
		,{_, True},
			Function[i, Evaluate@ Bar@ f@ inds]
	], {1}-> i]
];


(* ::Text:: *)
(*Auxiliary function for determining the maximum EFT order of all terms in a sum/list*)


AllOperatorDimension[0]={0};
AllOperatorDimension[0.]={0};
AllOperatorDimension[{}]={0};
AllOperatorDimension[expr_Plus]:=Flatten[ AllOperatorDimension/@ (List@@ expr)];
AllOperatorDimension[expr_List]:= Flatten[AllOperatorDimension/@ expr];

GetAllOperatorDimension[term_]:=Module[{tmp=BetterExpand[term]},
	tmp=AllOperatorDimension[tmp];
	tmp=DeleteDuplicates@Flatten@{tmp/.AllOperatorDimension->OperatorDimension};
	tmp/.{0}->{100}
]


(* ::Subsection::Closed:: *)
(*Update the current Lagrangian*)


(* ::Text:: *)
(*Initialize loop and EFT order of the current Lagrangian*)


$currentLoopOrder = -1;


$currentHeavyDims = <||>;


(* ::Text:: *)
(*Sets the global state for the the current Lagrangian and associated objects*)


Options@ SetCurrentLagrangian= {Verbose-> True, "Renormalization"->False};


SetCurrentLagrangian[lagrangian_, loopOrder_, eftOrder_, OptionsPattern[]] := Module[
	{eftOrd, newLag, lag = HcExpand@ lagrangian}
	,

	(* expand Lagrangian and write mass terms in canonical format *)
	(*lag = RelabelIndices@ Contract@ IntroduceEffectiveMasses@ CanonizeFermionMassTerms@ EvenBetterExpand@ ContractCGs@ lag;*)
	lag = CanonizeFermionMassTerms@ EvenBetterExpand@ ContractCGs@ lag;
	
	lag = IntroduceEffectiveMasses@ lag;
	
	lag = RelabelIndices@ Contract@ lag;
	
	If[(newLag = lag =!= $currentLagrangian),
		If[!CheckLagrangian@ lag, Abort[]; ];

		(* set the new Lagrangian *)
		$currentLagrangian= lag;
		(* determine its fields with their Masses *)
		
		Determine$currentFieldAssociation[lag, "Renormalization"->OptionValue["Renormalization"]];
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
				(*{$currentXdims, $currentXsubs}= DeriveSubstitutions[lag,EFTOrder->eftOrder];*) (* OLD version *)
				{$XFieldDofs,$XOrders,$XOrdMin,$Xsubs,$Msubs} = DeriveSubstitutions[lag,EFTOrder->eftOrder];
			, "Evaluating X-terms"];
		];
	];
	
	lag
];


(* ::Subsubsection::Closed:: *)
(*Determine Fields and Masses*)


(* ::Text:: *)
(*Define  the  function  $currentFieldAssociation[]  which  works  similar  to  GetFields[], but  containing  the  definitions  specific  to  the  current  Lagrangian . Furthermore, light  masses  are  treated  as  interactions  and  thus  for  a  light  but  massive  field  \[Phi]  we  have  Mass -> 0  in  $currentFieldAssociation[\[Phi]], contrary  to  GetFields[\[Phi]]*)


Options@ Determine$currentFieldAssociation= {"Renormalization"->False};


Determine$currentFieldAssociation[lagrangian_, OptionsPattern[]]:=Module[
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
			field -> DetermineFieldProperties[field, \[ScriptCapitalL]Mass/.Except[Field[field,___], _Field]->0, "Renormalization"->OptionValue["Renormalization"]]
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


Options@ DetermineFieldProperties= {"Renormalization"->False};


DetermineFieldProperties[l_, massterm_, OptionsPattern[]]:=Module[
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
		Heavy         -> If[OptionValue["Renormalization"], False, heavy]
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


(* ::Subsubsection:: *)
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


(* ::Subsection:: *)
(*Loop match*)


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


(* ::Text:: *)
(*To determine all the kinds of power type tracers labelled by their propagator types*)


ListPowerTypeTraces[{order_Integer}, opt___]:= ListPowerTypeTraces[order, opt];


ListPowerTypeTraces[order_Integer, lightOnly_:False]:= Module[{possibilities, seed, temp, Xords},
	Xords= $XOrdMin (*$currentXdims*);

	(*Recursively determines candidates for traces with order \[LessEqual] order*)
	possibilities= Flatten[Last@ Reap[
		(*Determines whether to only consider light traces or traces with at least one heavy field*)
		If[lightOnly,
			seed= Sow@ {{lScalar}, {lFermion}, {lVector}};
			While[(Length@ seed> 0),
				temp= Flatten/@ Tuples[{seed, {lScalar, lFermion, lVector}}];
				seed= Sow@ DeleteCases[temp, _? (Total[Min/@ BlockMap[Xords, #, 2, 1]]>= order&), {1}];
			];
		,
			seed= Sow@ {{hScalar}, {hFermion}, {hVector}, {hGhost}};
			While[(Length@ seed> 0),
				temp= Flatten/@ Tuples[{seed, {hScalar, lScalar, hFermion, lFermion, hVector, lVector, hGhost, lGhost}}];
				seed= Sow@ DeleteCases[temp, _? (Total[Min/@ BlockMap[Xords, #, 2, 1]]>= order&), {1}];
			];
		];
	], 2];

	(*Eliminates traces with order > order*)
	possibilities= DeleteCases[possibilities,
		_? (Total[Min/@ BlockMap[Xords, #, 2, 1]]+ Min@ Xords@ #[[{-1, 1}]] > order&), {1}];

	(*Delete duplicates under cyclic permutations*)
	DeleteDuplicatesBy[possibilities, (First@ Sort@ NestList[RotateLeft, #, Length@# - 1] &)]
];


(* ::Subsubsection:: *)
(*All one-loop contributions*)


(* ::Text:: *)
(*The full 1-loop matching function evaluating all log- and power-type traces relevant to the Lagrangian.*)


Options[LoopMatch]= {
	EFTOrder -> 6,
	Verbose -> True
	};


LoopMatch[opt:OptionsPattern[]]? OptionsCheck:= Module[
		{field, fields, out, powerTraces, i=0},
	out= OptionalMonitor[OptionValue@ Verbose,
			Sum[
				(*Check if a field with non zero charges exists*)
				If[Or[
					Length@ GetFieldsByProperty[Sequence@@ Normal@ $FieldTypes@ field, Charges-> {__}] > 0,
					Length@ GetFieldsByProperty[Sequence@@ Normal@ $FieldTypes@ field,
						Indices-> inds_/; IntersectingQ[GroupFromRep/@ inds, Keys@ $GaugeGroups]] > 0
				],
					LogTypeSTr[field, OptionValue@ EFTOrder]
				,
					0
				]
			, {field, {hScalar, hFermion, hVector, hGhost}}]
		, StringForm["Evaluating log-type supertrace: `1`", field/. fieldFormat] ];

	powerTraces= ListPowerTypeTraces[OptionValue@ EFTOrder];

	out+= OptionalMonitor[OptionValue@ Verbose,
			Sum[i++;
				Sow@ StringReplace[ToString@fields,{", " -> "-", "{" -> "", "}" -> "", "Matchete`PackageScope`" -> ""}];
				Sow@ PowerTypeSTr[fields, OptionValue@ EFTOrder,
					Sequence@@ FilterRules[{opt}, Options@ PowerTypeSTr] ]
			, {fields, powerTraces}]
		, StringForm["Evaluating power-type supertrace: `1` \t (`2` / `3`)",
			fields/. fieldFormat, i, Length@ powerTraces] ];

	out
];


fieldFormat= {hScalar-> "\[CapitalPhi]", lScalar-> "\[Phi]", hFermion-> "\[CapitalPsi]", lFermion-> "\[Psi]", hVector-> "V", lVector-> "A", lGhost-> "cA", hGhost-> "cV"};


(* ::Subsection::Closed:: *)
(*Routine for specific covariant loops*)


(* ::Text:: *)
(*The user function for computing specific supertrace contributions by specifying the internal fields. *)


CovariantLoop::ukwnfld= "The field(s) `1` is not part of the Lagrangian."
CovariantLoop::noheavy= "There are no heavy fields in the loop."


Options@ CovariantLoop= {
		EFTOrder:> 6
	};


CovariantLoop[lag_, field_Symbol, opts:OptionsPattern[]]:= CovariantLoop[lag, {field}, opts];


CovariantLoop[lagrangian_, fields_List, opts:OptionsPattern[]]? OptionsCheck:=
CovariantLoop[lagrangian, fields, opts]= Module[{lag=lagrangian, lagFields, n, types, dofNumbers, ord, out},
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

	(*Add log type STr*)
	out= If[Length@ fields === 1,
			LogTypeSTr[First@ types, ord, Fields-> fields]
		,
			0
		];
	
	out+ PowerTypeSTr[types, ord, Fields-> fields]//ContractCGs//MatchReduce
];


FieldType[f_]:= Switch[Lookup[GetFields[f], {Type, Heavy}]
	,{Scalar, True}, hScalar
	,{Scalar, False}, lScalar
	,{Fermion, True}, hFermion
	,{Fermion, False}, lFermion
	,{Vector, True}, hVector
	,{Vector, False}, lVector
	,{Ghost, True}, hGhost
	,{Ghost, False}, lGhost
];


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
		LagrangianEFT1,
		ReplaceHeavyEOMOpts = Sequence@@FilterRules[{opts},Options[ReplaceHeavyEOM]],
		VerboseOption = (OptionValue@Verbose===Print||OptionValue@Verbose===Monitor),
		traceResults,
		time
	},

	(*
	(*Check Lagrangian*)
	If[!CheckLagrangian@ lagrangian,
		Abort[];
	];
	*)
	
	time= First@ Timing[
	
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
				traceResults= Reap[
					LagrangianEFT1 = LoopMatch[EFTOrder->eftOrder,Verbose->VerboseOption];
				][[2,1]];
				LagrangianEFT1
			, "Matching at 1-loop level..."]
		, 0];

	LagrangianEFT= LagrangianEFT//ContractCGs//MatchReduce;
	];

	(* This is only performed if the result of the matching should be saved for validation *)
	If[$ValidationRun,
		QuietEcho@ SaveValidationResults[traceResults, LagrangianEFT, time, lag];
	];

	LagrangianEFT
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



(* ::Section:: *)
(*Validation*)


(* ::Subsection::Closed:: *)
(*Functionality for the validation of the code*)


(* If True, the Match routine writes its results to an internal database *)
$ValidationRun= False;


(* If True, the results of Match that are saved replace the previous results used for comparisson *)
$UpdateValidationResults= False;


(* ::Text:: *)
(*Function to activate the validation mode*)


ActivateValidationMode[str_String, reset_:False]:=Module[{},
	$ValidationRun= True;
	$UpdateValidationResults= reset;
	$ValidationModelName= str;
];


(* ::Text:: *)
(*Function calling the validation module*)


ValidateCurrentVersion[]:= Get@ FileNameJoin[{$MatchetePath, "Validation", "Validation.m"}]


(* ::Text:: *)
(*Function to update the matching results used for the validation*)


UpdateValidation[]:= Get@ FileNameJoin[{$MatchetePath, "Validation", "UpdateValidation.m"}]


(* ::Subsection::Closed:: *)
(*Routine to save the matching result for later comparison*)


(* ::Text:: *)
(*Function that writes the matching results to an internal database*)


SaveValidationResults[strResults_, LagrangianEFT_, time_, lag_]:= Module[{traceResults=strResults, Loff, tGreensSimplify, Lon, tEOMSimplify},
		(* transform results of individual traces to a rule *)
		traceResults= Apply[Rule, Partition[traceResults,2], {1}];
		(* simplify all traces *)
		traceResults= traceResults /. {(Rule[a_,b_]:>Rule[a,b//ContractCGs//MatchReduce//GreensSimplify])};
		traceResults= Association@@ traceResults;
		
		(* simplify Lagrangian and save the computation time *)
		{tGreensSimplify, Loff} = Timing[GreensSimplify[LagrangianEFT]];
		{tEOMSimplify, Lon}     = Timing[EOMSimplify[LagrangianEFT]];
		
		(* save all relevant information to an internal directory *)
		SaveForComparison[<|
			"Model"                    -> $ValidationModelName,
			"Version"                  -> Global`$MatcheteVersion,
			"Date"                     -> Today,
			"Time (Match)"             -> time,
			"Time (GreensSimplify)"    -> tGreensSimplify,
			"Time (EOMSimplify)"       -> tEOMSimplify,
			"UV Lagrangian"            -> lag,
			"Off-shell EFT Lagrangian" -> Loff,
			"On-shell EFT Lagrangian"  -> ReplaceEffectiveCouplings[Lon],
			"SuperTraces"              -> traceResults
		|>];
		
		(* end the validation run mode *)
		$UpdateValidationResults= False;
		$ValidationRun= False;
]


SaveForComparison[expr_Association]:=Module[
	{aux= If[$UpdateValidationResults, "previous", "current"]},
	Export[FileNameJoin@{$MatchetePath, "Validation", "MatchingResults", aux, ToString[expr["Model"]]<>"-EFT.m"}, expr];
];
