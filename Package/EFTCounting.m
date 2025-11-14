(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`EFTCounting`*)


(* ::Subtitle:: *)
(*Various methods for handling the EFT expansion and dimension counting *)


(* ::Chapter:: *)
(*Public:*)


(* ::Section:: *)
(*Scoping:*)


(* ::Subsubsection::Closed:: *)
(*Exported*)


PackageExport["SeriesEFT"]
PackageExport["EFTOrder"]


(* ::Subsubsection::Closed:: *)
(*Internal*)


PackageScope["OperatorDimension"]
PackageScope["TypeDim"]


PackageScope["TruncateOperator"]


(* ::Section:: *)
(*Usage definitions*)


(* ::Subsubsection::Closed:: *)
(*Exported*)


SeriesEFT::usage= "SeriesEFT[expr, EFTOrder -> 6] truncates the expression expr in the EFT power counting at the mass-dimension specified by the option EFTOrder (6 by default). The EFTOrder can be given as n, to return the expansion up to mass dimension n, or {n} to return exclusively the terms of order exactly n.";
EFTOrder::usage= "EFTOrder is an option for various routines specifying the targeted order in power-counting, as well as defining the power-counting of couplings.";


(* ::Subsubsection::Closed:: *)
(*Internal*)


OperatorDimension::usage = "OperatorDimension[op] returns the mass-dimension of the operator op.";


(* ::Chapter:: *)
(*Private:*)


(* ::Subsection:: *)
(*Dimensionality of an operator*)


(* ::Text:: *)
(*Gives the (minimal) dimension of a (list/sum of) operator(s). *)
(*	<heavyDim> = True indicates that the heavy field gets an extra dimension (minimal from EOM solution).*)
(*	<heavyDim> = False indicates that the canonical dimension is used for heavy fields.*)


OperatorDimension[expr_, heavyDim_:True]:= Block[{},
	$heavyFieldDim= heavyDim; (*Flag that's only used in FieldDimension*)
	OperatorDimensionInternal@ expr
];


(* ::Text:: *)
(*Internal function threading over Operator, List and Plus*)


OperatorDimensionInternal[x_Operator] := OperatorDimensionInternal[OperatorToNormalForm@ x];
OperatorDimensionInternal[c_ x_Operator] := OperatorDimensionInternal[c] + OperatorDimensionInternal[OperatorToNormalForm@ x];


OperatorDimensionInternal[0]= 100;
OperatorDimensionInternal[expr_Plus]:= Min[OperatorDimensionInternal/@ (List@@ expr)];
OperatorDimensionInternal[expr_List]:= Min[OperatorDimensionInternal/@ expr];


OperatorDimensionInternal[op_]:= Module[{dim, expr = RemovePower@op},
	(*Dimensions of all fields and FSs*)
	dim = Plus@@ Cases[expr, f:(_Field|_FieldStrength):> FieldDimension@ f, All];
	(*Dimensions of couplings: Only EFTOrder-0 coouplings can appear in denomminator*)
	dim += Plus@@ Cases[expr, Coupling[_,_,n_]-> n, All];
	
	dim
]


(* ::Text:: *)
(*Counting rule for IR fields*)


FieldDimension[Field[f:Except[List[___]], type_, _, derivs_List]]:=
	Length[derivs] + TypeDim[type] + If[$heavyFieldDim && GetFieldsUpdated[f, Heavy], 1, 0]; (* heavy fields have at least one suppression factor*)


(* ::Text:: *)
(*Counting rule for expanded UV fields*)


FieldDimension[Field[{_,n_,___}, type_, _, derivs_List]]:= n + Length[derivs] + TypeDim[type];


(* ::Text:: *)
(*Counting rule for FieldStrengthTensors fields*)


FieldDimension[FieldStrength[f_, _, _, derivs_List]]:= Length[derivs] + 2;


(* ::Subsubsection::Closed:: *)
(*TypeDim*)


(* ::Text:: *)
(*Dimension for field types*)


TypeDim[Scalar|Vector[_]|Ghost|AntiGhost]= 1;
TypeDim[Fermion]= 3/2;


TypeDim[Field[_,type_,___]]:= TypeDim@ type;


(* ::Subsection:: *)
(*SeriesEFT*)


(* ::Subsubsection::Closed:: *)
(*Operator truncation functions*)


TruncateOperator[op_, dim_]:= If[OperatorDimension[op] > dim, 0, op]


TruncateOperatorExact[op_, dim_]:= If[OperatorDimension[op] === dim, op, 0]


(* ::Subsubsection::Closed:: *)
(*SeriesEFT*)


(* ::Text:: *)
(*SeriesEFT truncates an expression at the desired EFT-order. Supports exclusive with {<order>} option*)


SeriesEFT::notarationale = "The order for the EFT series expansion specified `1` is neither an integer nor a rationale.";


Options[SeriesEFT]= {EFTOrder-> 6};


SeriesEFT[arg_, OptionsPattern[]]:= Module[
	{
		order= OptionValue[EFTOrder],
		expr= LagrangianExpand[arg],
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
	result
]
