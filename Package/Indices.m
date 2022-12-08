(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`Indices`*)


(* ::Subtitle:: *)
(*Short description of functions implemented in this file.*)


(* ::Chapter:: *)
(*Public:*)


(* ::Section:: *)
(*Scoping:*)


PackageImport["GroupMagic`"]


(* ::Subsection::Closed:: *)
(*Exported*)


PackageExport["Lorentz"]
PackageExport["LCTensor"]
PackageExport["\[ScriptD]"]


PackageExport["RelabelIndices"]


PackageExport["Contract"]
PackageExport["Delta"]
PackageExport["Metric"]


(* ::Subsection::Closed:: *)
(*Internal*)


PackageScope["ContractMetric"]
PackageScope["ContractDelta"]


PackageScope["FindDummyIndices"]
PackageScope["FindOpenIndices"]


PackageScope["RelabelIndicesInTerm"]


PackageScope["$LorentzAlphabetAssoc"]
PackageScope["$IndexAlphabetAssoc"]
PackageScope["BuildIndexAssoc"]
PackageScope["$IndexAlphabets"]
PackageScope["$UndefinedIndexAlphabet"]


PackageScope["RemovePower"]


PackageScope["DimRep"]


(* ::Section:: *)
(*Usage definitions*)


(* ::Subsection::Closed:: *)
(*Exported*)


Lorentz::usage  = "Index[\[Mu],Lorentz] specifies the index \[Mu] belongs to the Lorentz group.";
LCTensor::usage = "LCTensor[\[Mu],\[Nu],\[Rho],\[Sigma]] is the Levi-Civita tensor \!\(\*SuperscriptBox[\(\[Epsilon]\), \(\[Mu]\[Nu]\[Rho]\[Sigma]\)]\), defined by \!\(\*SuperscriptBox[\(\[Epsilon]\), \(0123\)]\)=+1.";
\[ScriptD]::usage        = "\[ScriptD] represents the space-time dimension.";


RelabelIndices::usage = "RelabelIndices[expr] relabels all repeated indices in expr in a canonical way.
RelabelIndices[expr,Unique->True] relabels all repeated indices in expr using unique labels, if Unique->False is specified canonical labels are used instead.";


Contract::usage = "Contract[expr] contracts all Delta[a,b] functions and Metric[\[Mu],\[Nu]] tensors in the expression expr.";
Delta::usage    = "Delta[Index[a,rep],Index[b,rep]] denotes the delta function for the indices a and b of the same representation.";
Metric::usage   = "Metric[\[Mu],\[Nu]] denotes the Lorentz metric tensor \!\(\*SubscriptBox[\(g\), \(\[Mu]\[Nu]\)]\).";


(* ::Subsection::Closed:: *)
(*Internal*)


ContractDelta::usage  = "ContractDelta[expr] contracts all Delta[a,b] functions in the expression expr.";
ContractMetric::usage = "ContractMetric[expr] contracts all Metric[\[Mu],\[Nu]] tensors in the expression expr.";


FindDummyIndices::usage = "FindDummyIndices[expr] returns a list of all repeated indices in expr, where expr must be a single Term.";
FindOpenIndices::usage  = "FindOpenIndices[expr] returns a list of all non-repeated indices in expr, where expr must be a single Term.";


RelabelIndicesInTerm::usage = "RelabelIndicesInTerm[expr] relabels all repeated indices with canonical labels in expr, where expr must be a single term. RelabelIndicesInTerm[expr,bool] relabels all repeated indices in expr, where expr must be a single term. If the argument bool is True unique labels are be given to the dummy indices, if bool is False canonical labels are given instead.";


$LorentzAlphabetAssoc::usage   = "Associantion with the alphabet for the Lorentz indices.";
$IndexAlphabetAssoc::usage     = "Associantion with the alphabet for all indices other than Lorentz.";
BuildIndexAssoc::usage         = "BuildIndexAssoc[alphList,n] builds an association of length n (default 20) with the index alphabet using the list of names alphList.";
$IndexAlphabets::usage         = "Association made of defined index alphabet associations.";
$UndefinedIndexAlphabet::usage = "Association made of undefined index alphabet associations.";


