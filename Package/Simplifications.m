(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`Simplifications`*)


(* ::Subtitle:: *)
(*Paclet for simplifying and reducing EFT operators to an off-shell basis*)


(* ::Chapter:: *)
(*Public:*)


PackageImport["GroupMagic`"]


(* ::Section:: *)
(*Scoping*)


(* ::Subsubsection:: *)
(*Exported*)


PackageExport["GreensSimplify"]
PackageExport["IBPIdentities"]


PackageExport["CollectOperators"]
PackageExport["SelectOperatorClass"]
PackageExport["GetOperatorCoefficient"]


PackageExport["HcSimplify"]
PackageExport["HcExpand"]
PackageExport["HcTerms"]


(* ::Subsubsection:: *)
(*Internal*)


PackageScope["Basis4D"]


PackageScope["Operator"]
PackageScope["NormalForm"]
PackageScope["EoM"]


PackageScope["InternalSimplify"]
PackageScope["InternalOpRepresentation"]


PackageScope["Conj"]
PackageScope["AtomicOp"]
PackageScope["CompOp"]
PackageScope["ConstructOperatorIdentities"]
PackageScope["ResetOperatorAssociations"]
PackageScope["MatchOperatorPatterns"]
PackageScope["LookupOperatorFlavorProperties"]
PackageScope["FindPermutationOrder"]
PackageScope["$operators"]
PackageScope["$compoundOperators"]


PackageScope["CanonizeKinetic"]


PackageScope["SeparateInteractionTerm"]


PackageScope["OpsToFieldForm"]


(* ::Section:: *)
(*Usage messages*)


(* ::Subsubsection:: *)
(*Exported*)


CollectOperators::usage= "CollectOperators[expr] collects all identical operators (under index relabeling and obvious symmetries) in an expression."
SelectOperatorClass::usage= "SelectOperatorClass[expr, fields, devNo] selects all terms in the expression with operators consisting of the specified matter fields (including Bars) and number of derivatives. Field strength tensors count as 2 derivatives."
GetOperatorCoefficient::usage= "GetOperatorCoefficient[expr, operator] extracts the coefficient of the operator matching exactly (except for index names) the form given by operator."


GreensSimplify::usage= "GreensSimplify[expr] simplifies an expression with IBP identities and commutation relations."
IBPIdentities::usage= "IBPIdentities[fields, devNo] returns a list with all the integration-by-part identities used by GreensSimplify for the class of operators consisting of the exact matter fields (including Bars) and the specified number of derivatives. Field strength tensors count as 2 derivatives."


HcSimplify::usage="HcSimplify[Lagrangian] identifies terms with their hermitian conjugate and retains only one of them under the head HcTerms.";
HcExpand::usage="HcExpand[Lagrangian] expands the head HcTerms to return both the operators and their hermitian conjugate.";
HcTerms::usage="HcTerms[expr] is a placeholder that contain terms whose hermitian conjugate have been removed form the Lagrangian with HcSimplify.";


Basis4D::usage="Option for GreensSimplify to decide whether or not to use operations that project to the 4D basis (fierz, gamma reduction and Levi-Civita relations). 
				The value can be False (4D operations are not performed), True (4D operations are performed) or Evanescent (4D operations are performed and the resulting evanescent operators are kept)."


(* ::Subsubsection::Closed:: *)
(*Scoped*)


EoM::usage="EoM[A_] is a field operator in the form of the equations of motion of a field.";
Operator::usage="Operator[x] separates prefactors from field operators and puts the expressions into forms that can more easily be processed by the reduction algorithms.";


LookupOperatorFlavorProperties::usage= "LookupOperatorFlavorProperties[op] returns the flavor properties of the operator in question."


(* ::Chapter:: *)
(*Private:*)


(* ::Section:: *)
(*Operator part*)


(* ::Subsection:: *)
(*Operator object*)


(* ::Subsubsection::Closed:: *)
(*Properties*)


(* ::Text:: *)
(*Operator is separates prefactors from the fields and group structures of an object. It distributes over an expression, so after applying Operator to an expression, all operators are contained in an Operator object.*)


SetAttributes[Operator, {Orderless}];


(*Flat*)
HoldPattern@ Operator[Operator@ x___, y___]:= Operator[x, y];
(*Distributive *)
Operator@ l_List:= Operator/@ l;
op:Operator[_Plus, ___]:= Distribute@ Unevaluated@ op;

(*Operator@ prod_Times:= Operator@@ prod;*)
Operator[HoldPattern@ Times@ a__, b___]:= Operator[a, b];

Operator/: HoldPattern[Operator[a__]* Operator[b__]]:= Operator[a, b]; (*NormalForm?*)

Operator[a_/; FreeQ[a, Field| FieldStrength| CG| LCTensor], b___]:= a Operator@ b;

Operator[Power[a_, n_Integer? Positive], b___]:= Operator[Sequence@@ ConstantArray[a, n], b];

Operator[]:= 1;


(* ::Subsubsection::Closed:: *)
(*Recognize EoM*)


(* ::Text:: *)
(*Behavior of EoM under conjugation*)


EoM/: Bar@ EoM@ X_:=EoM@ Bar@X


(* ::Text:: *)
(*Structures occurring with Majorana fermions*)


EoM[(f:Transp@ Field[_, Fermion, _, {}])** CC]:= -EoM@ f **CC;
EoM[-CC** (f:Field[_, Fermion, _, {}])]:= CC** EoM@ f ;


(* ::Text:: *)
(*Recognize EoM-type structures... *)


(* Scalars *)
Operator[eom:(Field[_, Scalar, _, {mu_, mu_}]| Bar@ Field[_, Scalar, _, {mu_, mu_}]), rest___]:=
	Operator[eom/. Field[l_, Scalar, i_, {b_, b_}]:> EoM@ Field[l, Scalar, i, {}], rest];

(* Fermions *)
Operator[X___** DiracProduct[A___, GammaM[mu_]]** Field[f_, Fermion, i_, {mu_}], rest___]:=
	Operator[X** DiracProduct[A]** EoM[Field[f, Fermion, i, {}]], rest];
Operator[X___** DiracProduct[A___, GammaM[mu_], Proj@ p_]** Field[f_, Fermion, i_, {mu_}], rest___]:=
	Operator[X** DiracProduct[A, Proj[-p]]** EoM[Field[f, Fermion, i, {}]], rest];
(* Bar@ Fermions *)
Operator[Bar@ Field[f_, Fermion, i_, {mu_}]** DiracProduct[GammaM[mu_], A___]** X___, rest___]:=
	Operator[EoM[Bar@ Field[f, Fermion, i, {}]]** DiracProduct[A]** X, rest];
(* Transp@ Fermions *)
Operator[Transp@ Field[f_, Fermion, i_, {mu_}]** DiracProduct[GammaCC, GammaM[mu_], A___]** X___, rest___]:=
	- Operator[EoM[Transp@ Field[f, Fermion, i, {}]]** DiracProduct[GammaCC, A]** X, rest];
(*Transp@ Bar@ Fermions*)
Operator[X___** DiracProduct[A___, Transp@ GammaM[mu_]]** Transp@ Bar@ Field[f_, Fermion, i_, {mu_}], rest___]:=
	Operator[X** DiracProduct[A]** EoM[Transp@ Bar@ Field[f, Fermion, i, {}]], rest];
Operator[X___** DiracProduct[A___, Transp@ GammaM[mu_], Proj@ p_]** Transp@ Bar@ Field[f_, Fermion, i_, {mu_}], rest___]:=
	Operator[X** DiracProduct[A, Proj[-p]]** EoM[Transp@ Bar@ Field[f, Fermion, i, {}]], rest];

(*Vectors*)
Operator[FieldStrength[V_, linds:{OrderlessPatternSequence[a_, b_]}, ind_, {a_}], rest___]:=
	Signature@ linds Signature@ {a, b} Operator[EoM[Field[V, Vector[b], ind, {}]], rest];


(* ::Subsubsection::Closed:: *)
(*NormalForm, rewriting Operator and EoM objects*)


(* ::Text:: *)
(*Function for bringing Operator objects back into normal form while expanding any EoM objects. *)


Options@ NormalForm= {Unique-> True, CanonizeKinetic -> True};


NormalForm[expr_, OptionsPattern[]]:=
	CanonizeKineticalOps[expr, OptionValue@CanonizeKinetic] /. op:_Operator:> Activate@ RelabelIndices[Inactive[Times]@@ op//. {
			EoM[f:Field[_, Scalar, __]]:> Module[{a}, CD[{a, a}, f] ],
			EoM[Bar@ f:Field[_, Scalar, __]]:> Bar@ Module[{a}, CD[{a, a}, f] ],
			EoM[f: Field[_, Fermion, __]]:> Module[{a}, \[Gamma][a]**CD[a, f]],
			EoM[Bar@ f:Field[_, Fermion, __]]:> Bar@ Module[{a}, \[Gamma][a]**CD[a, f]],
			EoM[Transp@ f:Field[_, Fermion, __]]:> Transp@ Module[{a}, \[Gamma][a]**CD[a, f]],
			EoM[Transp@ Bar@ f:Field[_, Fermion, __]]:> Module[{a}, Transp@ \[Gamma][a]**Transp@ Bar@ CD[a, f]],
			EoM[Field[f_, Vector[mu_], ind_, {}]]:>
				Module[{nu}, FieldStrength[f, {Index[nu, Lorentz], mu}, ind, {Index[nu, Lorentz]}] ]
		}
	, Unique-> OptionValue@ Unique];


(* ::Text:: *)
(*To put scalar kinetic terms on textbook form *)


CanonizeKineticalOps[expr_, False] := expr


CanonizeKineticalOps[expr_, True] :=
	expr/. {
		Operator[Bar@ Field[f1_, Scalar, inds1_, {}], EoM@ Field[f2_, Scalar, inds2_, {}]]:>
			-Operator[Bar@ Field[f1, Scalar, inds1, {Index[Global`d$$1, Lorentz]}], Field[f2, Scalar, inds2, {Index[Global`d$$1, Lorentz]}]],
		Operator[Field[f1_, Scalar, inds1_, {}], EoM@ Field[f2_, Scalar, inds2_, {}]]:>
			-Operator[Field[f1, Scalar, inds1, {Index[Global`d$$1, Lorentz]}], Field[f2, Scalar, inds2, {Index[Global`d$$1, Lorentz]}]]
	};


(* ::Subsection::Closed:: *)
(*Hermitian conjugate simplification - exported modules*)


(*HcSimplify::Hcnotfound =   "The hermitian conjugate of the term `1` could not be identified."
HcSimplify::nothermitian = "The Lagrangian is not hermitian."
HcSimplify::Hcfailed =     "HcSimplify failed."*)


(*HcSimplify::OddTerms =     "The non-hermitian part of the Lagrangian consists of an odd number of terms."
HcSimplify::Incompatible = "The term `1` or `2` is not a simple product of operator and coefficient."*)


(*HcSimplify[x_]:=NewHcSimplify[x]*)


(*HcTerms[0]:=0;
HcExpand[Lag_]:= Lag /.{HcTerms[expr_]:> expr + Bar@expr} ;*)


(*Bar@HcTerms[arg___]:=HcTerms[arg]*)


(* ::Subsection::Closed:: *)
(*Hermitian conjugate simplification - old core module only for backup purposes, will be deleted eventually*)


