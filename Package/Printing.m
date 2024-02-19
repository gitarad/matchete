(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`Printing`*)


(* ::Subtitle:: *)
(*Sub package providing the printing routine NiceForm.*)


(* ::Chapter:: *)
(*Public:*)


(* ::Section:: *)
(*Scoping*)


PackageImport["GroupMagic`"]


(* ::Subsection::Closed:: *)
(*Exported*)


PackageExport["NiceForm"]
PackageExport["$PrintIndexLabels"]


(* ::Subsection::Closed:: *)
(*Internal*)


PackageScope["UpDownIndices"]


(* ::Section:: *)
(*Usage messages*)


(* ::Subsection::Closed:: *)
(*Exported*)


NiceForm::usage          = "NiceForm[expr] prints the expression expr in a human readable form.";
$PrintIndexLabels::usage = "$PrintIndexLabels=True|False determines whether to print the representation of indices as subscripts. It is set to False by default.";


(* ::Subsection::Closed:: *)
(*Internal*)


UpDownIndices::usage = "UpDownIndices[label,indices] prints the label with regular indices as superindices and barred indices as subindices.";


(* ::Chapter:: *)
(*Private:*)


(* turn off an error when calling Definition[...] *)
Off[ParentForm::deflt];


(* ::Section::Closed:: *)
(*Definition of Format*)


(* ::Text:: *)
(*Inherit from StandardForm*)


ParentForm[NiceForm]^=StandardForm;


(* ::Text:: *)
(*Add to list of allowed BoxForms*)


AppendTo[$BoxForms,NiceForm];


(* ::Text:: *)
(*Allow printing in NiceForm*)


NiceForm /: Print[A___, NiceForm[arg_], B___] := Print[A, Format[arg,NiceForm], B]


(* ::Text:: *)
(*Allow Echo@NiceForm[...]*)


NiceForm/:Echo[NiceForm[arg_]]:=Echo@Format[arg,NiceForm]


(* ::Text:: *)
(*Allow EchoFunction[NiceForm][...]*)