RemovePower::usage = "RemovePower[expr] expands out all powers and applies Hold to the result.";


DimRep::usage = "DimRep[rep] returns the dimension of the representation or flavor index 'rep'.";


(* ::Chapter:: *)
(*Private:*)


SetAttributes[Index,OneIdentity]


(* ::Subsubsection::Closed:: *)
(*Related to CG implementation*)


(* ::Text:: *)
(*Delta contractions do not distinguish between conjugated indices*)


Delta[Bar@ a_, b_]:= Delta[a, b];
Delta[a_, Bar@ b_]:= Delta[a, b];


(* ::Section::Closed:: *)
(*Formatting*)


(* ::Subsection::Closed:: *)
(*Flag determining whether to print the full index or short version*)


$PrintFullIndices = True;


(* ::Subsection::Closed:: *)
(*The default alphabets used for printing indices*)


$IndexAlphabet = CharacterRange["a", "z"];
$LorentzAlphabet = {"\[Mu]", "\[Nu]", "\[Rho]", "\[Sigma]","\[Kappa]"};


(* ::Subsection::Closed:: *)
(*Build up association for index printing alphabet*)


BuildIndexAssoc[alph_List,n_:20]:=Association@Table[
	Module[
		{
			auxx=QuotientRemainder[c-1,Length@alph],
			aux,
			auxR,
			dummyIndexLabels="Global`d$$"
		},
		aux=auxx[[1]];
		auxR=auxx[[2]];
		If[aux==0,
			ToExpression[dummyIndexLabels<>ToString[c]]->alph[[c]],
			ToExpression[dummyIndexLabels<>ToString[c]]->Subscript[ToString@alph[[auxR+1]],ToString[aux]]
		]
	],
	{c,n}
]


$IndexAlphabetAssoc = BuildIndexAssoc[$IndexAlphabet];
$LorentzAlphabetAssoc = BuildIndexAssoc[$LorentzAlphabet];


$IndexAlphabets=<|Lorentz->BuildIndexAssoc[$LorentzAlphabet]|>;


$UndefinedIndexAlphabet = BuildIndexAssoc[{"x","y","z"}];


(* ::Section:: *)
(*Dummy indices in any Expression*)


(* ::Subsection:: *)
(*Finding repeated indices (in single term)*)


(* ::Subsubsection::Closed:: *)
(*Auxiliary function to remove Power[_,n]*)


(* ::Text:: *)
(*Auxiliary function to remove powers in intermediate steps:*)


RemovePower[input_]:=Module[
	{
		(*negativePowers = {Power[x___,n_Integer] :> Module[{Prod},1/Hold[Evaluate[Prod@@Table[x,{ii,-n}]]]/.Prod->Times]/;n<0},*)
		positivePowers = {Power[x___,n_Integer] :> Module[{Prod},Hold[Evaluate[Prod@@Table[x,{ii,n}]]]/.Prod->Times]/;n>0},
		expr = (*Expand[input]*)input
	},
	(*expr = expr /. negativePowers;*)
	expr = expr /. positivePowers;

	(*Applying ReleaseHold[] to the returned expression would yield again the input.*)
	Return[expr]
]


(* ::Subsubsection::Closed:: *)
(*FindDummyIndices/FindOpenIndices*)


FindDummyIndices::sum="Head of argument is Plus. FindDummyIndices cannot be called on a sum, but only on a single term.";
FindDummyIndices::trippleindex="`1` is appearing more than twice.";