(*OldHcSimplify[Lagrangian_]:=Module[
	{nonhcterms, nonhctermsext, selfhcterms, pairs, singles, n1, n2, indexlist, output, Lag=Contract@GreensSimplify@Lagrangian,i,
	c1,o1,c2,o2},
	(*If[!HermitianQ[Lag],Message[HcSimplify::nothermitian];Abort[]];*)
	If[Head@Lag=!=Plus (*&& HermitianQ@Lag*), Return[Lagrangian]];
	(*Identify self-hermitian terms and others*)
	selfhcterms = Select[Lag, HermitianQ[#]&];
	If[selfhcterms===Lag, Return[Lagrangian]];
	nonhcterms = List@@(Expand@CollectOperators[Lag-selfhcterms]);
	(*Build pairs with positions of term and self-hermitian related term*)
	nonhctermsext = RelabelIndices@CollectOperators[{#,Bar@#}]& /@ nonhcterms ;
	pairs = DeleteDuplicates[Sort[Position[nonhctermsext,#[[1]]][[;;,1]]&/@nonhctermsext]];
	singles=Flatten@Select[pairs, Length@#<2&];
	pairs=Complement[pairs,List/@Flatten@Complement[pairs,singles]];
	singles=Complement[singles,Flatten@pairs];
	For[i=1,i<=Length@singles,i++,
			AppendTo[pairs,Flatten@{singles[[i]],If[GreensSimplify[Bar[nonhcterms[[singles[[i]]]]]-nonhcterms[[#]]]===0,#,Nothing]&/@singles}]
		];
	pairs=DeleteDuplicates[Sort/@pairs];
	(*Choose which term to keep and which term to put in +H.c.*)
	indexlist= If[Length[#]=!=2,
		Message[HcSimplify::Hcnotfound,Format[nonhcterms[[#[[1]]]],NiceForm]];
		selfhcterms = selfhcterms + nonhcterms[[#[[1]]]];
		#[[1]],
		If[MatchQ[Collect[Operator[nonhcterms[[#[[1]]]]],_Operator],_Operator (_:1)]&&MatchQ[Collect[Operator[nonhcterms[[#[[2]]]]],_Operator],_Operator (_:1)],
			{c1,o1}=SeparateInteractionTerm[nonhcterms[[#[[1]]]]];
			{c2,o2}=SeparateInteractionTerm[nonhcterms[[#[[2]]]]];
			n1=Count[o1,_Bar,Infinity];
			n2=Count[o2,_Bar,Infinity];
			If[n1 == n2,
				(* both operators have the same numbers of bars, count derivatives acting on bars *)
				n1 = Length@Flatten@Cases[o1,HoldPattern[ Bar[Field[__, l_ ]]/;Length[l]>0]:>l,Infinity];
				n2 = Length@Flatten@Cases[o2,HoldPattern[ Bar[Field[__, l_ ]]/;Length[l]>0]:>l,Infinity];
				If[n1 == n2,
					(* same numbers of derivatives on bars as well, just count the whole thing *)
					If[(n1=Count[nonhcterms[[#[[1]]]],_Bar, Infinity]) == (n2=Count[nonhcterms[[#[[2]]]],_Bar, Infinity]),
						#[[1]]
					,
						If[n1>n2,#[[1]],#[[2]]]
					]
				,
					(* pick the operator with least derivatives on barred fields *)
					If[n1>n2,#[[1]],#[[2]]]
				]
			,
				(* pick the operator with less conjugations on fields *)
				If[n1>n2,#[[1]],#[[2]]]
			]

		,
			If[(n1=Count[nonhcterms[[#[[1]]]],_Bar, Infinity]) == (n2=Count[nonhcterms[[#[[2]]]],_Bar, Infinity]),
				#[[1]],
				If[n1>n2,
					#[[1]],
					#[[2]]
					]
				]
			]
		]&/@pairs;
	nonhcterms = Delete[nonhcterms,List/@ indexlist];
	(*Write Lagrangian with +H.c.*)
	output = CollectOperators@selfhcterms + HcTerms[CollectOperators[Plus@@nonhcterms]];
	If[GreensSimplify @ (HcExpand @ output - Lagrangian)  =!= 0, Print["Diff:"];Print[GreensSimplify @ (HcExpand @ output - Lagrangian)];Message[HcSimplify::Hcfailed];Return[Lagrangian]];
	output
]*)


(* ::Subsection::Closed:: *)
(*Hermitian conjugate simplification - new core module*)


(*NewHcSimplify[Lagrangian_]:=Module[
	{terms, Lag, scterms={}, nscterms={}, L0 = 0, Lhc = 0, t1, t2, c1, c2, o1, o2, i, n1, n2, hermitelist, fullterms, output, lhc,
	$MODE = 1}
	,
	(* STEP 0 - make a big list of terms - each of them should be (a single operator)\[Cross](its coefficient) by virtue of GreenSsimplify *)
	Lag = GreensSimplify @ Lagrangian;
	terms = If[ Head @ Lag === Plus, List @@ Lag, {Lag}];

	(* STEP 1 - go through every term from the above list, check if it is hermitian and sort it in appropriate buckets *)
	Do[
		If[GreensSimplify[Bar@dL-dL]===0,
			(* hermitian term, but it could be either: hermitian operator or combination (coupling\[Cross]operator) is hermitian - need to separate *)
			AppendTo[scterms, dL]
		,
			(* not hermitian at all, needs to be paired up - treat this like the previous algorithm did *)
			AppendTo[nscterms, dL]
		]
	,
		{dL, terms}
	];

	(* STEP 2 - treat the completely non-hermitian terms *)
	If[OddQ @ Length @ nscterms, Message[HcSimplify::OddTerms]; Return[Lagrangian]];
	While[Length @ nscterms > 0,
		(* pick first term from the list *)
		t1 = First @ nscterms;
		nscterms = Drop[nscterms, {1}];
		i = 1;
		(* find its buddy *)
		While[!(GreensSimplify[ (t2 = nscterms[[i]]) - Bar @ t1] === 0),
			i++;
			If[ i > Length @ nscterms,
				(* we have gone through the whole list without finding a match - abort *)
				Message[HcSimplify::Hcnotfound, Format[t1, NiceForm]];
				Return[Lagrangian]
			]
		];
		nscterms = Drop[nscterms, {i}];
		(* now we decide whether to put t1 or t2 in the Lagrangian *)
		If[!(MatchQ[Collect[Operator@t1,_Operator],(_Operator)(_:1)] && MatchQ[Collect[Operator@t2,_Operator],(_Operator)(_:1)]), Return[] ];
		{c1,o1}=SeparateInteractionTerm[t1];
		{c2,o2}=SeparateInteractionTerm[t2];
		(* count bars on the operators *)
		n1=Count[o1,_Bar,Infinity];
		n2=Count[o2,_Bar,Infinity];
		If[n1 === n2,
			(* as they have the same number of bars, count derivatives acting on conjugate fields *)
			n1 = Length@Flatten@Cases[o1,HoldPattern[ Bar[Field[__, l_ ]]/;Length[l]>0]:>l,Infinity];
			n2 = Length@Flatten@Cases[o2,HoldPattern[ Bar[Field[__, l_ ]]/;Length[l]>0]:>l,Infinity];
			If[n1 === n2 ,
				(* still identical, so count bars in the full expression take the first *)
				n1=Count[t1,_Bar,Infinity];
				n2=Count[t2,_Bar,Infinity];
				Lhc += SortBy[{{t1,n1},{t2,n2}},Last][[1,1]];
			,
				(* add the term with fewer bars to the "+hc Lagrangian" *)
				Lhc += SortBy[{{t1,n1},{t2,n2}},Last][[1,1]];
			]
		,
			(* add the term with fewer bars to the "+hc Lagrangian" *)
			Lhc += SortBy[{{t1,n1},{t2,n2}},Last][[1,1]];
		]
	];

	(* STEP 3 - treat the hermitian terms *)
	If[$MODE === 1,
		(* in this mode, hermitian operators might end up in h.c. terms if their coefficients can be easily written as c\[ConjugateTranspose]+c, so they show up as c*o + h.c. instead of (c+c\[ConjugateTranspose])*o *)
		Do[
			terms = Expand @ current;
			If[!(Head@terms === Plus),
				(* seems to be a single term, just add to the list and move on *)
				L0 += current
			,
				(* if multiple terms, check if they are all hermitian or only some *)
				terms = List @@ terms;
				hermitelist = (0 === GreensSimplify[# - Bar @ #])&/@(terms);

				If[ And @@ hermitelist,
					(* every term in this expression is hermitian -> this goes into the hermitian Lagrangian *)
					L0 += current
				,
					(* pick those that are hermitian and save them for later *)
					lhc = 1/2 * (Total @ Cases[Transpose[{terms,hermitelist}],{x_, True} :> x]);
					(* the other terms need to be treated much like in step 2 *)
					fullterms = Cases[Transpose[{terms,hermitelist}],{x_, False} :> x];
					If[OddQ[Length @ fullterms], Message[HcSimplify::OddTerms]; Return[Lagrangian]];
					While[Length @ fullterms > 0,
						t1 = First @ fullterms ;
						fullterms = Drop[fullterms, {1}];
						i = 1;
						(* find its buddy *)
						While[!(GreensSimplify[ (t2 = fullterms[[i]]) - Bar @ t1] === 0),
							i++;
							If[ i > Length @ fullterms,
								(* we have gone through the whole list without finding a match - abort *)
								Message[HcSimplify::Hcnotfound, Format[t1, NiceForm]];
								Return[Lagrangian]
							]
						];
						fullterms = Drop[fullterms, {i}];
						(* add the expression with least bars to the temporary expression *)
						lhc += SortBy[{#, Count[#, _Bar, Infinity]}&/@{t1,t2}, Last][[1,1]]
					];
					Lhc += CollectOperators[lhc]
				]
			]
		,
			{current, scterms}],
		L0 += Total @ scterms
	];


	(* STEP 4 - output and consistency check *)
	output = L0 + HcTerms[ Lhc ];
	If[GreensSimplify @ (HcExpand @ output - Lagrangian)  =!= 0, Print["The output is: ", Iconize @ output]; Message[HcSimplify::Hcfailed]; Return[Lagrangian]];
	(* all good, here is the output *)
	Return @ output
]*)


(* ::Section:: *)
(*Operator construction*)


(* ::Text:: *)
(*Global associations with operator pattern substitutions (both ways)*)
(*$operators = <| opType -> <| operator ID -> OperatorProperties |> |>*)


ResetOperatorAssociations[]:= Block[{},
	$operators= <||>;
	$compoundOperators= <||>;
];
ResetOperatorAssociations[];


(* ::Subsection:: *)
(*Utility functions*)


(* ::Subsubsection::Closed:: *)
(*Separate a term by operator and coefficient, returns {coupling, operator}*)


SeparateInteractionTerm::IncompatibleForm = "The object `1` is not of the form (Operator[a]*b)"


SeparateInteractionTerm[dL_]:=Module[{L = Collect[Operator@Expand@dL,_Operator],cpl,op},
	If[MatchQ[L, _Operator b_:1],
		cpl= L/._Operator -> 1;
		op = L/cpl;
		Return[{cpl,RelabelIndices@NormalForm@op}];
	,
		Message[ SeparateInteractionTerm::IncompatibleForm ,Format[L,NiceForm]];
		Return[{1,dL}]
	];
]


(* ::Subsubsection::Closed:: *)
(*Find indices*)


(* ::Text:: *)
(*Return all open/contracted indices appearing in an object *)


OpenIndices@ obj_:= Cases[Tally@ Cases[obj, Index[__], All], {ind_, 1}-> ind];
ContractedIndices@ obj_:= Cases[Tally@ Cases[obj, Index[__], All], {ind_, 2}-> ind];


(* ::Subsubsection::Closed:: *)
(*FirstElementBy*)


(* ::Text:: *)
(*The performance of MinimalBy for finding a single smallest element is much worse than sort would be (at least for small examples)*)


FirstElementBy[list_, func_]:= First@ SortBy[list, func];
FirstElementBy[func_]@ list_:= FirstElementBy[list, func];


(* ::Subsubsection::Closed:: *)
(*Create canonical dummy indices*)


(* ::Text:: *)
(*Constructs canonical dummy indices of the given types *)


ConstructDummyIndices@ types_List:= ConstructDummyIndices@ types=
	MapIndexed[(Index[ToExpression["d$$"<> ToString[First@ #2]], #1]&), types];


(* ::Subsubsection::Closed:: *)
(*FindPermutationOrder*)


(* ::Text:: *)
(*Returning the ordering list needed to make  permutation[[ordering list]] === target*)


FindPermutationOrder[permutation_List, target_List]:=
	Permute[Range@ Length@ target, FindPermutation[permutation, target]]


(* ::Subsubsection::Closed:: *)
(*Complex conjugate _Operator *)


(* ::Text:: *)
(*Bar Does not work on operator, hence *)


OperatorBar@ op_Operator:= Bar/@ op;


(* ::Subsubsection::Closed:: *)
(*Conjugate operator class*)


(* ::Text:: *)
(*Returns the conjugate of an operator class*)


OpClassConjugate@ {fieldTypes_List, devs_}:= {Sort@ Conj@ fieldTypes, devs};


(* ::Subsubsection::Closed:: *)
(*Self-conjugate operator class *)


(* ::Text:: *)
(*Determines if the operator class is of the self-conjugate type*)


SelfConjugateClassQ@ {fieldTypes_List, _}:=
	Sort@ fieldTypes === Sort@ Conj@ fieldTypes;
SelfConjugateClassQ@ fieldTypes_List:= SelfConjugateClassQ@ {fieldTypes, 0};


(* ::Subsubsection::Closed:: *)
(*Conjugate AtomicOp/CompOp*)


(* ::Text:: *)
(*Returns the conjugate of an operator in the internal representation*)


ConjugateAtomicOperator@ AtomicOp[id:{opClass_, no_}, inds_]:= 
	AtomicOp[{OpClassConjugate@ opClass, no}, inds[[$operators[opClass, id, ConjugateIndexExchange]]]];


ConjugateAtomicOperator@ CompOp[id:{opClass_, no_}, inds_]:= 
	CompOp[{OpClassConjugate@ opClass, no}, inds[[$compoundOperators[opClass, id, ConjugateIndexExchange]]]];


(* ::Subsection:: *)
(*Construct operator matching patterns*)


(* ::Subsubsection::Closed:: *)
(*Construct a Pattern from an operator *)


(* ::Text:: *)
(*Set up a pattern to identify an Operator object with its AtomicOp object*)


patternLabels= Table[Unique@ ordPat, 20];


ConstructOperatorPatterns[id_, op_Operator]:= Module[{antisyms, cgsyms, indices, indReplace,
		lorentzSign, pattern, counter= 1},
	(*Make pattern out of contracted indices*)
	indices= IndexPatternReplace/@ ContractedIndices@ op;
	pattern= op/. indices;
	lorentzSign= LorentzSign@ op;
	pattern= pattern/. lorentzSubs;

	(*Name the antisymmetrized pattern indices*)
	pattern= pattern/. {obj: (_LCTensor|_FieldStrength|_GammaM):>
		(obj/. x_OrderlessPatternSequence:> Pattern[Evaluate@ patternLabels[[counter++]], x])};

	(*Provide sign signatures for all the anti-symmetric indices*)
	antisyms= Times@@ Cases[pattern,
			Verbatim[Pattern][name_, pats_OrderlessPatternSequence]:>
				Inactive[Signature]@ {name} Inactive[Signature][List@@ pats/. Verbatim[Pattern][x_, Blank[]]:>x]
		, All];

	(*Account for the symmetries of the CGs*)
	cgsyms= Times@@ Reap[Sow@ Nothing;
			pattern= pattern/. cg_CG:> CGPattern@ cg;
		][[2, 1]];

	(*Flavor indices *)
	indices= Flatten@ OperatorFieldsAndFlavors[op][[;;, ;;, 2]];
	indReplace= IndexPatternReplace/@ indices;

	(*Produce substitution rules from operator pattern*)
	{
		(*Replace operator with AtomicOp object*)
		With[{temp= lorentzSign* antisyms* cgsyms,
				inds= indReplace[[;;, 2]]/. Verbatim[Pattern][i_, Blank[]]-> i,
				pat= pattern/. indReplace},
			RuleDelayed[pat, ReleaseHold@ Activate@ temp AtomicOp[id, inds]]
		]
	,
		(*Function for matching operator with specific flavor indices*)
		With[{temp= lorentzSign* antisyms* cgsyms,
				pat= pattern/. Thread@ Rule[indices, Slot/@ Range@ Length@ indices]},
			Function[Evaluate@ RuleDelayed[pat, ReleaseHold@ Activate@ temp]]
		]
	}
];


IndexPatternReplace@ ind:Index[lab_, rep_]:= With[{temp= Unique@ lab},
	Rule[ind, Index[Pattern[temp, Blank[]], rep]]
];


(* ::Text:: *)
(*Create orderless Patterns for the anti-symmetric Lorentz constructions*)


lorentzSubs= {
	LCTensor[\[Mu]___]:> LCTensor@ OrderlessPatternSequence@ \[Mu],
	FieldStrength[A_, {\[Mu]__}, a__]:> FieldStrength[A, {OrderlessPatternSequence@ \[Mu]}, a],
	GammaM[\[Mu]_, \[Nu]__]:> GammaM@ OrderlessPatternSequence[\[Mu], \[Nu]]
};


(* ::Text:: *)
(*Compensate for the canonical ordering of patterns when creating OrderlessPatternSequence*)


LorentzSign@ op_:=
	Times@@ Cases[op, LCTensor[\[Mu]___]:> Signature@ List@ \[Mu], Infinity] *
	Times@@ Cases[op, FieldStrength[_, {\[Mu]__}, __]:> Signature@ List@ \[Mu], Infinity] *
	Times@@ Cases[op, GammaM[\[Mu]_, \[Nu]__]:> Signature@ {\[Mu], \[Nu]}, Infinity]


(* ::Text:: *)
(*Identify symmetric contractions of the CGPatterns *)


CGPattern@ CG[cg_, indsPat_]:= Module[{symsPat, inds, syms, x},
	syms= GroupMagic`PackageScope`$CGproperties[cg/. Bar-> Identity, GroupMagic`PackageScope`Symmetries];
	symsPat= KeyMap[indsPat[[#]]&, syms];
	inds= indsPat/. Verbatim[Pattern][i_, Blank[]]:> i;
	(*Sow signature patterns for the RHS of the AtomicOp patterns*)
	(*Nb. patterns dont work to replace keys in associations, hence "Normal"*)
	With[{rhs= Normal@ KeyMap[inds[[#]]&, syms]},
		Sow[Hold@ (Association@@ rhs)@ x]
	];
	CG[cg, x:Alternatives@@ Keys@ symsPat]
]


(* ::Subsubsection::Closed:: *)
(*Return Operator from AtomicOp *)


(* ::Text:: *)
(*Set up a pattern to expand an  AtomicOp object to the corresponding operator *)


OperatorExpansionPattern[id_, op_Operator]:= Module[{indices},
	indices= Flatten@ OperatorFieldsAndFlavors[op][[;;, ;;, 2]];
	With[{inds= indices},
		RuleDelayed[AtomicOp[id, flavInds_], op/. Thread@ Rule[inds, flavInds] ]
	]
];


(* ::Subsection:: *)
(*Operator properties*)


(* ::Subsubsection::Closed:: *)
(*All operator properties *)


(* ::Text:: *)
(*Characterizes all properties of an operator object *)


OperatorProperties::nonop= "Passed a non-operator \"`1`\".";


OperatorProperties[id_, x:Except[_Operator]]:= (Message[OperatorProperties::nonop, x]; Abort[];);


OperatorProperties[id_, op_Operator]:= Module[{count= 1, couplings, conjugateIndexExchange, equivClasses,
		fieldTypes, flavorInds, flavorPerms, gaugeFields, indexGrouping, indexTypes, opIDpattern, permPattern, reexpPattern,
		selfConjugate, selfconjugateType, symmetries},

	fieldTypes= OperatorFieldsAndFlavors@ op;
	flavorInds= fieldTypes[[;;, ;;, 2]]; fieldTypes= fieldTypes[[;;, ;;, 1]];
	indexTypes= Flatten@ flavorInds/. Index[_, type_]-> type;
	indexGrouping= flavorInds/. _Index:> count++;

	(*Get patterns for matching the operator*)
	{opIDpattern, permPattern}= ConstructOperatorPatterns[id, op];
	reexpPattern= OperatorExpansionPattern[id, op];

	(*Symmetries*)
	flavorPerms= Flatten/@ Tuples[Permutations/@ indexGrouping];
	flavorInds= Flatten@ flavorInds;
	symmetries= DeleteCases[Rule[#1, op/. {permPattern@@ #2, _-> 0} ]& @@@ ({#, flavorInds[[#]]}&/@ flavorPerms),
		Rule[_, 0]];

	(*Equivalence classes for the flavor indices*)
	equivClasses= Sort/@ Outer[Part, flavorPerms, symmetries[[;;, 1]], 1];
	equivClasses= DeleteDuplicates@ equivClasses[[;;, 1]];

	(*Selfconjugate*)
	selfconjugateType= SelfConjugateClassQ@ Flatten@ fieldTypes;
	selfConjugate= !FreeQ[OperatorBar@ op, First@ opIDpattern];
	conjugateIndexExchange= If[selfconjugateType,
			FindPermutationOrder[fieldTypes, Conj@ fieldTypes]
		,
			{}
		];

	(*Gauge couplings on field-strength tensors---to absorb and reexpand couplings in gauge fields*)
	gaugeFields= Query[Apply[Alternatives], Key@ Field]@ $GaugeGroups[];
	couplings= Times@@ Cases[op, (FieldStrength[A:gaugeFields, ___]| EoM@ Field[A:gaugeFields, _Vector, ___]):>
		$GaugeGroups[First@ GetGaugeGroupByProperty[Field-> A], Coupling][],
		Infinity];

	<|
		AtomicOpExpansionPattern-> reexpPattern,
		ConjugateIndexExchange-> conjugateIndexExchange,
		GaugeCouplings-> couplings,
		ID-> id,
		IndexGrouping-> indexGrouping,
		IndexType-> indexTypes,
		InequivalentPermutations-> equivClasses,
		OperatorMatchingPattern-> opIDpattern,
		SelfConjugate-> selfConjugate,
		SelfconjugateType-> selfconjugateType,
		Score-> OpScore[op, selfConjugate],
		Symmetries-> symmetries
	|>
]


(* ::Subsubsection::Closed:: *)
(*Kinetic term *)


(* ::Text:: *)
(*Tests if an Operator is a canonical kinetic term*)


KineticOpQ= MatchQ[Alternatives[
		(*HoldPattern@ Operator[Bar@Field[_, Scalar, _, {\[Mu]_}], Field[_, Scalar, _, {\[Mu]_}]],
		HoldPattern@ Operator[Field[_, Scalar, _, {\[Mu]_}], Field[_, Scalar, _, {\[Mu]_}]],*)
		(*Scalars*)
		HoldPattern@ Operator[Bar@Field[_, Scalar, _, {}], EoM@ Field[_, Scalar, _, {}]],
		HoldPattern@ Operator[Field[_, Scalar, _, {}], EoM@ Field[_, Scalar, _, {}]],
		(*Fermions*)
		HoldPattern@ Operator[Bar@ Field[_, Fermion, _, {}]** EoM@ Field[_, Fermion, _, {}] ],
		HoldPattern@ Operator[Bar@ Field[_, Fermion, _, {}]** DiracProduct@ _Proj**
			EoM@ Field[_, Fermion, _, {}] ],
		HoldPattern@ Operator[Transp@ Field[_, Fermion, _, {}]** DiracProduct[GammaCC]** EoM@ Field[_, Fermion, _, {}] ],
		HoldPattern@ Operator[Transp@ Field[_, Fermion, _, {}]** DiracProduct[GammaCC, _Proj]**
			EoM@ Field[_, Fermion, _, {}] ],
		(*Vectors*)
		HoldPattern@ Operator[FieldStrength[_, {\[Mu]_, \[Nu]_}, {a_}, {}],
			FieldStrength[_, {\[Mu]_, \[Nu]_}, {a_}, {}]],
		HoldPattern@ Operator[Bar@ FieldStrength[_, {\[Mu]_, \[Nu]_}, {a_}, {}],
			FieldStrength[_, {\[Mu]_, \[Nu]_}, {a_}, {}]]
		] ];


(* ::Subsubsection::Closed:: *)
(*Operator Type*)


(* ::Text:: *)
(*Head for denoting Conjugate field type*)


Conj@ Conj@ f_:= f;
Conj@ l_List:= Conj/@ l;


(* ::Text:: *)
(*Operator class discriminator *)


OperatorClass@ op_Operator:= Module[{fields, temp,
		devs= 0, gaugeFields= List@@ Query[All, Key@ Field]@ $GaugeGroups},
	devs+= Plus@@ Cases[op, EoM@ (Bar|Transp)@ Field[_, type_, __]:> EOMDevs@ type, All];
	devs+= Plus@@ Cases[op, EoM@ Transp@ Bar@ Field[_, Fermion, __]:> EOMDevs@ Fermion, All];
	devs+= Plus@@ Cases[op, EoM@ Field[_, type_, __]:> EOMDevs@ type, All];
	devs+= Plus@@ Cases[op, FieldStrength[___, linds_]:>
		1+ Length@ linds, All];
	devs+= Plus@@ Cases[op, Field[___, linds_]:> Length@ linds, All];

	temp= op/. EoM-> Identity/. FieldStrength[lab_, inds_, rest__]:> Field[lab, Vector@ First@ inds, rest];
	devs+= Plus@@ Cases[temp, Field[lab_, _Vector, __]/; MemberQ[gaugeFields, lab]-> 1, All];
	temp= DeleteCases[temp, Field[lab_, _Vector, __]/; MemberQ[gaugeFields, lab], All];

	fields= Cases[temp, Bar@ Field[lab_, (Scalar|Fermion|_Vector),__]:> Conj@ lab, All];
	temp= DeleteCases[temp, Bar@ Field[_, (Scalar|Fermion|_Vector),__], All];
	fields= Join[fields, Cases[temp, Field[lab_, (Scalar|Fermion|_Vector),__]:> lab, All]];
	{Sort@ fields, devs}
];
EOMDevs[type_]:= Switch[type, Scalar, 2, Fermion, 1, _Vector, 2] ;


(* ::Text:: *)
(*Returns an ordered list of field types and corresponding flavor indices *)


OperatorFieldsAndFlavors@ op_Operator:= Module[{fields, flavorInds, temp= op},
	flavorInds= OpenIndices@ op;
	fields= Cases[temp, Bar@ Field[lab_, _, inds_, _]:> {Conj@ lab, Intersection[inds, flavorInds]}, All];
	temp= DeleteCases[temp, Bar@ Field[_, _,__], All];
	fields= Join[fields,
		Cases[temp, Field[lab_, _, inds_, _]:> {lab, Intersection[inds, flavorInds]}, All] ];
	GatherBy[SortBy[fields, First], First]
]


(* ::Subsubsection::Closed:: *)
(*Operator ranking*)


(* ::Text:: *)
(*Ranks operators by preference (higher is more preferable)*)


OpScore::unexp= "OpScore received unexpected argument `1`"


OpScore[op_Operator, selfConj_]:= Module[{score= 0},
	(*Check for canonical kinetic term*)
	If[KineticOpQ@ op, Return@ 200];

	(*EoMs can be removed by field redefinitions and any EoM should always be included in the basis*)
	score+= 100 Count[op, _EoM, Infinity];
	(*Field strength tensors are preferable to more derivatives*)
	score+= 1 Count[op, _FieldStrength, Infinity];
	(*Penalize unrefined Dirac structures*)
	score+= -.5 Count[op, DiracProduct[___, _GammaM, _GammaM, ___], Infinity];
	score+= -.5 Count[op, DiracProduct[___, Transp@ _GammaM, Transp@ _GammaM, ___], Infinity];
	(*Penalize non-ordered CDs*)
	score+= -.1 Count[op, Field[__, {___, a_, __, a_, ___}], Infinity];
	(*Penalize CGs *)
	score+= -.1 Count[op, CG[_eps|Bar@_eps, _], Infinity];
	(*Preferance of self-conjugate operators*)
	If[selfConj, score+= .05];
	(*Score for different combinations of fermions bilinears*)
	score+= FierzScore[op];

	score
]


OpScore@ x_:= (Message[OpScore::unexp, x]; Abort[];);


(* ::Subsection:: *)
(*Match all operators in an expression to patterns  *)


(* ::Subsubsection::Closed:: *)
(*Search expression*)


(* ::Text:: *)
(*Substitutes all operators in an expression with AtomicOp objects for further manipulations  *)


Options@ MatchOperatorPatterns= {ResetIdentities-> True};


MatchOperatorPatterns[expr_, OptionsPattern[]]:= Module[{ops, out= Operator@ expr},
	(*Separate out flavor index contractions within each operator*)
	out= out/. op_Operator:> OperatorFlavorSeparate@ op;
	
	(*Groups all un-matched operators in expression*)
	ops= Cases[out, _Operator, All];
	ops= GroupBy[DeleteDuplicates@ ops, OperatorClass];
	
	(*Construct new patterns out of any new operators encounterd in the sets*)
	KeyValueMap[MakeNewOperatorPatterns[##, OptionValue@ ResetIdentities]&, ops];

	(*Match operators*)
	out/. OpToAtomicReplacementPattern[]
];


(*MatchOperatorPatterns[expr_, OptionsPattern[]]:= Module[{ops, out= Operator@ expr},
	(*Separate out flavor index contractions within each operator*)
	out= out/. op_Operator:> OperatorFlavorSeparate@ op;
	
	(*Match all known operators*)
	out= out/. OpToAtomicReplacementPattern[];
	
	(*Groups all un-matched operators in expression*)
	ops= Cases[out, _Operator, All];
	If[Length@ ops === 0, Return@ out;];
	ops= GroupBy[DeleteDuplicates@ ops, OperatorClass];
	
	(*Construct new patterns out of any new operators encounterd in the sets*)
	KeyValueMap[MakeNewOperatorPatterns[##, OptionValue@ ResetIdentities]&, ops];

	(*Match remaining operators*)
	out/. OpToAtomicReplacementPattern[]
];*)


(* ::Text:: *)
(*Separates flavor contracted indices within an operator to extract a delta*)


OperatorFlavorSeparate@ op_Operator:= Module[{flavInds, deltas, out= op},
	(*Find all internally contracted flavor indices*)
	flavInds= DeleteCases[ContractedIndices@ op,
		Index[_, type_/; !MemberQ[Keys@ $FlavorIndices, type]] ];

	(*Extract a delta for every contraction*)
	deltas= Delta[#, MapAt[Unique, #, 1]]& /@ flavInds;
	Do[
		out= ReplaceFirst[out,  replacement]
	, {replacement, Rule@@@ deltas}];
	out Times@@ deltas
];


(* ::Subsubsection::Closed:: *)
(*Creates new operator classes*)


(* ::Text:: *)
(*Makes new pattern rules for a list of operators of a given type.*)


MakeNewOperatorPatterns::outofsync= "Operator Class `1` and its conjugate is out of sync."


MakeNewOperatorPatterns[opType_, opList_List, resetIdentities_]:= Module[{conjOpType, identifiers, newOps, nextID, op,
		opBar, operatorClass, operatorClassConj, pat, notselfConjugate, sign, remainingOps= opList, temp},
	(*Find patterns for the previously encountered operators*)
	operatorClass= Lookup[$operators, Key@ opType, <||>];
	
	(*Check class is syncronized with its conjugate*)
	If[(notselfConjugate= !SelfConjugateClassQ@ opType),
		operatorClassConj= Lookup[$operators, Key[conjOpType= OpClassConjugate@ opType], <||>];
		If[Length@ operatorClass =!= Length@ operatorClassConj,
			Message[MakeNewOperatorPatterns::outofsync, opType];
		];
	];
	
	(*This has much better performance in some cases than the equivalent DeleteCases*)
	If[Length@ operatorClass =!= 0,
		remainingOps= Cases[remainingOps/. OpToAtomicReplacementPattern[opType], _Operator];
		If[Length@ remainingOps === 0, Return[];];
	];

	(*Loops through the unidentitfied operators, creating new patterns for them*)
	nextID= Length@ operatorClass+ 1; pat= Alternatives[];
	newOps= Association@@ Reap[Do[
			If[MatchQ[pat]@ op, Continue[]; ];
			temp= OperatorProperties[{opType, nextID}, op];
			AppendTo[pat, First@ temp@ OperatorMatchingPattern];
			opBar= OperatorBar@ op; (*May be +/- the Bar operator*)
			{sign, opBar}= Switch[opBar, _Operator, {+1, opBar}, Times[-1, _Operator], {-1, -opBar}];
			temp@ ConjSign= sign;
			(*If valid, appends the conjugate operator to the conjugate class*)
			Sow[{opType, nextID++}-> temp];
			If[notselfConjugate,
				operatorClassConj@ {conjOpType, nextID-1}=
					OperatorProperties[{conjOpType, nextID-1}, opBar];	
				operatorClassConj[{conjOpType, nextID-1}, ConjSign]= sign;
			,
				(*Otherwise ensure the conjugate operator is added to present class*)
				If[!temp@ SelfConjugate,
					temp= OperatorProperties[{opType, nextID}, opBar];
					temp[ConjSign]= sign;
					AppendTo[pat, First@ temp@ OperatorMatchingPattern];
					Sow[{opType, nextID++}-> temp];
				]
			];
		, {op, remainingOps}]][[2, 1]];

	(*Add the conjugate operators*)
	If[notselfConjugate,
		$operators@ conjOpType= operatorClassConj;
	];

	$operators@ opType= operatorClass~ Join~ newOps;

	(*Reset simplification identities*)
	Quiet@ If[resetIdentities,
		(*Basis4D opt here?*)
		ConstructHermitianSimplificationIdentities@ opType=.;
		If[notselfConjugate,
			(*Basis4D opt here?*)
			ConstructHermitianSimplificationIdentities@ conjOpType=.;
		];
	];
];


(* ::Subsection:: *)
(*Replacement rules*)


(* ::Subsubsection::Closed:: *)
(*Replacement patterns *)


(* ::Text:: *)
(*Collect all patterns for substituting Operator objects for AtomicOp objects*)


OpToAtomicReplacementPattern[]:= Block[{},
	Flatten@ Apply[List, Query[All, All, Key@ OperatorMatchingPattern]@ $operators, {0, 1}]
]
OpToAtomicReplacementPattern[opType_]:= Block[{},
	Flatten@ Apply[List, Query[{Key@ opType}, All, Key@ OperatorMatchingPattern]@ $operators, {0, 1}]
]


(* ::Text:: *)
(*Collect all patterns for substituting AtomicOp objects back to Operator objects*)


AtomicToOpReplacementPattern[]:= Block[{},
	Flatten@ Apply[List, Query[All, All, Key@ AtomicOpExpansionPattern]@ $operators, {0, 1}]
]
AtomicToOpReplacementPattern[opType_]:= Block[{},
	Flatten@ Apply[List, Query[{Key@ opType}, All, Key@ AtomicOpExpansionPattern]@ $operators, {0, 1}]
]


(* ::Subsubsection::Closed:: *)
(*Operator Canonization*)


(* ::Text:: *)
(*Returns the signed canonical form of an AtomicOp with the given open indices, using the obvious symmetries of the operator*)


CanonizeAtomicOp@ AtomicOp[id_, inds_]:= Block[{perms},
	perms= $operators[First@ id, id, Symmetries];
	perms= FirstElementBy[inds[[First@ #]]-> Last@ #&/@ perms, Identity];
	Last@ perms AtomicOp[id, First@ perms]
]
CanonizeAtomicOp@ expr_:= expr/. op_AtomicOp:> CanonizeAtomicOp@ op;


(* ::Subsubsection:: *)
(*Canonize flavor indices in expression*)


(* ::Text:: *)
(*Ensure that the AtomicOp/CompOp object in each terms of an expression carries canonical indices*)


ExprFlavorCanonize@ expr:HoldPattern@ Times[couplings__?(FreeQ[Operator]), op:((AtomicOp|CompOp)[_, inds_])]:= Block[
		{indReplace= Thread@ Rule[inds, ConstructDummyIndices@ inds[[;;, 2]]]},
	If[OpenIndicesQ@ expr, Return@ expr];
	RelabelIndices[RelabelIndices[Times@ couplings, Unique-> True]/. indReplace] (op/. indReplace)
];
ExprFlavorCanonize@ expr_:= Block[{out=BetterExpand@ expr},
	If[Head@ out === Plus, ExprFlavorCanonize/@ out, out]
];


(* ::Text:: *)
(*Checks if there are open indices in a single term (assumes that there is no sum over terms)*)


OpenIndicesQ@ expression_:= Block[{expr= PseudoTimes@ expression, list},
	list = Tally[Cases[expr, _Index, All]];
	Length@ Cases[list, {x_, 1}] > 0
]


(* ::Subsubsection::Closed:: *)
(*Expand all operators*)


(* ::Text:: *)
(*Puts AomicOp and CompOp on Operator form*)


Options@ OpsToFieldForm= {NormalForm-> True};


OpsToFieldForm[expr_, OptionsPattern[]]:= Block[{out},
	out= expr/. Flatten@ Apply[List, Query[All, All, Key@ CompOpReplacement]@ $compoundOperators, {0, 1}];
	out= out/. AtomicToOpReplacementPattern[];
	If[OptionValue@ NormalForm, NormalForm[out, Unique-> False], out]
]


(* ::Subsection:: *)
(*Compound operators *)


(* ::Subsubsection::Closed:: *)
(*Construct relevant compound operators for a class *)


(* ::Text:: *)
(*Constructs all compound operators for an operator class and updates the global association for class *)


ConstructCompoundBasis@ opType_:= Module[{atomicOperators, compoundOperators, indexPattern, symmetryReps},
	If[KineticOpClassQ@ opType,
		$compoundOperators@ opType= <||>;
		Return[];
	];
	atomicOperators= List@@ $operators@ opType;

	compoundOperators= Join@@ ConstructCompoundsForOp/@ atomicOperators;
	(*Remove duplicates (from H.c.) *)
	compoundOperators= DeleteDuplicatesBy[compoundOperators, First@ Sort@ {#, -#}& @*First];

	indexPattern= ConstructDummyIndices@ First[atomicOperators]@ IndexType;
	indexPattern= Index[Pattern[Evaluate@ First@ #, Blank[]], Last@ #]&/@ indexPattern;

	(*Save compounds in association*)
	$compoundOperators@ opType= Association@@
		MapIndexed[({opType, First@ #2}->
			Append[Last@ #1, CompOpReplacement-> (CompOp[{opType, First@ #2}, indexPattern]-> First@ #1)]&),
		compoundOperators];
]


(* ::Text:: *)
(*Determine if operator is of the Kinetic term class *)


KineticOpClassQ@ {{f1_, Conj@ f2_Symbol| f2_Symbol}, n_}:=
	Switch[List@@ Query[{Key@ f1, Key@ f2}, Key@ Type]@ $FieldAssociation
	,{Fermion..},
		MatchQ[n, 1]
	,{Scalar..},
		MatchQ[n, 2]
	]
KineticOpClassQ@ _:= False;


(* ::Subsubsection::Closed:: *)
(*Construct compounds from atomic operator*)


(* ::Text:: *)
(*Determine all relevant symmetrizations and/or (anti-)Hermitian combinations involving the operator, i.e., the compoundOperators*)


ConstructCompoundsForOp@ opProperties_:= Block[{dummyInds, conjIndices, conjugated, indexSyms, pos,
		symmetryReps, symmetryCombinations, sharedProps, hcCombinations},

	(*Determine common operator properties*)
	sharedProps= <|
			GaugeCouplings-> opProperties@ GaugeCouplings,
			InherentSymmetry-> opProperties@ Symmetries,
			(*Score is heuristic and can be adjusted*)
			Score-> opProperties@ Score +.01
		|>;

	(*Find all relevant symmetrization of the flavor indices in the operator*)
	symmetryReps= Tuples[FlavorSymmetryReps/@ opProperties[IndexGrouping]];
	symmetryReps= If[(!opProperties@ SelfconjugateType || opProperties@ SelfConjugate),
			If[Length@ symmetryReps === 1, Return@ {}; ];
			{{}, symmetryReps}
		,
			(*Only operators with similar symmetries for fields and Bared fields can reasonably be combined
				in Hermitan/anti-Hermitian parts*)
			Lookup[GroupBy[symmetryReps, (#[[;;, 2]] === #[[;;, 2]]&)], {True, False}, {}]
		];

	(*Expand out the symmetrized indices*)
	indexSyms= Map[Map[Join@@ #[[;;, 1]]-> Times@@ #[[;;, 2]]& ]@* Tuples,
		ExpandSymmetrization@ symmetryReps, {2}];
	(*Canonically sort indices in each term by the symmetries of the Op*)
	indexSyms= Outer[(Part[First@ #1, First@ #2]-> Last@#1 Last@#2&),
		indexSyms, opProperties@ Symmetries];
	indexSyms= Map[FirstElementBy[First], indexSyms, {3}];
	(*Add identical elements*)
	indexSyms= Map[Merge[Total], indexSyms, {2}];
	indexSyms= DeleteCases[indexSyms, 0, {3}];
	pos= Position[indexSyms, <||>, {2}];
	indexSyms= Delete[indexSyms, pos];
	symmetryReps= DeleteCases[Delete[symmetryReps, pos], Symmetrization[_, {1}], Infinity];

	(*Construct operator form*)
	dummyInds= ConstructDummyIndices@ opProperties@ IndexType;
	conjIndices= dummyInds[[Flatten@ opProperties[IndexGrouping][[opProperties[ConjugateIndexExchange]]]]];
	{hcCombinations, symmetryCombinations}= Map[
		Total@* KeyValueMap[#2 AtomicOp[opProperties@ ID, dummyInds[[#1]]]&],
		indexSyms, {2}];
	(*Eliminate trivial constructions from the inherently complex combinations*)
	pos= Position[symmetryCombinations, _? (Count[#, _AtomicOp, Infinity] <= 1 &), {1}, Heads-> False];
	symmetryCombinations= Delete[symmetryCombinations, pos];
	symmetryReps[[2]]= Delete[symmetryReps[[2]], pos];

	(*Construct complex-conjugated version of the operators in hcCombinations*)
	conjugated= Total@* KeyValueMap[#2 AtomicOp[opProperties@ ID, conjIndices[[#1]]]&]/@ indexSyms[[1]];
	conjugated= Bar[conjugated/. AtomicToOpReplacementPattern@ First@ opProperties@ ID]/.
		Bar@ op_Operator:> OperatorBar@ op/. OpToAtomicReplacementPattern@ First@ opProperties@ ID;

	(*Return list of {flavor combination, <|properties|>}*)
	Join@@ Transpose/@ {
		{symmetryCombinations, (*penalizing flavor symmetrization for now *)
			sharedProps ~Join~ <|FlavorSymmetry-> #, SelfConjugate-> False, Score-> opProperties@ Score- .005|>&/@ symmetryReps[[2]]},
		{hcCombinations+ conjugated, (*Prefer self-conjugate combination *)
			Merge[{sharedProps, <|FlavorSymmetry-> #, SelfConjugate-> +1, Score-> .01|>}, Total]&/@ symmetryReps[[1]]},
			(*sharedProps ~Join~ <|FlavorSymmetry-> #, SelfConjugate-> +1|>&/@ symmetryReps[[1]]},*)
		{hcCombinations- conjugated,
			sharedProps ~Join~ <|FlavorSymmetry-> #, SelfConjugate-> -1|>&/@ symmetryReps[[1]]}
	}
]


(* ::Text:: *)
(*Flavor symmetries: *)
(*To be expanded with multi-index representations *)


(*FlavorSymmetryReps@ inds_List:= Symmetrization[inds, #]&/@ IntegerPartitions@ Length@ inds;*)
FlavorSymmetryReps@ {}:= {Symmetrization[{}, {}]}
FlavorSymmetryReps@ {ind_}:= {Symmetrization[{ind}, {1}]};
FlavorSymmetryReps@ {i1_, i2_}:= {Symmetrization[{i1, i2}, {2}], Symmetrization[{i1, i2}, {1, 1}]};
FlavorSymmetryReps@ inds_List:= {Symmetrization[inds, {}]};


(*To be generalized*)
ExpandSymmetrization@ expr_:= expr/. {
		Symmetrization[inds_, {}]:> {Flatten@ inds-> 1},
		Symmetrization[inds_, {1}]:> {Flatten@ inds-> 1},
		Symmetrization[{inds1_, inds2_}, {2}]:> {Flatten@ {inds1, inds2}-> 1/2, Flatten@ {inds2, inds1}-> 1/2},
		Symmetrization[{inds1_, inds2_}, {1, 1}]:> {Flatten@ {inds1, inds2}-> 1/2, Flatten@ {inds2, inds1}-> -1/2}
	}


(* ::Subsubsection::Closed:: *)
(*Construct compound basis*)


ConstructConjugateCompounds@ opType_:= Block[{},
	$compoundOperators@ OpClassConjugate@ opType=
		Association@@ KeyValueMap[MapAt[OpClassConjugate, #1, 1]->
			 ConjugateCompound[#1, #2]&, $compoundOperators@ opType];
]


(* ::Text:: *)
(*Constructs the conjugate compound operator from a compound operator*)


ConjugateCompound[compID_, compProps_]:= Module[{atomicID, compReplacement,
		dummies, indPermutation, opType},
	opType= First@ compID;
	(*Determines the atomic operator ID used in the definition (NB. only one ID for complex class)*)
	{atomicID, dummies}= FirstCase[compProps@ CompOpReplacement,
		AtomicOp[id_, inds_]:> {id, ConstructDummyIndices@ inds[[;;, 2]]},
		0, Infinity];
	(*Determines the index permutation associated with the conjugation of the operator*)
	indPermutation= FindPermutationOrder[dummies,
			FirstCase[{OperatorBar[AtomicOp[atomicID, dummies]/. AtomicToOpReplacementPattern@ opType]/.
				OpToAtomicReplacementPattern@ OpClassConjugate@ opType}, AtomicOp[_, inds_]-> inds, {}, All]
		];

	(*Adjust the indices and operatorIDs used in the conjugate compound operator*)
	$compoundOperators[opType, compID, ConjugateIndexPermutation]= indPermutation;
	<|
		GaugeCouplings-> compProps@ GaugeCouplings,
		InherentSymmetry->
			MapAt[Ordering[indPermutation][[#[[indPermutation]]]]&, compProps@ InherentSymmetry, {All, 1}],
		Score-> compProps@ Score,
		FlavorSymmetry-> Replace[compProps@ FlavorSymmetry,
			Thread@ Rule[Range@ Length@ indPermutation, Ordering@ indPermutation], {4}],
		SelfConjugate-> False,
		CompOpReplacement-> compProps@ CompOpReplacement/.{
			CompOp[_, indPats_]:> CompOp[MapAt[OpClassConjugate, compID, 1], indPats[[indPermutation]]],
			AtomicOp[_, inds_]:> $operators[First@ atomicID, atomicID, ConjSign]*
				AtomicOp[MapAt[OpClassConjugate, atomicID, 1], inds[[indPermutation]]]
		},
		ConjugateIndexPermutation-> Ordering@ indPermutation
	|>
]


(* ::Subsection:: *)
(*Manipulate expression *)


(* ::Subsubsection::Closed:: *)
(*Collect atomic operators in expr*)


(* ::Text:: *)
(*Collects all identical operators in an expression to the same form *)


Options@ CollectOperators= {NormalForm-> True};


CollectOperators[arg_, OptionsPattern[]]:= Block[{expr=HcExpand@BetterExpand[arg], out, consts},
	(*subtract off constants*)
	consts= Last[Last@Reap[
		expr= Replace[
			expr,
			a_/;(FreeQ[a,_Field,All]&&FreeQ[a,_FieldStrength,All]):>(Sow[a]; 0),
			If[Head@expr===Plus,1,0]
		]
	],{}];
	
	LagrangianLikeCheck@ expr;

	out= MatchOperatorPatterns@ expr;
	out= CollectCoefficientsWithSyms@ ExprFlavorCanonize@ out;
	out= If[OptionValue@ NormalForm,
		NormalForm[out/. AtomicToOpReplacementPattern[], Unique-> False],
		out/. AtomicToOpReplacementPattern[]
	];
	out + (Plus@@consts)
];


(* ::Subsubsection::Closed:: *)
(*Extract operator class*)


(* ::Text:: *)
(*Extract all operators of a certain class from an expression*)


SelectOperatorClass::args= "SelectOperatorClass[expr, fields, devNo] takes three arguments.";


SetAttributes[SelectOperatorClass, HoldAll];

SelectOperatorClass[expr_ /; MemberQ[expr, _HcTerms],fields_,devs_] := SelectOperatorClass[ HcExpand @ expr , fields, devs];

SelectOperatorClass[expr_, fields_, devs_]:= Block[{gaugeFields, matterFields, out, opType, conjType, FSCount, FSPower, pw, derivatives},
	LagrangianLikeCheck@ expr;

	opType= Hold@ fields/. Bar-> Conj// ReleaseHold;
	MatterFieldListCheck@ opType;
	DevNoCheck@ devs;

	gaugeFields= List@@ Query[All, Key@ Field]@ $GaugeGroups;
	FSPower=Product[pw[gLabel]^Count[opType, gLabel], {gLabel, gaugeFields}];
	FSCount=2 Sum[Count[opType, gLabel], {gLabel, gaugeFields}];
	opType=DeleteCases[opType, Alternatives@@ gaugeFields];
	derivatives=devs+Total@FSCount;

	opType= {Sort@ opType, derivatives};
	conjType= OpClassConjugate@ opType;
	out= MatchOperatorPatterns@ expr;
	out= out/. AtomicOp[{type_, _}, _]/; !MatchQ[type, opType|conjType]-> 0;
	out= CollectCoefficients@ ExprFlavorCanonize@ out/. AtomicToOpReplacementPattern[];
	out= If[FSPower===1, out, Coefficient[out/.FieldStrength[label_,rest___]:>pw[label] FieldStrength[label,rest], FSPower]/._pw:>0];
	out= NormalForm[out, Unique-> False]
]


SelectOperatorClass@ ___:= (Message[SelectOperatorClass::args]; Abort[];);


General::devNo= "`1` is not a valid number of derivatives. A non-negative integer is expected.";
General::fields= "`1` is not a valid list of matter fields. A list of matter field labels (allowing for Bar) is expected.";


MatterFieldListCheck@ fields_:= Block[{matterFields},
	matterFields= Keys@ Query[Select[(MatchQ[#[Type], Scalar|Fermion|Vector]&)]]@ $FieldAssociation;
	If[!MatchQ[fields, f_List /; SubsetQ[matterFields, f/. Conj-> Identity]],
		Message[General::fields, fields];
		Abort[];
	];
]


DevNoCheck@ devs_:=
	If[!MatchQ[devs, _Integer? NonNegative],
		Message[General::devNo, devs];
		Abort[];
	];


(* ::Subsubsection::Closed:: *)
(*GetOperatorCoefficient*)


(* ::Text:: *)
(*Function the extracts the coefficients of an operator matching exactly the form specified*)


GetOperatorCoefficient::unkwnop= "`1` is not regonized as an operator";


GetOperatorCoefficient[lagrangian_, operator_]:= Module[{expr, atomOp, preFact},
	(*Cast to atomic operators to compare operators*)
	atomOp= MatchOperatorPatterns@ operator;
	Switch[atomOp
	,_AtomicOp,
		preFact= 1;
	,Times[_? NumberQ, _AtomicOp],
		{preFact, atomOp}= Replace[atomOp, Times[x_, a_AtomicOp]:> {1/x, a}];
	,_,
		Message[GetOperatorCoefficient::unkwnop, operator];
		Abort[];
	];
	expr= TermsToList@ MatchOperatorPatterns@ HcExpand@ lagrangian;
		
	(*Tests if flavor indices are present:*)
	preFact* Plus@@ If[Length@ Last@ atomOp === 0,
		Cases[expr, Times[couplings__?(FreeQ[Operator]), AtomicOp[First@ atomOp, {}]]| AtomicOp[First@ atomOp, {}]:> 
			Times@ couplings]
	,
		Cases[expr, Times[couplings__?(FreeQ[Operator]), op:(AtomicOp[First@ atomOp, currentInds_])]:>
			TransformCouplingFlavors[Times@ couplings, currentInds, Last@ atomOp]]
	]// Simplify
]


(* ::Text:: *)
(*Change the labels of the open flavor indices of a coupling term to some new ones*)


TransformCouplingFlavors[couplings_, currentInds_, newInds_]:= Module[{replacement},
	replacement= Thread@ Rule[currentInds, newInds];
	RelabelIndices[couplings, Unique-> True]/. replacement// RelabelIndices
]


(* ::Subsubsection::Closed:: *)
(*Lookup operator properties*)


(* ::Text:: *)
(*Extracts the operator information *)


LookupOperatorProperties[operator_]:= Module[{op},
	op= MatchOperatorPatterns@ operator;
	FirstCase[op, AtomicOp[id:{type_, _}, _]:> $operators[type, id], <||>, All]
]


(* ::Text:: *)
(*Looks op flavor properties of an operator*)


LookupOperatorFlavorProperties[operator_]:= Module[{props, selfConj, selfConjExchange},
	props= LookupOperatorProperties@ operator;
	selfConj= props@ SelfConjugate;
	selfConjExchange= If[selfConj,
			If[Length@ First@ props@ InequivalentPermutations > 0,
				OpConjFlavorPermutation@ FirstCase[Operator@ operator, _Operator, Operator[], All]
			,
				True
			]
		,
			False
		];
	<|
		SelfConjugate-> selfConj,
		ConjugateIndexExchange-> selfConjExchange,
		InequivalentPermutations-> props@ InequivalentPermutations,
		Symmetries-> props@ Symmetries
	|>
]


OpConjFlavorPermutation@ op_Operator:= Module[{},
	FindPermutationOrder@@ Cases[MatchOperatorPatterns@ {op, OperatorBar@ op}, AtomicOp[_, inds_]-> inds, All]
]


(* ::Section:: *)
(*IbP Simplify*)


(* ::Text:: *)
(*Exact simplification procedure*)


(* ::Subsection:: *)
(*Construct identities *)


(* ::Text:: *)
(*Function to make a minimal viable set of identities (in the form of substitution rules) governing an operator class*)
(*N.b. these can be cashed for performance*)


ConstructOperatorIdentities[opType_,OptionsPattern[{Basis4D->False}]]:= Module[
	{opID= 1, dummies, identities, indexToPattern, lhs, op, opIdentities, ordering,
		operators, indPerms, revOrdering, rhs, evaOperators, evaopt},

	If[!KeyExistsQ[$operators, opType], Return@ {}; ];

	If[OptionValue@Basis4D === Evanescent, evaopt=True, evaopt=False];

	(*Initial set of operators to generate identities from*)
	dummies= ConstructDummyIndices@ First[$operators@ opType]@ IndexType;
	indexToPattern= #-> Index[Pattern[Evaluate@ First@ #, Blank[]], Last@ #]&/@ dummies;

	(*Loop to make all identities of the operator class*)

	identities= Flatten@ Reap[While[opID <= Length@ $operators@ opType,
		op= AtomicOp[{opType, opID}, dummies]/.
			$operators[opType, {opType, opID}, AtomicOpExpansionPattern];
		indPerms= $operators[opType, {opType, opID}, InequivalentPermutations];
		indPerms= Thread[dummies-> dummies[[#]]]&/@ indPerms;
		opID++;

		(*Construct all identities generated from the operator*)
		opIdentities= RelabelIndices/@ Join@@ Through[{
				IdentitiesIBP,
				IdentitiesCDCommutation,
				IdentitiesJacobi,
				IdentitiesSpinorLineDerivatives,
				IdentitiesDiracCommutation,
				IdentitiesSymmetry,
				IdentitiesCGs,
				If[OptionValue@Basis4D || evaopt, IdentitiesFierz[#,Evanescent->evaopt]&, Nothing]
			}@ op];
				
		(*Identify operators in the identities with the canonical form ones*)
		opIdentities= MatchOperatorPatterns[opIdentities, ResetIdentities-> False];
		(*Use identiteis with all inequivalent index permutations of the original operator*)

		Sow@ Flatten@ CanonizeAtomicOp[opIdentities/. indPerms];
	]][[2, 1]];

	(*Remove trivial identities (not involving any operators)*)
	identities= DeleteDuplicates@ DeleteCases[identities, 0]/. _Coupling-> 1; (*Temporary gauge coupling removal*)

	(*Add compound operators*)
	ConstructCompoundBasis@ opType;
	identities= identities~ Join~ KeyValueMap[
		CompOp[#1, dummies]- (CompOp[#1, dummies]/.#2@ CompOpReplacement)&,
		$compoundOperators@ opType];

	If[Length@ identities === 0,
		Return@ {};
	];
	(*Echo@NiceForm@(MatrixForm@NormalForm@(identities//OpsToFieldForm));*)

	(*Determine non-redundant set of operators and indexpermutations*)
	operators= Join@@ KeyValueMap[
		Function[{id, prop}, Thread@ {AtomicOp[id, dummies[[#]]]&/@ prop@ InequivalentPermutations, prop@ Score}],
		$operators@ opType];
	(*Nb. With larger flavor symmetries, multiple inequivalent indices will be needed*)
	operators= operators~ Join~ KeyValueMap[
		{CompOp[#1, dummies], #2@ Score}&,
		$compoundOperators@ opType];

	evaOperators=DeleteDuplicates@Cases[identities, _EvaOp,Infinity];
	evaOperators= Transpose[{evaOperators, Reverse@Range[1.01,1+0.01*Length@evaOperators,0.01]}];

	operators= operators~ Join~ evaOperators;
	(*Echo@NiceForm@(MatrixForm@NormalForm@(operators//OpsToFieldForm));*)

	(*Order the operators according to IBPScore*)
	{operators, ordering}= Transpose@ operators;
	ordering= Ordering@ ordering;
	operators= operators[[ordering]];

	(*Canonize flavor indices in operators so that they match the inequivalent permutations*)
	identities= identities/. AtomicOp[id_, inds_]:>
		FirstCase[List@@@ MapAt[inds[[#]]&, $operators[opType, id, Symmetries], {All, 1}],
			{i:Alternatives@@ (dummies[[#]]&/@ $operators[opType, id, InequivalentPermutations]), sign_}->
			sign* AtomicOp[id, i] ];

	(*Use row reduction to generate a list of substitution rules for redundant operators*)
	identities= (identities/. MapIndexed[(#1-> UnitVector[Length@ operators, First@ #2]&), operators]);
	identities= DeleteCases[RowReduce@ identities, {0..}];

	(*Recast the identities of the redundant operators in terms of patterns for AtomicOp/CompOp objects*)
	Table[
		lhs= operators[[First@ FirstPosition[identity, 1]]];
		rhs= lhs- identity . operators;
		(lhs/. indexToPattern)-> rhs
	, {identity, identities}]
];


(* ::Subsection:: *)
(*Operator Identities *)


(* ::Text:: *)
(*Functions returning the results of applying various identities to an operator*)


(* ::Subsubsection::Closed:: *)
(*IdentitiesIBP*)


(* ::Text:: *)
(*Gives identities from IBP relations *)


IdentitiesIBP@ op_Operator:= Module[{positions, \[Mu]ind},
	positions= Join[#, {-1, 1}]&/@ Position[op, (Field|FieldStrength)[___, {__}], All, Heads-> False];
	Table[
		CD[op[[Sequence@@ pos]], Delete[op, pos]]
	, {pos, positions}]
	(*Account for EoMs...*)
	~ Join~
	(CD[\[Mu]ind, #]&/@ ReplaceListSubExprs[op, EoM[f_]:> EoMSplitter[\[Mu]ind, f]])
]


(* ::Text:: *)
(*Remove derivative with index \[Mu] from EoM (for IbP)*)


EoMSplitter::unexp= "EoMSplitter applied to unexpected expression `1`.";
EoMSplitter[\[Mu]_, f:Field[_, Scalar, __] ]:= CD[\[Mu], f];
EoMSplitter[\[Mu]_, f:Bar@ Field[_, Scalar, __] ]:= CD[\[Mu], f];
EoMSplitter[\[Mu]_, f:Field[_, Fermion, __] ]:= \[Gamma]@ \[Mu]** f;
EoMSplitter[\[Mu]_, f:Bar@ Field[_, Fermion, __] ]:= f** \[Gamma]@ \[Mu];
EoMSplitter[\[Mu]_, f:Transp@ Field[_, Fermion, __] ]:= f** Transp@ \[Gamma]@ \[Mu];
EoMSplitter[\[Mu]_, f:Transp@ Bar@ Field[_, Fermion, __] ]:= Transp@ \[Gamma]@ \[Mu]** f;
EoMSplitter[\[Mu]_, Field[f_, Vector@ \[Nu]_, inds_, {}] ]:= FieldStrength[f, {Index[\[Mu], Lorentz], \[Nu]}, inds, {}];
EoMSplitter[\[Mu]_, Bar@ Field[f_, Vector@\[Nu]_, inds_, {}] ]:=Bar@ FieldStrength[f, {Index[\[Mu], Lorentz], \[Nu]}, inds, {}];
EoMSplitter[\[Mu]_, x_]:= (
	Message[EoMSplitter::unexp, x];
	Abort[];
);


(* ::Subsubsection::Closed:: *)
(*IdentitiesCDCommutation*)


(* ::Text:: *)
(*Commutation relations from commuting CD on fields/field strengths*)


IdentitiesCDCommutation@ op_Operator:= Block[{positions},
	positions= Position[op, (Field|FieldStrength)[___, {_, __}], All, Heads-> False];
	Flatten@ Table[
		pos= Sequence@@ pos;
		Table[
			If[op[[pos, -1, n]] === op[[pos, -1, n+ 1]],
				Nothing
			,
				ReplacePart[op, {pos}-> CommuteCDs[op[[pos]], n] ]- op//
					NormalForm// ContractCGs// ContractDelta// Operator
			]
		, {n, Length@ op[[pos, -1]] -1}]
	, {pos, positions}]
]


(* ::Subsubsection::Closed:: *)
(*IdentitiesJacobi*)


(* ::Text:: *)
(*Jaccobi identities: D_a A_{bc} + D_b A_{ca} + D_c A_{ab} = 0*)


IdentitiesJacobi@ op_Operator:= Block[{positions, indices},
	positions= Position[op, FieldStrength[___, {__}], All, Heads-> False];
	Table[
		pos= Sequence@@ pos;
		indices= op[[pos, 2]]~ Join~ op[[pos, -1, {-1}]];
		If[DuplicateFreeQ@ indices,
			indices= Thread@ Rule[indices, #]&/@ NestList[RotateRight, indices, 2];
			ReplacePart[op, {pos}-> CD[op[[pos, -1, ;;-2]],
				Plus@@ (op[[pos, ;;-2]]~ Join~ op[[pos, {-1}, {-1}]]/. indices)] ]
		,
			Nothing
		]
	, {pos, positions}]
]


(* ::Subsubsection::Closed:: *)
(*IdentitiesSpinorLineDerivatives*)


IdentitiesSpinorLineDerivatives@ op_Operator:=
	ReplaceListSubExprs[op, f: Field[_, Fermion, _, {a_, a_}]:> D2Fermion@ f]


(* ::Text:: *)
(*D2 identity on a fermion (D2 = Dslash Dslash -  F_ab sigma_ab)*)


D2Fermion[f:Field[lab_, Fermion, inds_, {\[Mu]_, \[Mu]_}] ]:= Module[{\[Nu]= Index[Unique[lInd], Lorentz]},
	- f +
	\[Gamma]@ \[Nu] ** \[Gamma]@ \[Mu] ** Field[lab, Fermion, inds, {\[Nu], \[Mu]}] +
	I/2 \[Gamma][\[Mu], \[Nu]] ** GAction[{\[Mu], \[Nu]}, Field[lab, Fermion, inds, {}]]
]


(* ::Subsubsection::Closed:: *)
(*IdentitiesDiracCommutation*)


(* ::Text:: *)
(*We might need more identities here *)


IdentitiesDiracCommutation@ op_Operator:=
	If[Count[op,_NonCommutativeMultiply,Infinity]=!=2,
	Join[
		ReplaceListSubExprs[op, d: DiracProduct[___, GammaM[_, __], ___]:>
			ASymGammaExpand@ d] -op,
		ReplaceListSubExprs[op, d: DiracProduct[___, Transp@ GammaM[_, __], ___]:>
			Transp@ ASymGammaExpand@ Transp@ d] -op,
		ContractMetric/@ ReplaceListSubExprs[op,
			DiracProduct[a___, GammaM@ \[Mu]_, GammaM@ \[Nu]_, b___]:>
			-DiracProduct[a, GammaM@ \[Nu], GammaM@ \[Mu], b] + 2 Metric[\[Mu], \[Nu]] DiracProduct[a, b]] -op,
		ContractMetric/@ ReplaceListSubExprs[op,
			DiracProduct[a___, Transp@ GammaM@ \[Mu]_, Transp@ GammaM@ \[Nu]_, b___]:>
			-DiracProduct[a, Transp@ GammaM@ \[Nu], Transp@ GammaM@ \[Mu], b] + 2 Metric[\[Mu], \[Nu]] DiracProduct[a, b]] -op,
		(*Additional*)
		ContractMetric/@ ReplaceListSubExprs[op,
			DiracProduct[a___, GammaM[\[Mu]_, \[Nu]_], b___]:>
			DiracProduct[a, GammaM@ \[Mu], GammaM@ \[Nu], b] - Metric[\[Mu], \[Nu]] DiracProduct[a, b]] -op,
		ContractMetric/@ ReplaceListSubExprs[op,
			DiracProduct[a___, GammaM[\[Mu]_, \[Nu]_], b___]:>
			Metric[\[Mu], \[Nu]] DiracProduct[a, b] - DiracProduct[a, GammaM@ \[Nu], GammaM@ \[Mu], b]] -op,
		ContractMetric/@ ReplaceListSubExprs[op,
			DiracProduct[a___, Transp@GammaM[\[Mu]_, \[Nu]_], b___]:>
			DiracProduct[a, Transp@GammaM@ \[Nu], Transp@GammaM@ \[Mu], b] - Metric[\[Mu], \[Nu]] DiracProduct[a, b]] -op,
		ContractMetric/@ ReplaceListSubExprs[op,
			DiracProduct[a___, Transp@GammaM[\[Mu]_, \[Nu]_], b___]:>
			Metric[\[Mu], \[Nu]] DiracProduct[a, b] - DiracProduct[a, Transp@GammaM@ \[Mu], Transp@GammaM@ \[Nu], b]] -op
		],
		Nothing
	]


(* ::Subsubsection::Closed:: *)
(*IdentitiesSymmetry*)


(* ::Text:: *)
(*Identifies identically vanishing operators from anti-symmetry of Levi-Civita, e.g., H_i eps_ij H_j in the SM.*)


IdentitiesSymmetry@ op_Operator:= Block[{cgs, rest, ops, pattern, lorTens},
	(*Finds cgs with symmetries*)
	{cgs, rest}= SelectAndDelteCases[op, CG[lab_, inds_]/; 
		Length@ GroupMagic`PackageScope`$CGproperties[lab/. Bar-> Identity, 
			GroupMagic`PackageScope`Symmetries]> 1];
	(*Finds all Lorentz tensors with antisymmetries*)
	{lorTens, rest}= SelectAndDelteCases[rest, _LCTensor| _FieldStrength| 
		NonCommutativeMultiply[__, DiracProduct[___, GammaM[_, __]| Transp@ GammaM[_, __], ___], __]];
	
	If[Length@ cgs + Length@ lorTens === 0, Return@ {}; ];
	
	(*Constructs all posible index permutations with signature*)
	If[Length@ cgs =!= 0,
		cgs= cgs/. CG[lab_, inds_]:> KeyValueMap[{CG[lab, inds[[#1]]], #2} &, GroupMagic`PackageScope`$CGproperties[lab/. Bar-> Identity, 
			GroupMagic`PackageScope`Symmetries] ];
	];
	
	(*Constructs all Lorentz index permutations with signature*)
	(*Hold is required to avoid automatic simplification to canonical form*)
	If[Length@ lorTens =!= 0,
		lorTens= lorTens/. {
			FieldStrength[lab_, lor_, others__]:> MapAt[Hold@ FieldStrength[lab, #, others]&, 
				PermutationsWithSignature@ lor, {All, 1}],
			LCTensor[inds__]:> MapAt[(Hold[#]/. List-> LCTensor)&, 
				PermutationsWithSignature@ {inds}, {All, 1}],
			NonCommutativeMultiply[a__, DiracProduct[l___, g:GammaM[_, __], r___], b__]:> 
				MapAt[NonCommutativeMultiply[a, DiracProduct[l, Hold@ #/. List-> GammaM, r], b]&, 
					PermutationsWithSignature[List@@ g], {All, 1}],
			NonCommutativeMultiply[a__, DiracProduct[l___, Transp@ g:GammaM[_, __], r___], b__]:> 
				MapAt[NonCommutativeMultiply[a, DiracProduct[l, Transp@ Hold@ #/. List-> GammaM, r], b]&, 
					PermutationsWithSignature[List@@ g], {All, 1}]
		};
	];
	
	(*Constructs all possible versions of the operator with signature*)
	ops= Apply[Times, Transpose/@ Tuples@  Join[cgs, lorTens], {2}];
	ops= MapAt[Operator[rest, #]&, ops, {All, 1}];
	
	(*Determines the new operator that exactly matches the original. 
	If signs are distinct the operator vanishes.*)
	pattern= OperatorComparisonPattern[ops[[1, 1]]];
	If[ContainsAll[Cases[ops, {pattern, i_}-> i], {1, -1}], {op}, {}]
]


(* ::Text:: *)
(*Returns a list of all permutations of the input with signature *)


PermutationsWithSignature@ inds_:= Block[{out},
	out= {#, Signature@ #}&/@ Permutations@ inds;
	out[[;;, 2]]*= Signature@ inds;
	out
]


(* ::Text:: *)
(*Test pattern constructed from an operator without accounting for the symmetries of CGs *)


OperatorComparisonPattern[op_Operator]:= Module[{indices},
	indices= IndexPatternReplace/@ ContractedIndices@ op;
	op/. indices
]


(* ::Subsubsection::Closed:: *)
(*IdentitiesCGs*)


(* ::Text:: *)
(*Identity related to CG coefficients that can simplify even without any contraction *)
(*\[Epsilon][i1, i2,...] \[Epsilon][j1, j2,...] = \[CapitalSigma] \[Sigma](perm) \[Delta][i1, j1] \[Delta][i2, j2] ...*)


IdentitiesCGs@ op_Operator:= Block[{},
	ReplaceList[op,
		o: HoldPattern@ Operator[CG[ep_eps, inds1_], CG[Bar@ ep_eps, inds2_], rest__]:>
		o- Contract[(Signature@ inds2 Plus@@ (Signature@ # Times@@ Thread@ Delta[inds1, #]&/@ Permutations@ inds2) *
			Operator@ rest)]
	]
]


(* ::Subsubsection::Closed:: *)
(*IdentitiesFierz*)


(* ::Text:: *)
(*Identity related to Fierzing of two fermions bilinears*)


IdentitiesFierz[ op_Operator, opt:OptionsPattern[]]:=
	Join[
		ReplaceList[op, o: HoldPattern@Operator[SP1_NonCommutativeMultiply,SP2_NonCommutativeMultiply, rest___]/;FbasisQ[SP1,SP2]:>
		o- Operator[Fierz[SP1*SP2*rest, Order->{1,4,3,2},opt]]],
		ReplaceList[op, o: HoldPattern@Operator[SP1_NonCommutativeMultiply,SP2_NonCommutativeMultiply, rest___]/;FbasisQ[SP1,SP2]:>
		o- Operator[Fierz[SP1*SP2*rest, Order->{1,3,4,2},opt]]]
	]


(* ::Subsection::Closed:: *)
(*Simplify using rules *)


(* ::Text:: *)
(*Apply the simplification identities to a Lagrangian expression*)
(*(*Explicitly Hermitian simplification identities *)*)


(* ::Text:: *)
(*To ensure the same ordering between Hermitian operator types, the corresponding identities are simultaneously constructed*)


ConstructHermitianSimplificationIdentities[opType_,opt:OptionsPattern[{Basis4D->False}]]:=
		ConstructHermitianSimplificationIdentities[opType,opt]= Module[{identities},

	identities= ConstructOperatorIdentities[opType,opt];

	If[SelfConjugateClassQ@ opType, Return@ identities];

	(*For complex-type classes the conjugate identities are constructed*)
	ConstructConjugateCompounds@ opType;
	Join[identities,
		identities/.
			AtomicToOpReplacementPattern@ opType/.
			op_Operator:> OperatorBar@ op/.
			OpToAtomicReplacementPattern@ OpClassConjugate@ opType/.
			c_Complex:> Conjugate@ c/.
			CompOp[id_, inds_]:> CompOp[MapAt[OpClassConjugate, id, 1],
				inds[[$compoundOperators[First@ id, id, ConjugateIndexPermutation]]]]/.
			HoldPattern[Times[-1, x_]-> y_] :> Rule[x, -y] (*account for posibility of -1 from conjugation*)
	]
]


(* ::Subsubsection::Closed:: *)
(*IBP Simplification function*)


(* ::Text:: *)
(*Applies the operator identities to a given pattern *)


IBPSimplify[expr_,opt:OptionsPattern[{Basis4D->False}]]:= Module[{out, opTypes, subs, type, evaopt},
	
	If[OptionValue@Basis4D === Evanescent, evaopt=True, evaopt=False];
	out=If[OptionValue@Basis4D || evaopt, 
			RemoveLCTensor[GammaReduction[ expr, Evanescent->evaopt], Evanescent->evaopt],
			expr
		];

	out= AbsorbGaugeCouplings@ MatchOperatorPatterns@ out;

	(*Determine identities for each group of operator types*)
	(*opTypes= DeleteDuplicates@ Cases[out, AtomicOp[{type_, _}, _]:> type, All];*)
	opTypes= DeleteDuplicatesBy[Cases[out, AtomicOp[{type_, _}, _]:> type, All],
		Sort@ {#, OpClassConjugate@#} &];

	subs= Flatten@ Table[
			(*ConstructOperatorIdentities@ type*)
			ConstructHermitianSimplificationIdentities[type,opt]
		, {type, opTypes}];
	
	out= out/. subs// ExprFlavorCanonize// ReextractGaugeCouplings
]


(* ::Subsubsection::Closed:: *)
(*Absorb and extract gauge couplings from fields *)


(* ::Text:: *)
(*Absorb a gauge coupling into every single field-strength tensor*)


AbsorbGaugeCouplings@ expr_:= expr/. {
	op:AtomicOp[id_, _]:> op/ $operators[First@ id, id, GaugeCouplings],
	op:CompOp[id_, _]:> op/ $compoundOperators[First@ id, id, GaugeCouplings]
};


(* ::Text:: *)
(*Extract a gauge coupling from every field-strength tensor*)


ReextractGaugeCouplings@ expr_:= expr/. {
	op:AtomicOp[id_, _]:> op* $operators[First@ id, id, GaugeCouplings],
	op:CompOp[id_, _]:> op* $compoundOperators[First@ id, id, GaugeCouplings]
};


(* ::Subsection:: *)
(*Output functions*)


(* ::Subsubsection::Closed:: *)
(*Scoped simplification functions*)


(* ::Text:: *)
(*Simplification function outputting the Lagrangian either in Operator form or in the internal representation (e.g. AtomicOp) *)


Options@ InternalSimplify= {InternalOpRepresentation-> False}


InternalSimplify[expr_, OptionsPattern[]]:= Module[{out},
	(*Basis4D opt here?*)
	out= CollectCoefficientsWithSyms@ IBPSimplify@ ContractDelta@ ContractCGs@ expr;
	If[OptionValue@ InternalOpRepresentation,
		out
	,
		OpsToFieldForm[out, NormalForm-> False]	
	]
];


(* ::Subsubsection::Closed:: *)
(*Main Exported simplification function*)


(* ::Text:: *)
(*Output to NormalForm for the operators *)


GreensSimplify[arg_,opt:OptionsPattern[{Basis4D->False}]]:= Block[{expr=BetterExpand@HcExpand[arg], consts},
	(* subtract off constants *)
	consts= Last[Last@Reap[
		expr= Replace[
			expr,
			a_/;(FreeQ[a,_Field,All]&&FreeQ[a,_FieldStrength,All]):>(Sow[a]; 0),
			If[Head@expr===Plus,1,0]
		]
	],{}];
	
	(* simplifications *)
	LagrangianLikeCheck@ expr;
	expr= OpsToFieldForm@ CollectCoefficientsWithSyms@ IBPSimplify[ ContractDelta@ ContractCGs@ expr,opt];

	(* add back the constants *)
	expr + (Plus@@consts)
]


(* ::Subsubsection::Closed:: *)
(*Return simplification identities *)


(* ::Text:: *)
(*Returns simplifications rules determined by ConstructOperatorIdentities to reduce operators from an operator class to the basis*)


IBPIdentities::args= "SelectOperatorClass[fields, devNo] takes two arguments.";


SetAttributes[IBPIdentities, HoldFirst];
IBPIdentities[fields_List, devs_Integer]:= Module[{opType, identities},
	opType= Hold@ fields/. Bar-> Conj// ReleaseHold;
	MatterFieldListCheck@ opType;
	DevNoCheck@ devs;

	opType= {opType// Sort, devs};
	If[!MemberQ[Keys@ $operators, opType],
		Return@ {};
	];
	(*Remove compound definitions:*) (*Basis4D opt here?*)
	identities= DeleteCases[ConstructOperatorIdentities@ opType, Rule[_CompOp, _]];
	identities/. Verbatim[Pattern][x_, Blank[]]-> x// OpsToFieldForm
]


IBPIdentities@ ___:= (Message[IBPIdentities::args]; Abort[];);


(* ::Subsection::Closed:: *)
(*HcSimplification*)


(* ::Text:: *)
(*Collect Hermitian conjugate terms in a Lagrangian*)


HcTerms@ 0= 0;
Bar@HcTerms[arg___]:=HcTerms[arg]


HcExpand[Lag_]:= Lag /.{HcTerms[expr_]:> expr + Bar@expr} ;


(* ::Subsubsection:: *)
(*HcSimplify*)


HcSimplify::nothermitian = "The Lagrangian is not hermitian."


(* ::Text:: *)
(*This implementation of HcSimplify proceeds under the assumption that the Lagrangian is explicitly Hermitian after application of InternalSimplify*)


HcSimplify@ expr_:= Module[{complex, out, real},
	If[GreensSimplify[expr- Bar@ expr] =!= 0, 
		Message[HcSimplify::nothermitian];
		Abort[];	
	];
	
	out= InternalSimplify[expr, InternalOpRepresentation-> True];
	If[out === 0, Return@ 0;];
	out= If[Head@ out =!= Plus, {out}, List@@ out];
	
	real= Cases[out, (Times[op:(_AtomicOp|_CompOp), rest__]|op:(_AtomicOp|_CompOp) )/; RealOpQ@ op:> 
		{op, Times@ rest}];
	complex= Cases[out, (Times[op:(_AtomicOp|_CompOp), rest__]|op:(_AtomicOp|_CompOp))/; !RealOpQ@ op:> 
		{op, Times@ rest}];
	complex= DeleteDuplicatesBy[complex, (Sort@ {#, MapAt[OpClassConjugate, #, 1]}&@* First@* First)];
	
	out= Plus@@ Times@@@ real + HcTerms[Plus@@ Times@@@ complex];
	
	OpsToFieldForm@ out
]


(* ::Text:: *)
(*Test if an AtomicOp is real or complex (exception if the operator is a kinetic term)*)


RealOpQ@ op:AtomicOp[id:{opClass_, _}, _]:= $operators[opClass, id, SelfConjugate] || 
	KineticOpQ@ OpsToFieldForm[op, NormalForm-> False];
RealOpQ@ CompOp[id:{opClass_, _}, _]:= 
	$compoundOperators[opClass, id, SelfConjugate] =!= False; (*can also be +/-1*)


(* ::Section:: *)
(*Coupling collection*)


(* ::Subsection::Closed:: *)
(*Collect all couplings in a Pattern*)


(* ::Text:: *)
(*Provides methods to collect groups of couplings accounting for naming of repeated indices and coupling symmetries*)


nonTrivCouplingPattern= Coupling[_, {__}, _]| Bar@ Coupling[_, {__}, _]| Power[Coupling[_, {_}, _], _]| _Delta;


(* ::Subsubsection::Closed:: *)
(*Construct Coupling Pattern *)


(* ::Text:: *)
(*Makes a replacement pattern corresponding to a given combination of the couplings. *)


CoefficientPattern[coups:PseudoTimes[nonTrivCouplingPattern..]]:= Module[
		{indices, out, couplingRules},
	(*Replace repeated indicies with patterns*)
	indices= DeleteCases[Tally@ Cases[coups, Index[__], All], {i_, 1}][[;;, 1]];
	indices= With[{temp= Unique@ First@ #}, Rule[#, Pattern[temp, Blank[]]] ]&/@ indices;
	out= coups/. indices;

	(*Build a signed replacement rule*)
	(*couplingRules= Cases[out, c_Coupling-> CouplingPattern@ c];*)
	couplingRules= CouplingPattern/@ List@@ out;
	AppendTo[couplingRules, 1:> coups];
	MapAt[ReleaseHold, RuleDelayed@@ MapThread[PseudoTimes, List@@@ couplingRules], -1]
]


(* ::Text:: *)
(*Constructs a substitution rule with all symmetry permutations of the indices in a coupling pattern -> the sign of the permutation *)


CouplingPattern@ Coupling[lab_, indsPat_, ord_]:= Module[{symsPat, inds, syms, x},
	syms= $CouplingAssociation[lab, Symmetries];
	symsPat= KeyMap[indsPat[[#]]&, syms];
	inds= indsPat/. Verbatim[Pattern][i_, Blank[]]:> i;
	With[{rhs= Normal@ KeyMap[inds[[#]]&, syms],
			lhs= Coupling[lab, x:Alternatives@@ Keys@ symsPat, ord]},
		lhs:> Hold@ (Association@@ rhs)@ x
	]
]

CouplingPattern@ Bar@ Coupling[lab_, indsPat_, ord_]:= Module[{symsPat, inds, syms, x},
	syms= $CouplingAssociation[lab, Symmetries];
	symsPat= KeyMap[indsPat[[#]]&, syms];
	inds= indsPat/. Verbatim[Pattern][i_, Blank[]]:> i;
	With[{rhs= Normal@ KeyMap[inds[[#]]&, syms],
			lhs= Bar@ Coupling[lab, x:Alternatives@@ Keys@ symsPat, ord]},
		lhs:> Hold@ (Association@@ rhs)@ x
	]
]

CouplingPattern@ pow:Power[_Coupling, _]:= pow:> 1;


(*Collect couplings in expression*)
CouplingPattern@ Delta[indsPat__]:= Delta@ OrderlessPatternSequence@ indsPat:> 1;


(* ::Text:: *)
(*Put couplings with flavor indices on the same form*)


IdentifyCouplings@ coef_:= Module[{out= PseudoTimes@ Expand@ coef, couplingContractions, pats= {}},
	(*If only one term, nothing to collect*)
	If[Head@ out =!= Plus, Return@ ReleasePseudoTimes@ out];
	(*All non-trivial coupling contractions*)
	couplingContractions= Cases[out, _PseudoTimes, All];
	couplingContractions= PseudoTimes@@@ DeleteCases[Cases[#,
		nonTrivCouplingPattern]&/@ couplingContractions, {}];

	(*Construct patterns*)
	(*Optimization may be required*)
	While[Length@ couplingContractions> 0,
		AppendTo[pats, CoefficientPattern@ First@ couplingContractions];
		couplingContractions= DeleteCases[couplingContractions, pats[[-1, 1]]];
	];
	(*Remove everything but the coupling patterns from PseudoTimes*)
	out= out//. PseudoTimes[a___, b: Except[nonTrivCouplingPattern]]:>
		b PseudoTimes@ a;
	out/. pats// ReleasePseudoTimes
]


(* ::Subsection::Closed:: *)
(*Collect couplings in operator expression *)


(* ::Text:: *)
(*Collect all operators and organizes their coefficients on canonical form *)


CollectCoefficients@ expr_:= Collect[expr, {_AtomicOp|_CompOp, hbar, \[Epsilon]},
	Simplify@* RelabelIndices@* IdentifyCouplings];


(* ::Subsection::Closed:: *)
(*Collect couplings with operator symmetries *)


CollectCoefficientsWithSyms@ expr_:= Module[{out},
	out=  Collect[expr, {_AtomicOp|_CompOp}];
	
	(*Should be updated when we implement flavor symmetries in the simplification module*)
	out= out/. {
		Times[coef___, op:AtomicOp[id_, inds_]]:> op*
			IdentifyCouplingsWithSyms[Times@ coef, inds, $operators[First@ id, id, Symmetries]],
		Times[coef___, op:CompOp[id_, inds_]]:> op*
			IdentifyCouplingsWithSyms[Times@ coef, inds, $compoundOperators[First@ id, id, InherentSymmetry]]
	};
	Collect[out, {_AtomicOp|_CompOp, hbar, \[Epsilon]}, Simplify@* RelabelIndices]
]


IdentifyCouplingsWithSyms[coef_, opInds_, syms_]:= Module[
		{out= PseudoTimes@ Expand@ coef, couplingContractions, pats= {}},
	(*If only one term, nothing to collect*)
	If[Head@ out =!= Plus, Return@ ReleasePseudoTimes@ out];
	(*All non-trivial coupling contractions*)
	couplingContractions= Cases[out, _PseudoTimes, All];
	couplingContractions= PseudoTimes@@@ DeleteCases[Cases[#,
		nonTrivCouplingPattern]&/@ couplingContractions, {}];

	(*Construct patterns*)
	(*Optimization may be required*)
	While[Length@ couplingContractions> 0,
		AppendTo[pats, CoefficientPatternWithSyms[First@ couplingContractions, opInds, syms]];
		couplingContractions= DeleteCases[couplingContractions, pats[[-1, 1]]];
	];
	(*Remove everything but the coupling patterns from PseudoTimes*)
	out= out//. PseudoTimes[a___, b: Except[nonTrivCouplingPattern]]:>
		b PseudoTimes@ a;
	out/. pats// ReleasePseudoTimes
]


CoefficientPatternWithSyms[coups:PseudoTimes[nonTrivCouplingPattern..], opInds_, syms_]:= Module[
		{openInds, perm, repInds, out, couplingRules, openSign, cond},
	(*Replace repeated indicies with patterns*)
	repInds= Tally@ Cases[coups, Index[__], All];
	repInds= DeleteCases[repInds, {i_, 1}][[;;, 1]];
	
	repInds= With[{temp= Unique@ First@ #}, Rule[#, Pattern[temp, Blank[]] ] ]&/@ repInds;
	openInds= With[{temp= Unique@ First@ #}, Rule[#, Pattern[temp, Blank[]] ] ]&/@ opInds;
	out= coups/. repInds/. openInds;
	
	openSign= KeyMap[opInds[[#]]&, Association@ syms];
	openInds= openInds[[;;, 2, 1]];
	cond= MemberQ[Keys@ openSign, openInds];
	
	(*Build a signed replacement rule*)
	couplingRules= CouplingPattern/@ List@@ out;
	With[{os= openSign, oi= openInds},
		AppendTo[couplingRules, 1:> coups* Hold[os@ oi]];
	];
	
	out= MapAt[ReleaseHold, RuleDelayed@@ MapThread[PseudoTimes, List@@@ couplingRules], -1];
	With[{os= Keys@ openSign, oi= openInds},
		MapAt[(Condition[#, MemberQ[os, oi]]&), out, 1]
	]
]
