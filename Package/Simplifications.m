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


(* ::Subsubsection::Closed:: *)
(*Exported*)


PackageExport["GreensSimplify"]
PackageExport["IBPIdentities"]


PackageExport["CollectOperators"]
PackageExport["SelectOperatorClass"]


PackageExport["HcSimplify"]
PackageExport["HcExpand"]
PackageExport["HcTerms"]


(* ::Subsubsection::Closed:: *)
(*Internal*)


PackageScope["Operator"]
PackageScope["NormalForm"]
PackageScope["EoM"]


PackageScope["IBPSimplify"]
PackageScope["IBPSimplify19"]


PackageScope["Conj"]
PackageScope["AtomicOp"]
PackageScope["CompOp"]
PackageScope["ConstructOperatorIdentities"]
PackageScope["ResetOperatorAssociations"]
PackageScope["$operators"]
PackageScope["$compoundOperators"]
PackageScope["OperatorType2"]


(* ::Section:: *)
(*Usage messages*)


(* ::Subsubsection::Closed:: *)
(*Exported*)


CollectOperators::usage= "CollectOperators[expr] collects all identical operators (under index relabeling and obvious symmetries) in an expression."
SelectOperatorClass::usage= "SelectOperatorClass[expr, fields, devNo] selects all terms in the expression with operators consisting of the specified matter fields (including Bars) and number of derivatives. Field strength tensors count as 2 derivatives."


GreensSimplify::usage= "GreensSimplify[expr] simplifies an expression with IBP identities and commutation relations."
IBPIdentities::usage= "IBPIdentities[fields, devNo] returns a list with all the integration-by-part identities used by GreensSimplify for the class of operators consisting of the exact matter fields (including Bars) and the specified number of derivatives. Field strength tensors count as 2 derivatives."


HcSimplify::usage="HcSimplify[Lagrangian] identifies terms with their hermitian conjugate and retains only one of them under the head HcTerms.";
HcExpand::usage="HcExpand[Lagrangian] expands the head HcTerms to return both the operators and their hermitian conjugate.";
HcTerms::usage="HcTerms[expr] is a placeholder that contain terms whose hermitian conjugate have been removed form the Lagrangian with HcSimplify.";


(* ::Subsubsection::Closed:: *)
(*Scoped*)


EoM::usage="EoM[A_] is a field operator in the form of the equations of motion of a field.";
Operator::usage="Operator[x] separates prefactors from field operators and puts the expressions into forms that can more easily be processed by the reduction algorithms.";


(* ::Chapter:: *)
(*Private:*)


(* ::Section:: *)
(*Operator part*)


(* ::Subsection::Closed:: *)
(*Operator object*)


(* ::Subsubsection:: *)
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

(*Operator[a_? (FreeQ[Field| FieldStrength| CG| LCTensor]), b___]:= a Operator@ b;*)
Operator[a_/; FreeQ[a, Field| FieldStrength| CG| LCTensor], b___]:= a Operator@ b;

Operator[Power[a_, n_Integer? Positive], b___]:= Operator[Sequence@@ ConstantArray[a, n], b];

Operator[]:= 1;


(* ::Subsubsection:: *)
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


(* ::Subsubsection:: *)
(*NormalForm, rewriting Operator and EoM objects*)


(* ::Text:: *)
(*Function for bringing Operator objects back into normal form while expanding any EoM objects. *)


Options@ NormalForm= {Unique-> True};