NiceForm/:EchoFunction[NiceForm]:=(Echo@NiceForm[#];#)&;


(* ::Text:: *)
(*Allow Message[NiceForm[...]]*)


NiceForm/:Message[msg_,NiceForm[arg_]]:=Message[msg,Format[arg,NiceForm]];


(* ::Section:: *)
(*General printing rules*)


SubscriptStyle@ x_:= Style[x, FontSize-> 12];


(* ::Text:: *)
(*Remove Skeletons from arguments given to Message function*)


Unset[$MessagePrePrint]


(* ::Subsection::Closed:: *)
(*Plus*)


(* Definition of how sums are displayed *)
NiceForm/:MakeBoxes[a_Plus,NiceForm]:=Module[
	{
		terms=List@@a,
		rowBox={},
		startFlag=True
	}
	,
	(* sort the factors of Times *)
	terms = SortPlus[terms];
	(* Add minus sign where appropriate *)
	Do[
		If[startFlag,
			(* First term *)
			startFlag=False;
			(* First term in the sum does not get a sign if positive *)
			If[MinusSignQ[term],
				AppendTo[rowBox,"-"];
				term=-term
			]
			,
			(* Later terms *)
			If[MinusSignQ[term],
				AppendTo[rowBox,"-"];
				term=-term
				,
				AppendTo[rowBox,"+"]
			];
		];
		(* Apply MakeBoxes to the term *)
		With[{x=term},
			AppendTo[rowBox,MakeBoxes[x,NiceForm]]
		]
		,
		{term,terms}
	];
	(* Display as RowBox *)
	FormBox[RowBox[rowBox],StandardForm]
]


(* ::Subsubsection::Closed:: *)
(*Sign*)


NiceForm::sign="The sign of a term could not be detected.";


(* Returns true (false) if the argument contains a (no) Minus sign *)
MinusSignQ[arg_Times]:=Module[
	{
		factors=List@@arg,
		sign=1
	}
	,
	Do[
		(* for each negative number multiply by -1 *)
		If[NumberQ[x],
			If[Im[x]==0,
				(* for real numbers *)
				sign*=Sign[x]
				,
				(* for complex numbers *)
				If[Re[x]==0,
					(* for imaginary numbers *)
					sign*=Sign@Im[x]
					,
					(* if not zero, take the sign of the real part for complex numbers *)
					sign*=Sign@Re[x]
				]
			];
		]
		,
		{x, factors}
	];
	Switch[sign,
		1,Return[False],
		-1,Return[True],
		_,Message[NiceForm::sign]
	]
]


MinusSignQ[x:Except[Times]]:=False


(* ::Subsection::Closed:: *)
(*SortingFunctionPlus*)


SortPlus[terms_]:=Module[
	{
		constants={},
		tadpoles={},
		propagators={},
		marginal={},
		remainingTerms,
		maxEFTdimension,
		eftOperators={}
	}
	,
	(* find all terms with no fields *)
	Do[
		If[CountFields[term]==0,AppendTo[constants,term]]
		,
		{term,terms}
	];
	remainingTerms=Complement[terms,constants];
	
	(* find all terms with one fields *)
	Do[
		If[CountFields[term]==1,AppendTo[tadpoles,term]]
		,
		{term,remainingTerms}
	];
	remainingTerms=Complement[remainingTerms,tadpoles];
	
	(* find all terms with two fields *)
	propagators=FindPropagators[remainingTerms];
	remainingTerms=Complement[remainingTerms,propagators];
	
	(* marginal interactions *)
	marginal=FindMarginalInteractions[remainingTerms];
	remainingTerms=Complement[remainingTerms,marginal];
	marginal=SortInteractions[marginal];
	
	(* EFT operators *)
	(* find maximum EFT dimension *)
	maxEFTdimension=If[Length[remainingTerms]==0,
		4,
		Max[MaxDim/@remainingTerms]
	];
	(* find EFT operators at all orders *)
	Do[
		Module[{aux=FindEFTOperators[remainingTerms,dim]},
			remainingTerms=Complement[remainingTerms,aux];
			aux=SortInteractions[aux];
			AppendTo[eftOperators,aux];
		]
		,
		{dim,5,maxEFTdimension}
	];
	eftOperators=Flatten[eftOperators];
	
	(* return the sorted list *)
	Return[Flatten@Join[constants,tadpoles,propagators,marginal,eftOperators,remainingTerms]]
]


(* ::Subsubsection:: *)
(*Auxiliary functionality*)


(* counts the number of covariand derivatives acting on fields *)
CountCD[expr_]:=Module[
	{term=RemovePower[expr]},
	Plus@@Cases[term,Field[_,_,_,cds_List]:>Length[cds],All]+Plus@@Cases[term,FieldStrength[_,_,_,cds_List]:>Length[cds],All]
]


(* counts the number of fields and field-strength tensors *)
CountFields[expr_]:=Module[
	{term=RemovePower[expr]},
	Plus@@Cases[term,Field[___]:>1,All]+Plus@@Cases[term,FieldStrength[___]:>1,All]
]


(* Function that returns the field type *)
GetFieldTypes[expr_]:=Module[
	{term=RemovePower[expr]},
	First[
		Cases[term,Field[_,type_,___]:>type,All],
		First[Cases[term,FieldStrength[___]:>FieldStrength,All],None]
	]
]


(* returns the field content of an expression *)
GetFieldContent[arg_]:=Module[
	{expr=RemovePower[arg]}
	,
	Flatten@Join[
		Cases[expr,Field[l_,t_,___]:>Field[l,t,___],All],
		Cases[expr,FieldStrength[l_,___]:>FieldStrength[l,___],All]
	]
]


(* Returns the spin type of the fields in expr *)
GetFieldSpin[expr_]:=Flatten@Join[
	Cases[expr,Field[_,t_,___]:>t,All],
	Cases[expr,FieldStrength[l_,___]:>FieldStrength,All]
]/.Vector[_]->Vector


(* returns the maximum dimension of operators in term *)
MaxDim[term_]:=If[FreeQ[term,Plus],
	OperatorDimension[term],
	Max[OperatorDimension/@(List@@BetterExpand[term])]
]


(* returns the minimum dimension of operators in term *)
MinDim[term_]:=If[FreeQ[term,Plus],
	OperatorDimension[term],
	Min[OperatorDimension/@(List@@BetterExpand[term])]
]


(* ::Subsubsection:: *)
(*Find kinetic and mass terms*)


FindPropagators[expr_]:=Module[
	{
		terms=expr,
		kineticTerms={},
		remainingTerms,
		propagatorTerms={},
		unknwonTwoFieldTerms={}
	}
	,
	(* Find all kinetic terms *)
	Do[
		If[KineticQ[term],
			AppendTo[kineticTerms,term]
		]
		,
		{term,terms}
	];
	(* sort the kinetic terms *)
	kineticTerms=SortBy[kineticTerms,KineticSortingFunction[#]&];
	
	(* find all remaining terms *)
	remainingTerms=Complement[terms,kineticTerms];
	(* for each kinetic term find the corresponding mass terms *)
	Do[
		AppendTo[propagatorTerms,FindMassTerm[term,remainingTerms]];
		propagatorTerms=Flatten[propagatorTerms];
		remainingTerms=Complement[remainingTerms,propagatorTerms]
		,
		{term,kineticTerms}
	];
	
	(* Add all remaining terms with two fields at the end *)
	Do[
		If[CountFields[term]==2,AppendTo[unknwonTwoFieldTerms,term]],
		{term,remainingTerms}
	];
	
	(* Return all operators contributing to the two point function *)
	Flatten[Join[propagatorTerms,unknwonTwoFieldTerms]]
]


(* Returns True if expr is a kinetic term and False otherwise *)
KineticQ[expr_]:=Module[
	{
		nFields=CountFields[expr],
		type,
		nCD
	}
	,
	If[nFields!=2,
		(* If there are not exactly 2 fields return False *)
		Return[False]
		,
		(* If there are exatly 2 fields *)
		type=GetFieldTypes[expr];
		nCD=CountCD[expr];
		(* whether expr is kinetic term depends on the number of derivatives *)
		Switch[type,
			Scalar,If[nCD==2,Return[True],Return[False]],
			FieldStrength,If[nCD==0,Return[True],Return[False]],
			Fermion,If[nCD==1,Return[True],Return[False]],
			None,Return[False],
			_,Return[False]
		]
	]
]


(* ::Text:: *)
(*The function below might not yet find correctly the mass term for heavy vector fields.*)


(* finds the mass term belonging to kinTerm in the list of terms *)
FindMassTerm[kinTerm_,terms_]:=Module[
	{
		fieldContent=GetFieldContent[kinTerm],
		massTerms={kinTerm}
	}
	,
	(* find all terms with two fields *)
	Do[
		If[CountFields[term]==2 && CountCD[term]==0,
			If[MatchQ[GetFieldContent[term],fieldContent],
				AppendTo[massTerms,term]
			]
		]
		,
		{term,terms}
	];
	Return[massTerms]
]


(* This functino assigns a weight to the kinetic term given as argument which can be used to sort all kinetic terms *)
KineticSortingFunction[term_]:=Module[
	{
		fieldContent=GetFieldContent[term],
		fsTerms={},
		scalarTerms={},
		fermionTerms={},
		weight=100000
	}
	,
	(* assign weight according to field type *)
	Switch[fieldContent,
		{FieldStrength[___],FieldStrength[___]},weight=1000,
		{Field[_,_Vector,___],Field[_,_Vector,___]},weight=2000,
		{Field[_,Scalar,___],Field[_,Scalar,___]},weight=3000,
		{Field[_,Fermion,___],Field[_,Fermion,___]},weight=4000
		
	];
	(* If both fields do not match increase weight *)
	If[!MatchQ@@fieldContent,
		weight+=900
	];
	
	Return[weight]
]


(*Sorting interactions*)


FindMarginalInteractions[terms_]:=Module[
	{inertactions={}}
	,
	Do[
		If[MinDim[term]<=4,
			AppendTo[inertactions,term]
		]
		,
		{term,terms}
	];
	Return[inertactions]
]


(* Finds all EFT operators of dimension dim in terms *)
FindEFTOperators[terms_,dim_]:=Module[
	{operators={}}
	,
	Do[
		If[MinDim[term]==dim,
			AppendTo[operators,term]
		]
		,
		{term,terms}
	];
	Return[operators]
]


(* sorts the given interactions by field content *)
SortInteractions[interactionTerms_List]:=Module[
	{
		terms,
		pureGauge={},
		pureVector={},
		pureScalar={},
		mixGaugeVector={},
		mixGaugeScalar={},
		mixVectorScalar={},
		mixGaugeVectorScalar={},
		mixFermionGauge={},
		mixFermionVector={},
		mixFermionGaugeVector={},
		mixFermionScalar={},
		mixFermionGaugeVectorScalar={},
		pureFermion={},
		remainder={},
		aux
	}
	,
	Do[
		aux=DeleteDuplicates@GetFieldSpin[term];
		Switch[aux,
			{FieldStrength},
				AppendTo[pureGauge,term],
			{Vector},
				AppendTo[pureVector,term],
			{Scalar},
				AppendTo[pureScalar,term],
			{OrderlessPatternSequence[FieldStrength,Vector]},
				AppendTo[mixGaugeVector,term],
			{OrderlessPatternSequence[FieldStrength,Scalar]},
				AppendTo[mixGaugeScalar,term],
			{OrderlessPatternSequence[Scalar,Vector]},
				AppendTo[mixVectorScalar,term],
			{OrderlessPatternSequence[FieldStrength,Vector,Scalar]},
				AppendTo[mixGaugeVectorScalar,term],
			{OrderlessPatternSequence[Fermion,FieldStrength]},
				AppendTo[mixFermionGauge,term],
			{OrderlessPatternSequence[Fermion,Vector]},
				AppendTo[mixFermionVector,term],
			{OrderlessPatternSequence[Fermion,FieldStrength,Vector]},
				AppendTo[mixFermionGaugeVector,term],
			{OrderlessPatternSequence[Fermion,Scalar]},
				AppendTo[mixFermionScalar,term],
			{OrderlessPatternSequence[Fermion,FieldStrength,Vector,Scalar]},
				AppendTo[mixFermionGaugeVectorScalar,term],
			{OrderlessPatternSequence[Fermion,FieldStrength,Scalar]},
				AppendTo[mixFermionGaugeVectorScalar,term],
			{OrderlessPatternSequence[Fermion,Vector,Scalar]},
				AppendTo[mixFermionGaugeVectorScalar,term],
			{Fermion},
				AppendTo[pureFermion,term],
			_,
				AppendTo[remainder,term]
		]
		,
		{term,interactionTerms}
	];
	(* sort each category by number of CDs then combine everything *)
	Flatten@Join[SortByCD/@{
		pureGauge,pureVector,pureScalar,
		mixGaugeVector,mixGaugeScalar,mixVectorScalar,mixGaugeVectorScalar,
		mixFermionGauge,mixFermionVector,mixFermionGaugeVector,
		mixFermionScalar,mixFermionGaugeVectorScalar,pureFermion,remainder
	}]
]


(* Sorts given terms by number of derivatives *)
SortByCD[terms_List]:=Module[
	{tab,res}
	,
	(* return empty list if emtpy list is given as argument *)
	If[Length[terms]==0,Return[{}]];
	(* count CDs for each term *)
	tab=Table[
		{term,CountCD[term]}
		,
		{term,terms}
	];
	(* Create empty table with length given by the maximum number of derivatives *)
	res=Table[{},{i,0,Max[tab[[;;,2]]]}];
	(* Sort terms according to number of derivatives *)
	Do[
		AppendTo[res[[Last[term]+1]],First@term]
		,
		{term,tab}
	];
	Return@Flatten[res]
]


(* ::Subsection::Closed:: *)
(*Times*)


(* Determines how products are printed *)
NiceForm/:MakeBoxes[a_Times,NiceForm]:=Module[
	{
		product=List@@a,
		rowBox={},
		startFlag=True,
		minusFlag=False
	}
	,
	(* check if this term is negative *)
	If[MinusSignQ[a],
		minusFlag=True;
		If[Head[-a]===Times,
			product=Flatten[{List@@(-a)}],
			product=Flatten[{-a}]
		];
	];
	
	(* sort the factors of Times *)
	product = SortBy[product, SortingFunctionTimes[#]&];
	
	(* prepend minus sign if necessary *)
	If[minusFlag,
		PrependTo[rowBox,"-"];
	];
	
	(* do further sorting of the products *)
	Do[
		(* append whitespace if not first factor *)
		If[!startFlag,
			AppendTo[rowBox," "]
		];
		(* Apply MakeBoxes to each factor *)
		With[{x=factor},
			If[Head[x]===Plus,
				AppendTo[rowBox, " "];
				AppendTo[
					rowBox, FormBox[
						StyleBox[
							RowBox[{"(",MakeBoxes[x,NiceForm],")"}],
							SpanSymmetric->False
						],
						StandardForm
					]
				]
				,
				AppendTo[rowBox,MakeBoxes[x,NiceForm]]
			];
		];
		,
		{factor,product}
	];
	FormBox[RowBox[rowBox],StandardForm]
]


(* ::Subsubsection::Closed:: *)
(*Sorting function for times*)


(* ::Text:: *)
(*This function determines the printing order of NiceForm in each Times[...]*)
(*ToDo: Add ClebschGordan coefficients*)


SortingFunctionTimes[x_] := Switch[x,
	(* numbers *)
	_Complex, 0,
	_?NumberQ, 1,
	(* symbols *)
	Bar[_Symbol],2,
	_Symbol, 2,
	Power[Bar[_Symbol],_], 3,
	Power[_Symbol,_], 3,
	(* couplings *)
	Bar[_Coupling], 4 + AlphabeticLabelOrder[First@First@x],
	_Coupling, 4 + AlphabeticLabelOrder[First@x],
	Power[Bar[_Coupling],_], 5 + AlphabeticLabelOrder[First@First@First@x],
	Power[_Coupling,_], 5 + AlphabeticLabelOrder[First@First@x],
	(* Plus *)
	_Plus, 6,
	(* Dirac product *)
	_DiracProduct, 7,
	(* - - - - - - fields - - - - - - *)
	(* scalars *)
	Bar@Field[_,Scalar,___], 8 + AlphabeticLabelOrder[First@First@x],
	Field[_,Scalar,___], 8 + AlphabeticLabelOrder[First@x],
	Power[Bar@Field[_,Scalar,___],_], 9 + AlphabeticLabelOrder[First@First@First@x],
	Power[Field[_,Scalar,___],_], 9 + AlphabeticLabelOrder[First@First@x],
	(* Vectors *)
	Bar@Field[_,_Vector,___], 10 + AlphabeticLabelOrder[First@First@x],
	Field[_,_Vector,___], 10 + AlphabeticLabelOrder[First@x],
	Power[Bar@Field[_,_Vector,___],_], 11 + AlphabeticLabelOrder[First@First@First@x],
	Power[Field[_,_Vector,___],_], 11 + AlphabeticLabelOrder[First@First@x],
	(* Field-Strength *)
	Bar[_FieldStrength], 12 + AlphabeticLabelOrder[First@First@x],
	_FieldStrength, 12 + AlphabeticLabelOrder[First@x],
	Power[Bar[_FieldStrength],_], 13 + AlphabeticLabelOrder[First@First@First@x],
	Power[_FieldStrength,_], 13 + AlphabeticLabelOrder[First@First@x],
	(* fermion spin-chains *)
	_NonCommutativeMultiply, 14,
	(* - - - - - - - - - - - - - *)
	(* unknown *)
	_, 100000
]


(* ::Subsubsection::Closed:: *)
(*Alphabetic order of a label*)


(* ::Text:: *)
(*This auxiliary function gives a number in [0,1] determining the alphabetic order of the given argument*)


AlphabeticLabelOrder[x_] := Module[
	{str=ToString[x],numbers,max=4}
	,
	(* transform to characters to numbers *)
	numbers = ToString/@ToCharacterCode[str];
	(* fill missing 0's such that each number has 'max=4' digits *)
	numbers = Table[
		If[(max-StringLength[number])>0,
			StringJoin@Flatten@Join[{number},ConstantArray["0",max-StringLength[number]]],
			number
		]
		,
		{number,numbers}
	];
	(* make decimal *)
	PrependTo[numbers,"0."];
	ToExpression@StringJoin[numbers]
]


(* ::Text:: *)
(*Options for StyleBox to change the Parenthesis.*)


(*SpanMaxSize*)(*SpanAdjustments*)(*SpanSymmetric*)


(* ::Subsection::Closed:: *)
(*NonCommutativeMultiply*)


(* ::Text:: *)
(*Multiple arguments*)


NiceForm/:MakeBoxes[x:NonCommutativeMultiply[_,__], NiceForm] := Module[
	{
		product=List@@x,
		rowBox={}
	}
	,
	(* put spin-chains in brackets *)
	AppendTo[rowBox, "("];
	(* print the arguments of NCM *)
	Do[
		With[{y=factor},
			If[Head[y]===Plus,
				AppendTo[rowBox, " "];
				AppendTo[
					rowBox, FormBox[
						StyleBox[
							RowBox[{"(",MakeBoxes[y,NiceForm],")"}],
							SpanSymmetric->False
						],
						StandardForm
					]
				]
				,
				AppendTo[rowBox,MakeBoxes[y,NiceForm]]
			];
		];
		(* merge the arguments with a \cdot *)
		AppendTo[rowBox,"\[CenterDot]"];
		,
		{factor, product}
	];
	(* remove the last \cdot and close brackets *)
	rowBox = Drop[rowBox,-1];
	AppendTo[rowBox,")"];
	
	(* return as StandardForm box *)
	FormBox[StyleBox[RowBox[rowBox],SpanSymmetric->False],StandardForm]
]


(* ::Text:: *)
(*Single Argument*)


Format[NonCommutativeMultiply[arg_], NiceForm]:= Format[arg,NiceForm];


(* ::Subsection::Closed:: *)
(*DiracProduct*)


NiceForm/:MakeBoxes[x_DiracProduct, NiceForm]:=
FormBox[
	RowBox@Map[
		MakeBoxes[#,NiceForm]&,
		List@@x
	],
	StandardForm
]


(* ::Subsection::Closed:: *)
(*Symbols*)


NiceForm/:MakeBoxes[a_Symbol, NiceForm]:=FormBox[RowBox[{ToString[a]}],StandardForm]


(* ::Subsection::Closed:: *)
(*Numbers*)


NiceForm/:MakeBoxes[a_?NumberQ, NiceForm]:=FormBox[MakeBoxes[a, StandardForm],StandardForm]


(* ::Subsection::Closed:: *)
(*Transpose*)


Format[Transp[x:Except[DiracProduct[_, __]]], NiceForm]:= Superscript[x, "T"];


Format[Transp[x:DiracProduct[_, __]], NiceForm]:= DisplayForm@Superscript[
	FormBox[
		StyleBox[
			RowBox[{"(", x, ")"}],
			SpanSymmetric->False
		],
		StandardForm
	],
	"T"
];


(* ::Section:: *)
(*Specific printing definitions*)


(* ::Subsection::Closed:: *)
(*DiracAlgebra*)


Format[Gamma5, NiceForm]:=Subscript[\[Gamma],5]

Format[GammaM[\[Mu]_], NiceForm]:=Subscript[\[Gamma],Format[\[Mu],NiceForm]]
Format[GammaM[\[Mu]_,\[Nu]__], NiceForm]:=Subscript["\[CapitalGamma]", DisplayForm@FormBox[RowBox[{\[Mu], \[Nu]}],NiceForm]]


Format[Proj[1], NiceForm]:= Subscript["P","R"];
Format[Proj[-1], NiceForm]:= Subscript["P","L"];
Format[GammaCC, NiceForm]:= "C";


(* ::Subsection::Closed:: *)
(*Fields*)


Format[Bar@Field[label_,type_,indices_,CDerivs_], NiceForm]:= Field[OverBar@label,type,Bar/@indices,CDerivs];


Format[Field[label_,Scalar|Fermion|Ghost,indices_,CDerivs_], NiceForm]:= 
	Switch[CDerivs,
		{}, UpDownIndices[label,indices],
		{__}, StandardForm@Row@ Flatten@ {Subscript[D, SubscriptStyle@ Format[#,NiceForm]]&/@ CDerivs//.{x___, Subscript[D, a_], Subscript[D, a_], y___}:> {x, D^2, y}, UpDownIndices[label,indices]},
		_Pattern, StandardForm@Row@ Flatten@ {Subscript[D, ToString@CDerivs], UpDownIndices[label,indices]},
		_, StandardForm@Row@ Flatten@ {Subscript[D, SubscriptStyle@ Format[CDerivs,NiceForm]], UpDownIndices[label,indices]}
	];


Format[Field[label_,Vector[\[Mu]_],indices_,CDerivs_], NiceForm]:=
	Switch[CDerivs,
		{}, UpDownIndices[label, Join[{Bar@\[Mu]},indices]],
		{__}, StandardForm@ Row@ Flatten@ {Subscript[D, SubscriptStyle@ Format[#,NiceForm]]&/@ CDerivs//.{x___, Subscript[D, a_], Subscript[D, a_], y___}:> {x, D^2, y}, UpDownIndices[label, Join[{Bar@\[Mu]},indices]]},
		_Pattern, StandardForm@ Row@ Flatten@ {Subscript[D, ToString[CDerivs]], UpDownIndices[label, Join[{Bar@\[Mu]},indices]]},
		_, StandardForm@ Row@ Flatten@ {Subscript[D, SubscriptStyle@ Format[CDerivs,NiceForm]], UpDownIndices[label, Join[{Bar@\[Mu]},indices]]}
	];


Format[FieldStrength[vectorlabel_,{\[Mu]_,\[Nu]_},indices_,CDerivs_], NiceForm]:=
	If[CDerivs=={},
		UpDownIndices[vectorlabel, Join[Bar/@{\[Mu],\[Nu]},indices]],
		StandardForm@ Row@ Flatten@ {Subscript[D, SubscriptStyle@ Format[#,NiceForm]]&/@ CDerivs//.{x___, Subscript[D, a_], Subscript[D, a_], y___}-> {x, D^2, y}, UpDownIndices[vectorlabel, Join[Bar/@{\[Mu],\[Nu]},indices]]}
	];


NiceForm/: MakeBoxes[Power[Field[args__,derivs_],n_], NiceForm]:=If[derivs==={},
	SuperscriptBox[MakeBoxes[Field[args,derivs],NiceForm],n],
	SuperscriptBox[
		FormBox[
			StyleBox[
				RowBox[{"(",MakeBoxes[Field[args,derivs],NiceForm],")"}],
				SpanSymmetric->False
			],
			StandardForm
		],
		n
	]
]


NiceForm/: MakeBoxes[Power[FieldStrength[args__,derivs_],n_], NiceForm]:=If[derivs==={},
	SuperscriptBox[MakeBoxes[FieldStrength[args,derivs],NiceForm],n],
	SuperscriptBox[
		FormBox[
			StyleBox[
				RowBox[{"(",MakeBoxes[FieldStrength[args,derivs],NiceForm],")"}],
				SpanSymmetric->False
			],
			StandardForm
		],
		n
	]
]


(* ::Subsection::Closed:: *)
(*Coupling*)


Format[Bar@ x_, NiceForm]:= OverBar@ x;


Format[Bar[Coupling[label_,indices_,order_]], NiceForm]:=UpDownIndices[OverBar@label,Bar/@indices]


Format[Coupling[label_,indices_,order_], NiceForm]:= UpDownIndices[label,indices];


(* ::Subsection::Closed:: *)
(*Clebsch Gordan coefficients*)


Format[CG[eps[label_],indices_], NiceForm]:= UpDownIndices["\[CurlyEpsilon]", indices];
Format[CG[Bar@eps[label_],indices_], NiceForm]:= UpDownIndices[OverBar@"\[CurlyEpsilon]", indices];
Format[CG[del[label_]|Bar@del[label_],indices_], NiceForm]:= UpDownIndices["\[Delta]", indices];
Format[CG[dSym[label_],indices_], NiceForm]:= UpDownIndices["d",indices];
Format[CG[fStruct[label_],indices_], NiceForm]:= UpDownIndices["f",indices];
Format[CG[gen[label_],indices_], NiceForm]:= UpDownIndices["T",indices];
Format[CG[Bar@gen[label_],indices_], NiceForm]:= UpDownIndices[OverBar@"T",indices];
Format[CG[Bar@label_,indices_], NiceForm]:=Format[CG[OverBar@label,indices], NiceForm];
Format[CG[label_,indices_], NiceForm]:= UpDownIndices[label,indices];


(* ::Subsection::Closed:: *)
(*Open covariant derivatives*)


Format[OpenCD[CDerivs:{Index[_,Lorentz]..}], NiceForm] := DisplayForm@ FormBox[ 
	StyleBox[
		RowBox@ Flatten@ List[
			"(",
			Table[Subscript[Overscript[D,"\[LongRightArrow]"], SubscriptStyle@ Format[ind,NiceForm]], {ind, CDerivs}]//.{x___, Subscript[Overscript[D,"\[LongRightArrow]"], a_], Subscript[Overscript[D,"\[LongRightArrow]"], a_], y___}:>{x, Overscript[D,"\[LongRightArrow]"]^2, y},
			(*"\[Delta]\[Eta]",*)
			")"
		]
		,
		SpanSymmetric->False
	]
	,
	StandardForm
]


(* ::Subsection::Closed:: *)
(*Metric, Delta & LCTensor*)


Format[Delta[ind__], NiceForm]:= UpDownIndices["\[Delta]",{ind}];


Format[Metric[\[Mu]__], NiceForm]:= UpDownIndices["g",Bar/@{\[Mu]}];


Format[LCTensor[\[Mu]__], NiceForm]:= UpDownIndices["\[CurlyEpsilon]",Bar/@{\[Mu]}];


(* ::Subsection::Closed:: *)
(*Indices*)


$PrintIndexLabels = False;


UpDownIndices[label_,indices_]:=
	Which[
		indices=={},
			StandardForm[label],
		Select[indices,Head[#]===Bar &]=={},
			Superscript[StandardForm@label, SubscriptStyle@ Row@ Map[Format[#,NiceForm]&, Select[indices,Head[#]=!=Bar &]]],
		Select[indices,Head[#]=!=Bar &]=={},
			Subscript[StandardForm@label, SubscriptStyle@ Row@ Map[Format[#,NiceForm]&, #[[1]]&/@Select[indices,Head[#]===Bar &]]],
		True, 
			Subsuperscript[StandardForm@label, Row@ Map[Format[#,NiceForm]&,#[[1]]&/@Select[indices,Head[#]===Bar &]],Row@ Map[Format[#,NiceForm]&, Select[indices,Head[#]=!=Bar &]]]
];


Format[Index[label_Pattern, rep_], NiceForm] := Module[{},
	Style[
		If[$PrintIndexLabels,
			(* print with rep label *)
			Superscript[ToString@ label,Style[ToString@ rep, Small]],
			(* print without rep label *)
			ToString@ label				
		],
		10
	]
]


Format[Index[label_, rep_], NiceForm]:=Module[
	{alphabet},
	(* Check if there is an alphabet defined for rep *)
	Style[
		If[MemberQ[Keys[$IndexAlphabets],rep],
			alphabet = $IndexAlphabets[rep];
			(* if alphabet is defined check if label is contained *)
			If[MemberQ[Keys@ alphabet, label],
					If[$PrintIndexLabels,
					(* print with rep label *)
					Superscript[alphabet@ label,Style[ToString@ rep, Small]],
					(* print without rep label *)
					alphabet@ label				
				]
				,
				If[$PrintIndexLabels,
					(* print with rep label *)
					Superscript[ToString@ label,Style[ToString@ rep, Small]],
					(* print without rep label *)
					ToString@ label				
				]
			]
			,
			(* if no alphabet is defined use the default *)
			If[MemberQ[Keys[$UndefinedIndexAlphabet],label],
				If[$PrintIndexLabels,
					(* print with rep label *)
					Superscript[$UndefinedIndexAlphabet@ label,Style[ToString@ rep, Small]],
					(* print without rep label *)
					$UndefinedIndexAlphabet@ label				
				]
				,
				If[$PrintIndexLabels,
					(* print with rep label *)
					Superscript[ToString@ label,Style[ToString@ rep, Small]],
					(* print without rep label *)
					ToString@ label				
				]
			]
		],
		10 (* font size for indices *)
	]
]


(* ::Subsection::Closed:: *)
(*Loops*)


Format[\[Mu]bar2, NiceForm]:= OverBar["\[Mu]"]^2;
Format[hbar, NiceForm]:="\[HBar]";
Format[LF[Masses_, powers_], NiceForm]:= Subscript[LF, Sequence@@ powers]@@ Masses;


(* ::Subsection::Closed:: *)
(*Simplifications*)


Format[HoldPattern@ Operator@ op__, NiceForm]:= Times@ op;
EquivalentChoice/:MakeBoxes[EquivalentChoice@ F_List,NiceForm]:=RowBox[{"(",GridBox[{MakeBoxes[#,NiceForm]&/@F}\[Transpose]],")"}];
Format[HcTerms[expr_], NiceForm]:= DisplayForm@RowBox[{"(",expr,"+", Style["H.c.", FontSize-> 14], ")"}]


(* ::Subsection::Closed:: *)
(*Evanescent operator*)


Format[EvaOp[label_,indices_], NiceForm]:= Subsuperscript["E",Format[label,NiceForm], SubscriptStyle@ Row@ Map[Format[#,NiceForm]&, indices]];


(* ::Subsection:: *)
(*Logarithms*)


NiceForm/:MakeBoxes[Log[Times[\[Mu]bar2,Power[a_,-2]]],NiceForm]:=FormBox[
RowBox[{
	Log,"[",
		FractionBox[
			MakeBoxes[\[Mu]bar2,NiceForm],
			MakeBoxes[Power[a,2],NiceForm]
		],
	"]"
}],StandardForm]


NiceForm/:MakeBoxes[Log[Times[Power[a_,2],Power[b_,-2]]],NiceForm]:=FormBox[
RowBox[{
	Log,"[",
		FractionBox[
			MakeBoxes[Power[a,2],NiceForm],
			MakeBoxes[Power[b,2],NiceForm]
		],
	"]"
}],StandardForm]