(* Function to find all dummy indices in a single term *)
FindDummyIndices[expression_]:=Module[
	{
		list={},
		pow,
		index,
		expr=Expand[expression]
	},

	(* Throw error when expr is not a single term*)
	If[Head[expr]===Plus,
		Message[FindDummyIndices::sum];
		Abort[]
	];

	(* Temporarly remove all powers, here we do not need a release hold afterwards *)
	expr=RemovePower[expr];
	
	(* ignore indices from diagonal couplings since these are not considered for the dummy index summation *)
	expr = expr /. Coupling[a:Alternatives@@($FieldAssociation[#][Mass] & /@ GetFieldsByProperty[Heavy -> True]),{Index[b_,rep_]},n_]:> Coupling[a,{index[b,rep]},n];

	(* list all indices and their multiplicity found in expr *)
	list = Tally[Cases[expr,Index[_,_],Infinity(*All*)]];

	(* throw error if there is a tripple index *)
	(*If[Or@@Map[(#>2)&,(list/.List[a_,b_Integer]:>b)],
		Message[FindDummyIndices::trippleindex];
		Abort[]
	];*)
	If[(#/.List[a_,b_Integer]:>b)>2,
		Message[FindDummyIndices::trippleindex, #/.List[a_,b_Integer]:>a];
		(*Print@NiceForm[expr];*)
		Abort[]
	]& /@list ;

	(* return all indices appearing twice *)
	Return[Cases[list,{x_,2}:>x]]
]


FindOpenIndices[expression_]:=Module[
	{
		expr=Expand[expression]
	 },
	 (* Throw error when expr is not a single term*)
	If[Head[expr]===Plus,
		Message[FindDummyIndices::sum];
		Abort[]
	];
	
	Complement[DeleteDuplicates@Cases[expr,_Index,Infinity], FindDummyIndices[expr]] 	 
]


(* ::Subsection::Closed:: *)
(*Relabel repeated indices (in single term)*)


RelabelIndicesInTerm::sum="Head of argument is Plus. RelabelIndicesInTerm cannot be called on a sum, but only on a single term.";


RelabelIndicesInTerm[expr_,unique_:False]:=Module[
	{
		ind,
		indexlist={},
		openInds,
		rule={},
		result
	},
	
	(* Check that expr is no sum *)
	If[Head[Expand@expr]===Plus,
		Message[RelabelIndicesInTerm::sum];
		Abort[]
	];
	
	(* Unique | canonical dummy index labels*)
	If[unique,
		(*True: unique dummy indices are required:*)
		Module[{},
			result = expr;
			(*Find dummy indices*)
			indexlist = FindDummyIndices[result];

			(*Find replacement rules*)
			rule = Cases[
				indexlist,
				Index[label_,type_]:>(Index[label,type]->Index[Unique["u"],type]),
				All
			];
		],

		(*False: canonically labled dummy indices are required:*)
		Module[{n},
			(*make dummy indices unique*)
			result = RelabelIndicesInTerm[expr,True];
			(*Find the new dummy indices*)
			indexlist = FindDummyIndices[result];
			openInds= Complement[DeleteDuplicates@ Cases[result, _Index, Infinity], indexlist];
									
			(*create a separate counter for every type of index*)
			Map[
				(n[#]=1)&,
				DeleteDuplicates@Cases[indexlist,Index[_,type_]:>type,All]
			];
			
			(*Find replacement rules*)
			(*The While loop ensures no duplicates labels with the open indices*)
			rule = Cases[
				indexlist,
				Index[label_,type_]:> Index[label,type]->
					(While[True, 
						If[!MemberQ[openInds, ind= Index[ToExpression["d$$"<>ToString[n[type]++]],type]], 
							Break[];
						]; ]; ind),
				All
			];
			
		]
	];

	(*apply rules*)
	Return[result/.rule]
]


(* ::Subsection::Closed:: *)
(*Relabel repeated indices (general)*)


Options[RelabelIndices] = {Expand->True, Unique->False};


(* ::Text:: *)
(*When relabeling dummy indices in a list or matrix*)


RelabelIndices[l_List, opt:OptionsPattern[]]:= RelabelIndices[#, opt]&/@l;


(* ::Text:: *)
(*Function that replaces all dummy indices in a consistent manner*)


(* Performance improvements for long expressions *)
RelabelIndices[expr_Plus, opt:OptionsPattern[]] := RelabelIndices[#, opt]&/@expr

(*Relabel indices on HcTerms*)
RelabelIndices[HcTerms[expr_], opt:OptionsPattern[]]:=HcTerms[RelabelIndices[expr, opt]];

(* Relabel dummy indices *)
RelabelIndices[expression:Except[_Plus], OptionsPattern[]]:=Module[
	{
		expr = expression,
		solution,
		(* determine whether to use unique or canonical index labels *)
		unique = OptionValue[Unique]
	},
	(* by default expand expression first *)
	If[OptionValue[Expand],
		expr = Expand[expr]
	];

	(*treat every term in a sum separately*)
	If[Head[expr]===Plus,
		expr = List@@expr,
		expr = List@expr
	];

	(*relabel dummy indices in each term separately and sum them up*)
	solution = Sum[
		RelabelIndicesInTerm[term,unique],
		{term,expr}
	];
	Return[solution]
]


(* ::Section:: *)
(*Index contractions*)


(* ::Subsection::Closed:: *)
(*Combined*)


Options[Contract] = {Expand->True};


(* Performance improvements for long expressions *)
Contract[expr_Plus, OptionsPattern[]] := Contract[#,Expand->OptionValue[Expand]]&/@expr

(* Contract *)
Contract[expr:Except[_Plus], OptionsPattern[]] := Module[
	{result = expr}
	,
	(* by default first expand *)
	If[OptionValue[Expand],
		result = Expand[result]
	];
	(* carry out all contractions *)
	result = ContractMetric[result, Expand->False];
	result = ContractDelta[result, Expand->False];
	(* relabel all indices *)
	result = RelabelIndices[result, Expand->False];
	Return[result]
]


(* ::Subsection:: *)
(*Delta*)


(* ::Subsubsection::Closed:: *)
(*Attributes*)


SetAttributes[Delta, Orderless]


(* ::Subsubsection::Closed:: *)
(*Properties*)


Delta /: Delta[Index[a_,rep_],Index[b_,rep_]] * Delta[Index[b_,rep_],Index[c_,rep_]] := 
	Delta[Index[a,rep],Index[c,rep]]


Delta /: Delta[Index[a_,rep_],Index[b_,rep_]]^2 := 
	Delta[Index[a,rep],Index[a,rep]]


Delta[Index[a_,rep_],Index[a_,rep_]] := DimRep[rep]


(* ::Subsubsection::Closed:: *)
(*Contractions*)


ContractDelta::duplicate = "Could not contract the Delta[_,_].";


Options[ContractDelta] = {Expand->True};


(* Performance improvements for long expressions *)
ContractDelta[expr_Plus, OptionsPattern[]] := ContractDelta[#, Expand->OptionValue[Expand]]&/@expr

(* Contract *)
ContractDelta[arg:Except[_Plus], OptionsPattern[]] := 
	Module[
		{ expr = arg}
		,
		(* By default expand the argument before contraction *)
		If[OptionValue[Expand],
			expr = Expand[expr]
		];
		
		If[Head[expr]===Plus,
			expr = List@@expr;
			Plus@@ (ContractDeltaSingleTerm/@ expr)
		,
			ContractDeltaSingleTerm@ expr
		]
	]


ContractDeltaSingleTerm[expr_] := 
	Module[
		{
			(*
			result = expr,
			indicesDelta = Cases[expr, Delta[Index[a_,rep_],Index[b_,rep_]]:>{Index[a,rep],Index[b,rep]},All],
			noDelta = expr/.Delta[_,_]->1
			*)
			result,
			indicesDelta,
			noDelta
		}
		,
		(*Match CG deltas to Matchete deltas*)
		result= expr/. CG[_del, inds_]:> (Delta@@ inds/. Bar-> Identity);
		
		If[FreeQ[result, _Delta],
			Return[result]
		];
		
		indicesDelta = Cases[result, Delta[Index[a_,rep_],Index[b_,rep_]]:>{Index[a,rep],Index[b,rep]},All];
		noDelta = result/.Delta[_,_]->1;
		
		If[!DuplicateFreeQ[Flatten[indicesDelta/.{a_,a_}:>{a}]],
			Message[ContractDelta::duplicate];
			Return[expr]
		];
		
		Do[
			If[!FreeQ[noDelta,First@ind],
				result = (result /. Delta[First@ind,Last@ind]->1)/.First@ind->Last@ind,
				If[!FreeQ[noDelta,Last@ind],
					result = (result /. Delta[First@ind,Last@ind]->1)/.Last@ind->First@ind
				]
			]
			,
			{ind,indicesDelta}
		];
		Return[result]
	]


(* ::Subsubsection::Closed:: *)
(*DimRep*)


DimRep::NoRep   = "'`1`' is not an already defined represention or flavor index"


DimRep[rep_]:=Block[{},
	If[Head@GroupMagic`PackageScope`$Representations[rep]===Missing && Head@$FlavorIndices[rep]===Missing,
		Message[DimRep::NoRep ,rep];
		Abort[]
	];
	
	If[Head@GroupMagic`PackageScope`$Representations[rep]=!=Missing, Return[GroupMagic`PackageScope`$Representations[rep][GroupMagic`PackageScope`RepDimension]]];
	If[Head@$FlavorIndices[rep]=!=Missing, Return[$FlavorIndices[rep][IndexDimension]]];
]


(* ::Subsection:: *)
(*Metric*)


(* ::Subsubsection::Closed:: *)
(*Attributes*)


SetAttributes[Metric, Orderless]


(* ::Subsubsection::Closed:: *)
(*Properties*)


Metric[a_Symbol,b_Symbol]:= Metric[Index[a,Lorentz],Index[b,Lorentz]]


Metric /: Metric[a_,b_] * Metric[b_,c_] := Metric[a,c]


Metric /: Metric[a_,b_]^2 := Metric[a,a]


Metric[a_,a_] := \[ScriptD]


(* ::Subsubsection::Closed:: *)
(*Contractions*)


ContractMetric::duplicate = "Could not contract the Delta[_,_].";


Options[ContractMetric] = {Expand->True};


(* Performance improvements for long expressions *)
ContractMetric[expr_Plus, OptionsPattern[]] := ContractMetric[#, Expand->OptionValue[Expand]]&/@expr

(* Contract *)
ContractMetric[arg:Except[_Plus], OptionsPattern[]] := 
	Module[
		{ expr = arg}
		,
		(* By default expand the argument before contraction *)
		If[OptionValue[Expand],
			expr = Expand[expr]
		];
		
		If[Head[expr]===Plus,
			expr = List@@expr;
			Plus@@(ContractMetricSingleTerm/@expr)
			,
			ContractMetricSingleTerm@ expr
		]
	]


ContractMetricSingleTerm[expr_] := 
	Module[
		{
			result,
			indicesMetric,
			noMetric
		}
		,
		If[FreeQ[expr,_Metric],
			Return[expr]
		];
		result = expr;
		indicesMetric = Cases[expr, Metric[a_,b_]:>{a,b},All];
		noMetric = expr/.x_Metric:>1;
		
		If[!DuplicateFreeQ[Flatten[indicesMetric/.{a_,a_}:>{a}]],
			Message[ContractMetric::duplicate];
			Return[expr]
		];
		
		Do[
			If[!FreeQ[noMetric,First@ind],
				result = (result /. Metric[First@ind,Last@ind]->1)/.First@ind->Last@ind,
			If[!FreeQ[noMetric,Last@ind],
					result = (result /. Metric[First@ind,Last@ind]->1)/.Last@ind->First@ind
				]
			]
			,
			{ind,indicesMetric}
		];
		Return[result]
	]


(* ::Subsection:: *)
(*Levi-Civita tensor*)


(* ::Subsubsection::Closed:: *)
(*Properties*)


LCTensor@ OrderlessPatternSequence[a_, a_, __]:= 0


LCTensor@ a___/; ! OrderedQ@ {a}:= Signature@ {a} LCTensor@@ Sort@ {a}  


LCTensor[a_Symbol,b_Symbol,c_Symbol,d_Symbol]:= LCTensor[Index[a,Lorentz],Index[b,Lorentz],Index[c,Lorentz],Index[d,Lorentz]]


(* Deactivated becuase it is a purely 4D identity (to be handled more carefully) *)
(*LCTensor /: LCTensor[a:Sequence[_Index..]] * LCTensor[b:Sequence[_Index..]]:= - Det[Outer[Metric,List@a,List@b]]*)