NormalForm[expr_, OptionsPattern[]]:= 
	CanonizeKineticalOps[expr]/. op:_Operator:> Activate@ RelabelIndices[Inactive[Times]@@ op//. {
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


CanonizeKineticalOps@ expr_:= 
	expr/. {
		Operator[Bar@ Field[f1_, Scalar, inds1_, {}], EoM@ Field[f2_, Scalar, inds2_, {}]]:>
			-Operator[Bar@ Field[f1, Scalar, inds1, {Index[Global`d$$1, Lorentz]}], Field[f2, Scalar, inds2, {Index[Global`d$$1, Lorentz]}]],
		Operator[Field[f1_, Scalar, inds1_, {}], EoM@ Field[f2_, Scalar, inds2_, {}]]:>
			-Operator[Field[f1, Scalar, inds1, {Index[Global`d$$1, Lorentz]}], Field[f2, Scalar, inds2, {Index[Global`d$$1, Lorentz]}]]		
	};


(* ::Subsection::Closed:: *)
(*Operator classification*)


(* ::Text:: *)
(*Operator class discriminator *)


OperatorType2@ op_Operator:= Module[{devs= 0, fields, temp},
	devs+= Plus@@ Cases[op, EoM@ (Bar|Transp)@ Field[_, type_, __]:> EOMDevs@ type, All];
	devs+= Plus@@ Cases[op, EoM@ Field[_, type_, __]:> EOMDevs@ type, All];
	devs+= Plus@@ Cases[op, FieldStrength[___, linds_]:> 2+ Length@ linds, All];
	devs+= Plus@@ Cases[op, Field[___, linds_]:> Length@ linds, All];

	temp= op/. EoM-> Identity;
	fields= Cases[temp, Bar@ Field[lab_, (Scalar|Fermion),__]:> Conj@ lab, All];
	temp= DeleteCases[temp, Bar@ Field[_, (Scalar|Fermion),__], All];
	fields= Join[fields, Cases[temp, Field[lab_, (Scalar|Fermion),__]:> lab, All]];
	{Sort@ fields, devs}
];
EOMDevs@ type_:= Switch[type, Scalar, 2, Fermion, 1, _Vector, 3] ;


(* ::Subsection::Closed:: *)
(*Hermitian conjugate simplification*)


HcSimplify::Hcnotfound= "The hermitian conjugate of the term `1` could not be identified."
HcSimplify::nothermitian= "The Lagrangian is not hermitian."
HcSimplify::Hcfailed= "HcSimplify failed."


HcSimplify[Lagrangian_]:=Module[{nonhcterms, nonhctermsext, selfhcterms, pairs, singles, n1, n2, indexlist, output, Lag=Contract@GreensSimplify@Lagrangian,i},
	(*If[!HermitianQ[Lag],Message[HcSimplify::nothermitian];Abort[]];*)
	If[Head@Lag=!=Plus (*&& HermitianQ@Lag*), Return[Lagrangian]];
	(*Identify self-hermitian terms and others*)
	selfhcterms = Select[Lag, HermitianQ[#]&];
	If[selfhcterms===Lag, Return[Lagrangian]];
	nonhcterms = List@@(Expand[Lag-selfhcterms]);
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
		If[(n1=Count[nonhcterms[[#[[1]]]],_Bar, Infinity]) == (n2=Count[nonhcterms[[#[[2]]]],_Bar, Infinity]),
			#[[1]],
			If[n1>n2,
				#[[1]],
				#[[2]]
				]
			]
		]&/@pairs;
	nonhcterms = Delete[nonhcterms,List/@indexlist];
	(*Write Lagrangian with +H.c.*)
	output = CollectOperators@selfhcterms + HcTerms[CollectOperators[Plus@@nonhcterms]];
	If[GreensSimplify@(HcExpand@output -Lagrangian)  =!= 0, Message[HcSimplify::Hcfailed];Return[Lagrangian]];
	output
	]
	
HcTerms[0]:=0;
HcExpand[Lag_]:= Lag /.{HcTerms[expr_]:> expr + Bar@expr} ;


Bar@HcTerms[arg___]:=HcTerms[arg]


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


(* ::Subsection::Closed:: *)
(*Construct operator matching patterns*)


(* ::Subsubsection:: *)
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


(* ::Subsubsection:: *)
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
			(*Permute[Range@ Length@ fieldTypes, FindPermutation[fieldTypes, Conj@ fieldTypes]]*)
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
	
	(*Groups all operators in expression*)
	ops= DeleteDuplicates@ Cases[out, _Operator, All];
	ops= GroupBy[ops, OperatorClass];
	
	(*If new operators are encountered, new patterns are constructed*)
	KeyValueMap[MakeNewOperatorPatterns[##, OptionValue@ ResetIdentities]&, ops];

	out/. OpToAtomicReplacementPattern[]
];


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
		operatorClass, operatorClassConj, pat, rules, notselfConjugate, remainingOps= opList, temp},
	(*Find patterns for the previously encountered operators*)
	operatorClass= Lookup[$operators, Key@ opType, <||>];
	rules= Query[All, Key@ OperatorMatchingPattern, First]@ operatorClass;
	
	(*Check class is syncronized with its conjugate*)
	If[(notselfConjugate= !SelfConjugateClassQ@ opType),
		operatorClassConj= Lookup[$operators, Key[conjOpType= OpClassConjugate@ opType], <||>];
		If[Length@ operatorClass =!= Length@ operatorClassConj,
			Message[MakeNewOperatorPatterns::outofsync, opType];
		];
	];
	
	remainingOps= DeleteCases[remainingOps, Alternatives@@ rules];
	If[Length@ remainingOps === 0, Return[];];

	(*Loops through the unidentitfied operators, creating new patterns for them*)
	nextID= Length@ operatorClass+ 1; pat= Alternatives[];
	newOps= Association@@ Reap[Do[
			If[MatchQ[pat]@ op, Continue[]; ];
			temp= OperatorProperties[{opType, nextID}, op];
			AppendTo[pat, First@ temp@ OperatorMatchingPattern];
			If[notselfConjugate,
				operatorClassConj@ {conjOpType, nextID}= 
					OperatorProperties[{conjOpType, nextID}, OperatorBar@ op];
			];
			Sow[{opType, nextID++}-> temp];
		, {op, remainingOps}]][[2, 1]];
	
	(*Add the conjugate operators*)
	If[notselfConjugate,
		$operators@ conjOpType= operatorClassConj;
	];
	$operators@ opType= operatorClass~ Join~ newOps;
	
	(*Reset simplification identities*)
	Quiet@ If[resetIdentities,
		ConstructHermitianSimplificationIdentities@ opType=.;
		If[notselfConjugate,
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


(* ::Subsubsection::Closed:: *)
(*Canonize flavor indices in expression*)


(* ::Text:: *)
(*Ensure that the AtomicOp/CompOp object in each terms of an expression carries canonical indices*)


ExprFlavorCanonize@ HoldPattern@ Times[couplings__?(FreeQ[Operator]), op:((AtomicOp|CompOp)[_, inds_])]:= Block[
		{indReplace= Thread@ Rule[inds, ConstructDummyIndices@ inds[[;;, 2]]]},
	RelabelIndices[RelabelIndices[Times@ couplings, Unique-> True]/. indReplace] (op/. indReplace)
];
ExprFlavorCanonize@ expr_:= Block[{out=BetterExpand@ expr},
	If[Head@ out === Plus, ExprFlavorCanonize/@ out, out]
];


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
		{hcCombinations+ conjugated, 
			sharedProps ~Join~ <|FlavorSymmetry-> #, SelfConjugate-> +1|>&/@ symmetryReps[[1]]}, 
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
			OperatorBar[AtomicOp[atomicID, dummies]/. AtomicToOpReplacementPattern@ opType]/. 
				OpToAtomicReplacementPattern@ OpClassConjugate@ opType// Last
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
			AtomicOp[_, inds_]:> AtomicOp[MapAt[OpClassConjugate, atomicID, 1], inds[[indPermutation]]]
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


CollectOperators@ expr_:= Block[{out},
	LagrangianLikeCheck@ expr;
	
	out= MatchOperatorPatterns@ expr;
	out= CollectCoefficients@ ExprFlavorCanonize@ out;
	NormalForm[out/. AtomicToOpReplacementPattern[], Unique-> False]
];


(* ::Subsubsection::Closed:: *)
(*Extract operator class*)


(* ::Text:: *)
(*Extract all operators of a certain class from an expression*)


SelectOperatorClass::args= "SelectOperatorClass[expr, fields, devNo] takes three arguments.";


SetAttributes[SelectOperatorClass, HoldAll];
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


(* ::Section:: *)
(*IbP Simplify (v17)*)


(* ::Subsection::Closed:: *)
(*Construct identities *)


(* ::Text:: *)
(*Function to make a minimal viable set of identities (in the form of substitution rules) governing an operator class*)
(*N.b. these can be cashed for performance*)


ConstructOperatorIdentities@ opType_:= Module[
	{opID= 1, dummies, identities, indexToPattern, lhs, op, opIdentities, ordering, 
		operators, indPerms, revOrdering, rhs},
			
	If[!KeyExistsQ[$operators, opType], Return@ {}; ];
	
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
				IdentitiesCGs
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
	
	(*Determine non-redundant set of operators and indexpermutations*)
	operators= Join@@ KeyValueMap[
		Function[{id, prop}, Thread@ {AtomicOp[id, dummies[[#]]]&/@ prop@ InequivalentPermutations, prop@ Score}], 
		$operators@ opType];
	(*Nb. With larger flavor symmetries, multiple inequivalent indices will be needed*)
	operators= operators~ Join~ KeyValueMap[
		{CompOp[#1, dummies], #2@ Score}&, 
		$compoundOperators@ opType];	
	
	(*Order the operators according to IBPScore*)
	{operators, ordering}= Transpose@ operators;
	ordering= Ordering@ ordering;
	operators= operators[[ordering]];

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


(* ::Subsection::Closed:: *)
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
			
	]


(*opIdentities= Join[opIdentities,
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
			];*)


(* ::Subsubsection::Closed:: *)
(*IdentitiesSymmetry*)


(* ::Text:: *)
(*Identifies identically vanishing operators from anti-symmetry of Levi-Civita, e.g., H_i eps_ij H_j in the SM.*)
(*N.b. Should be generalized for better performance in other cases!   *)


IdentitiesSymmetry@ op_Operator:= Block[{},
	If[MatchQ[op, Alternatives[
			HoldPattern@Operator[Field[f_, Scalar, {i_}, {mu___}], Field[f_, Scalar, {j_}, {mu___}], 
				CG[_eps| Bar@ _eps, {k_, l_}], ___],
			HoldPattern@Operator[Bar@ Field[f_, Scalar, {i_}, {mu___}], Bar@ Field[f_, Scalar, {j_}, {mu___}], 
				CG[_eps| Bar@ _eps, {k_, l_}], ___]
		]/; SubsetQ[{i, j}/. Bar-> Identity, {k, l}/. Bar-> Identity] ],
		{op}
	,
		{}
	]
];


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


(* ::Subsection:: *)
(*Simplify using rules *)


(* ::Subsubsection::Closed:: *)
(*Explicitly Hermitian simplification identities *)


(* ::Text:: *)
(*To ensure the same ordering between Hermitian operator types, the corresponding identities are simultaneously constructed*)


ConstructHermitianSimplificationIdentities@ opType_:= 
		ConstructHermitianSimplificationIdentities@ opType= Module[{identities},

	identities= ConstructOperatorIdentities@ opType;

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
				inds[[$compoundOperators[First@ id, id, ConjugateIndexPermutation]]]]
	]
]


(* ::Subsubsection::Closed:: *)
(*IBP Simplification function*)


(* ::Text:: *)
(*Applies the operator identities to a given pattern *)


IBPSimplify17@ expr_:= Module[{out, opTypes, subs, type},	
	out= AbsorbGaugeCouplings@ MatchOperatorPatterns@ expr;
	
	(*Determine identities for each group of operator types*)
	(*opTypes= DeleteDuplicates@ Cases[out, AtomicOp[{type_, _}, _]:> type, All];*)
	opTypes= DeleteDuplicatesBy[Cases[out, AtomicOp[{type_, _}, _]:> type, All], 
		Sort@ {#, OpClassConjugate@#} &];
	subs= Flatten@ Table[
			(*ConstructOperatorIdentities@ type*)
			ConstructHermitianSimplificationIdentities@ type
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
(*Output to Operator form *)


IBPSimplify[L_]:=Collect[
	OpsToFieldForm[IBPSimplify17@ ContractDelta@ ContractCGs@ L, NormalForm-> False],
	{_Operator, _Coupling}]


IBPSimplify19@ expr_:= OpsToFieldForm[
	CollectCoefficients@ IBPSimplify17@ ContractDelta@ ContractCGs@ expr, NormalForm-> False]


(* ::Subsubsection::Closed:: *)
(*Main Exported simplification function*)


(* ::Text:: *)
(*Output to NormalForm for the operators *)


GreensSimplify@ expr_:= Block[{},
	LagrangianLikeCheck@ expr;
	OpsToFieldForm@ CollectCoefficients@ IBPSimplify17@ ContractDelta@ ContractCGs@ expr	
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
	(*Remove compound definitions:*)
	identities= DeleteCases[ConstructOperatorIdentities@ opType, Rule[_CompOp, _]];
	identities/. Verbatim[Pattern][x_, Blank[]]-> x// OpsToFieldForm
]


IBPIdentities@ ___:= (Message[IBPIdentities::args]; Abort[];);


(* ::Section:: *)
(*Coupling collection*)


(* ::Subsection::Closed:: *)
(*Collect all couplings in a Pattern*)


(* ::Text:: *)
(*Provides methods to collect groups of couplings accounting for naming of repeated indices and coupling symmetries*)


nonTrivCouplingPattern= Coupling[_, {__}, _]| Bar@ Coupling[_, {__}, _]| Power[Coupling[_, {_}, _], _];


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


(* ::Subsubsection::Closed:: *)
(*Collect couplings in expression*)


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
