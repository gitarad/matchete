(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`LoopIntegration`*)


(* ::Subtitle:: *)
(*Procedures for evaluating one-loop integrals and CDE*)


(* ::Chapter:: *)
(*Public:*)


(* ::Section:: *)
(*Scoping*)


(* ::Subsubsection::Closed:: *)
(*Exported*)


PackageExport["\[Mu]bar2"]
PackageExport["hbar"]
PackageExport["\[Epsilon]"]
PackageExport["LF"]


PackageExport["EvaluateLoopFunctions"]


(* ::Subsubsection::Closed:: *)
(*Internal*)


PackageScope["EpsExpand"]


PackageScope["Prop"]
PackageScope["InvProp"]
PackageScope["LoopMom"]


PackageScope["LoopIntegrate"]
PackageScope["LFFull"]
PackageScope["LFFull2LF"]
PackageScope["CanonizeLoopFunctions"]
PackageScope["ReduceLoopFunctions"]
PackageScope["SimplifyMassFunction"]


PackageScope["GatherLoopMomenta"]
PackageScope["SymmetricLorentzInds"]
PackageScope["EvaluateSymmetricLorentzInds"]
PackageScope["AllUnorderedPairs"]


PackageScope["ev"]


PackageScope["SymGammaFactor"]


(* ::Section:: *)
(*Usage definitions*)


(* ::Subsubsection::Closed:: *)
(*Exported*)


\[Mu]bar2::usage=
"\!\(\*SuperscriptBox[\(\[Mu]\), \(2\)]\) is the matching scale squared.";
hbar::usage=
"\[HBar] is the power-counting parameter for the loop-order in an expression. It is understood as a \!\(\*FractionBox[\(1\), \(16 \*SuperscriptBox[\(\[Pi]\), \(2\)]\)]\) factor in the final result.";
\[Epsilon]::usage=
"\[Epsilon] is the parameter defined by expanding the space-time dimension \[ScriptD] around four dimensions, i.e. \[ScriptD]=4-2\[Epsilon].";
LF::usage=
"LF[{\!\(\*SubscriptBox[\(m\), \(1\)]\),...,\!\(\*SubscriptBox[\(m\), \(n\)]\)},{\!\(\*SubscriptBox[\(i\), \(1\)]\),..., \!\(\*SubscriptBox[\(i\), \(n\)]\), \!\(\*SubscriptBox[\(i\), \(n + 1\)]\)}] is a placeholder for the finite piece of the loop integration performed over \!\(\*FractionBox[\(1\), \(\(\*SuperscriptBox[\((\*SuperscriptBox[\(k\), \(2\)] - \*SuperscriptBox[SubscriptBox[\(m\), \(1\)], \(2\)])\), SubscriptBox[\(i\), \(1\)]] ... \) \*SuperscriptBox[\((\*SuperscriptBox[\(k\), \(2\)] - \*SuperscriptBox[SubscriptBox[\(m\), \(n\)], \(2\)])\), SubscriptBox[\(i\), \(n\)]] \*SuperscriptBox[\((\*SuperscriptBox[\(k\), \(2\)])\), SubscriptBox[\(i\), \(n + 1\)]]\)]\) where k is the loop momentum.";


EvaluateLoopFunctions::usage=
"EvaluateLoopFunctions[expr] replaces the placeholders LF in expr with the appropriate finite pieces. ";


(* ::Subsubsection::Closed:: *)
(*Internal*)


EpsExpand::usage=
"EpsExpand[expr,Order->n] expands an expression to nth order (by default 0) in \[Epsilon], the regulator from dimensional regularization, after replacing the space-time dimension \[ScriptD] by 4-2\[Epsilon]."


InvProp::usage=
"InvProp[m] is the inverse propagator: \!\(\*SuperscriptBox[\(k\), \(2\)]\)-\!\(\*SuperscriptBox[\(m\), \(2\)]\), where k is the loop momentum.";
LoopMom::usage=
"LoopMom, or LoopMom[Index[\[Mu],Lorentz]], is the momentum running inside the loop.";


LoopIntegrate::usage=
"LoopIntegrate[expr] performs the scalar integral over the loop momentum propagators in the expression, written in the form: InvProp[m1\!\(\*SuperscriptBox[\(]\), \(-i1\)]\)...InvProp[mn\!\(\*SuperscriptBox[\(]\), \(-in\)]\)InvProp[0\!\(\*SuperscriptBox[\(]\), \(j\)]\)."
LFFull::usage="LFFull[{\!\(\*SubscriptBox[\(m\), \(1\)]\),...,\!\(\*SubscriptBox[\(m\), \(n\)]\)},{\!\(\*SubscriptBox[\(i\), \(1\)]\),..., \!\(\*SubscriptBox[\(i\), \(n\)]\), \!\(\*SubscriptBox[\(i\), \(n + 1\)]\)}] is a placeholder for the loop integration (including divergent pieces) performed over \!\(\*FractionBox[\(1\), \(\(\*SuperscriptBox[\((\*SuperscriptBox[\(k\), \(2\)] - \*SuperscriptBox[SubscriptBox[\(m\), \(1\)], \(2\)])\), SubscriptBox[\(i\), \(1\)]] ... \) \*SuperscriptBox[\((\*SuperscriptBox[\(k\), \(2\)] - \*SuperscriptBox[SubscriptBox[\(m\), \(n\)], \(2\)])\), SubscriptBox[\(i\), \(n\)]] \*SuperscriptBox[\((\*SuperscriptBox[\(k\), \(2\)])\), SubscriptBox[\(i\), \(n + 1\)]]\)]\) where k is the loop momentum."
LFFull2LF::usage="LFFull2LF takes an expression with LFFull, and separates the loop function into divergent and finite pieces, the latter given in terms of LF."


ExtractMomenta::usage=
"Extract slashed LoopMom from DiracProduct by replace product of momentum vectors with symmetrized product of metrics,
e.g. LoopMom[Index[mu, Lorentz]] LoopMom[Index[nu, Lorentz]] -> Prop[0]^-1 Metric[Index[mu, Lorentz], Index[nu, Lorentz]] /\[ScriptD], etc.";


ev::usage=
"Dummy label for evanescent operators."


(* ::Chapter:: *)
(*Private:*)


(* ::Section:: *)
(*Momentum integrals*)


(* ::Subsection:: *)
(*Properties*)


(* ::Text:: *)
(*Proporties of loop labels 'hbar' and 'ev,'  used to account for ordering of terms *)


(* ::Subsubsection::Closed:: *)
(*hbar *)


(* ::Text:: *)
(*Dummy label counting loop order*)


Bar@hbar ^:=hbar
Transp@hbar ^:=hbar


Bar@\[Mu]bar2 ^:=\[Mu]bar2
Transp@\[Mu]bar2 ^:=\[Mu]bar2


(* ::Text:: *)
(*Limit to one - loop order*)


hbar^x_/;x>=2 ^:= 0


(* ::Subsubsection::Closed:: *)
(*ev*)


(* ::Text:: *)
(*Dummy label for evanescent operators*)


ev^x_/;x>=2 ^:= ev;


(* ::Subsection:: *)
(*Epsilon expansion*)


(* ::Text:: *)
(*Function for expanding an expression around \[Epsilon] = 0, keeping poles and terms up to power 'order.'*)


Options@ EpsExpand= {Order-> 0, Dimensions -> 4};


EpsExpand[expr_, OptionsPattern[]]:= Module[{term, d=OptionValue@Dimensions},
	Sum[
		BetterSeries[term/. SymGammaFactor:> EvaluateGammaFactor/. \[ScriptD]-> d- 2\[Epsilon], {\[Epsilon], 0, OptionValue@Order}]
	, {term, TermsToList@ expr}]
]


(* ::Subsection:: *)
(*Scalar integrals*)


(* ::Subsubsection::Closed:: *)
(*General loop integration function*)


(* ::Text:: *)
(*Performs the 1-loop integral over an expression. Assumes that all loop-momenta occurs in 'Prop' objects. *)


Options@ LoopIntegrate= {Dimensions -> 4};


LoopIntegrate[expr_, opt:OptionsPattern[]]:=Module[{out, d=OptionValue@Dimensions},
	out= Expand[expr* integralType[<||>, 0]];
	out/. integralType[\[Alpha]__]:> ToLoopFunctions[\[Alpha], Dimensions->d]
];


(* ::Subsubsection::Closed:: *)
(*Auxiliary functions*)


(* ::Text:: *)
(*Identifying propagators in the expressions:*)
(*mprops is an association of mass propagators and their corresponding power, for example a denominator 1/((p^2-m1^2)^n1(p^2-m1^2)^n2) reads <|m1->n1,m2->n2|> in mprops.*)
(*\[Alpha] is the power of (1/p^2)^\[Alpha].*)


integralType/: integralType[mprops_, \[Alpha]_] Prop@ 0:= integralType[mprops, \[Alpha]+ 1];
integralType/: integralType[mprops_, \[Alpha]_] Prop@ m_:= integralType[Merge[{mprops, <|m-> 1|>}, Total], \[Alpha]];
integralType/: integralType[mprops_, \[Alpha]_] Power[Prop@ 0, n_]:= integralType[mprops, \[Alpha]+ n];
integralType/: integralType[mprops_, \[Alpha]_] Power[Prop@ m_, n_]:= integralType[Merge[{mprops, <|m-> n|>}, Total], \[Alpha]];


(* ::Subsubsection::Closed:: *)
(*Single scale (and Log term) integrals*)


(* ::Text:: *)
(*SingleScaleIntegral can either evaluate the pole (Pole ->True) or the finite part of the integral (Pole ->False). In the latter case, expansion with respect to \[Epsilon] is already performed.*)


Options@ SingleScaleIntegral= {Pole->False, Dimensions->4};


SingleScaleIntegral[{mass_, \[Beta]_Integer}, \[Alpha]_Integer, OptionsPattern[]]:=
Module[{preFact, d=OptionValue@Dimensions},
	If[\[Beta] <= 0, Return@ 0;];
	preFact= (4\[Pi])^(2-d/2)(-1)^(\[Alpha]+\[Beta]) I mass^(d- 2\[Alpha]- 2\[Beta])/ (Gamma[\[Beta]] Gamma[d/2]);

	If[\[Alpha] >= d/2 && EvenQ[d], (* Expand around IR pole*)
		Return[-preFact Gamma[\[Alpha]+ \[Beta]- d/2] (-1)^(\[Alpha]-d/2)/ (\[Alpha]-d/2)! *
			If[OptionValue[Pole],
				1/\[Epsilon]
			,
				(-HarmonicNumber[\[Alpha]-d/2]+ Log[\[Mu]bar2/ mass^2]+ 1+ PolyGamma[\[Alpha]+\[Beta]-d/2]+ EulerGamma)
			]
		];
	];
	If[\[Alpha]+ \[Beta] <= d/2 && EvenQ[d], (* Expand around UV pole*)
		Return[preFact Gamma[d/2- \[Alpha]] (-1)^(\[Alpha]+\[Beta])/(d/2-\[Alpha]-\[Beta])! *
			If[OptionValue[Pole],
				1/\[Epsilon]
			,
				(+HarmonicNumber[d/2-\[Alpha]-\[Beta]]+ Log[\[Mu]bar2/ mass^2]+ 1- PolyGamma[d/2- \[Alpha]]- EulerGamma)
			]
		];
	];
	If[OptionValue[Pole],
		0
	,
		preFact Gamma[d/2- \[Alpha]]Gamma[\[Alpha]+ \[Beta]- d/2]
	]
];


(* ::Subsubsection::Closed:: *)
(*Multiscale integrals*)


MultiScaleIntegral[propPowers_Association, \[Alpha]_, OptionsPattern[{Pole->False, Dimensions->4}]]:= Module[{mi, pi, mj, temp, isFinite, firstMass, out, d=OptionValue@Dimensions},
	isFinite = ( Plus@@ propPowers + \[Alpha]> d/2 && \[Alpha]<d/2 ) || OddQ[d];
	If[OptionValue[Pole],If[isFinite, Return@ 0;]];
	out= Sum[temp= KeyDrop[propPowers, mi];
		SingleScaleIntegral[{mi, propPowers@ mi - pi}, \[Alpha], Pole -> OptionValue[Pole], Dimensions -> d] /pi! D[Product[Power[M2@ mi -M2@ mj, -propPowers@ mj],
			{mj, Keys@ temp}], {M2@ mi, pi}]
	,{mi, Keys@ propPowers}, {pi, 0, propPowers@ mi -1}]/. M2@ mass_:> mass^2;
	If[isFinite, firstMass = First@Sort@Keys@propPowers; out /. \[Mu]bar2 -> firstMass^2, out]
];


(* ::Subsubsection::Closed:: *)
(*Loop functions *)


(* ::Text:: *)
(*Removes duplicate masses in LF and sum over its powers.*)


LF[m_List?(!DuplicateFreeQ@# &),ind_List]:= Module[{dupm,posm,newind,newm},
	dupm=Select[Tally@m,#[[2]]>1 &][[1,1]];
	posm=First/@Position[m,dupm];
	newind=DeleteCases[(ReplacePart[Append[Association@@(#->xxx&/@posm[[2;;]]),First@posm->Total@(Part[ind,#]&/@posm)]][ind]),xxx];
	newm=DeleteCases[ReplacePart[Association@@(#->xxx&/@posm[[2;;]])][m],xxx];
	LF[newm,newind]
]


(* ::Text:: *)
(*Canonically order the loop function*)


CanonizeLoopFunctions@ expr_:= expr/. lf:LF[{_,__}, _]:> CanonizeLoopFunctions@ lf;


CanonizeLoopFunctions@ LF[masses_, subscripts_]:= Module[{props},
	props= Transpose@ {masses, Most@ subscripts};
	props= Transpose@ SortBy[props, {Minus@* Last, First}];
	LF[First@ props, Append[Last@ props, Last@ subscripts]]
];


(* ::Text:: *)
(*Simplification rules for the loop functions*)


(* Canonical order. WARNING: This ordering is not canonical once flavor indices are considered on masses *)
LFFull[m_?(!OrderedQ[#]&), ord_]:= LFFull[Sort[m],Append[ord[[;;-2]][[Ordering[m]]],ord[[-1]]]]

(* Remove zero entries (other than the last one) *)
LFFull[m_,ord_?(MemberQ[#[[;;-2]],0]&)]:=LFFull[Delete[m,Position[ord[[;;-2]],0]],Append[DeleteCases[ord[[;;-2]],0],ord[[-1]]]]

(* Set to zero scaleless integrals *)
LFFull[{},ord_]:=0


(* ::Text:: *)
(*A factor "i" is extracted from the definition of the loop function, so that it is real*)


ToLoopFunctions[propPowers_Association, \[Alpha]_, OptionsPattern[{Dimensions->4}]]:= Module[{props,full,d=OptionValue@Dimensions},
	props= SortBy[KeyValueMap[{#1, #2}&, propPowers], (-#[[2]]&)];
	full= I LFFull[props[[;;, 1]], props[[;;, 2]] ~ Join ~ {\[Alpha]}];
	LFFull2LF[full, Dimensions->d]
]


LFFull2LF[full_, OptionsPattern[{Dimensions->4}]]:= BetterSeries[Expand@full/. {\[ScriptD]->OptionValue@Dimensions-2\[Epsilon], LFFull[args__]:> LF[args] + EvaluateLoopFunctions[LF[args], Pole -> True, Dimensions->OptionValue@Dimensions]},{\[Epsilon],0,0}]


EvaluateLoopFunctions[LF[denoms_, powers_], opt:OptionsPattern[{Pole->False, Dimensions->4}]]:= 
EvaluateLoopFunctions[LF[denoms, powers], opt]= Module[{association},
	association= Association@@ (#[[1]]->#[[2]]&)/@ Transpose@ {denoms, powers[[;;-2]]};
	-I MultiScaleIntegral[association, Last@ powers, Pole-> OptionValue[Pole], Dimensions-> OptionValue[Dimensions]]//Simplify
]

EvaluateLoopFunctions[expr_, opt:OptionsPattern[{Pole->False, Dimensions->4}]]:= Module[{res,summedInd},
	(* substitute loop functions *)
	res= expr/. lf_LF:> EvaluateLoopFunctions[ lf, Pole-> OptionValue[Pole], Dimensions-> OptionValue[Dimensions]];
	(* expand *)
	res= TermsToList[res];
	(* remove unnecessary FlavorSums *)
	res=Sum[
		If[FreeQ[term,_FlavorSum,All],
			term
			,
			summedInd= FirstCase[term,FlavorSum[ind_]:>ind,Nothing,All];
			If[FreeQ[term/._FlavorSum->1,summedInd,All],
				term/._FlavorSum->DimRep[Last@summedInd],
				term
			]
		]
		,
		{term,res}
	];
	res
]


(* ::Subsection:: *)
(*Numerator momentum structures*)


(* ::Text:: *)
(*Bring momenta to propagator (with zero mass) form.*)


LoopMom/: Power[_LoopMom, 2] := Power[Prop@ 0, -1];


(* ::Subsubsection::Closed:: *)
(*Extract momenta*)


GatherLoopMomenta@ expr_:= CollectMomenta@ ExtractMomenta@ expr


(* ::Text:: *)
(*Extract LoopMom-slashes from DiracProduct*)


ExtractMomenta@ expr_:= expr//. {
		DiracProduct[a___, GammaM@ LoopMom, b___] :>
			Module[{nu}, DiracProduct[a, GammaM@ Index[nu, Lorentz], b] LoopMom@ Index[nu, Lorentz]],
		DiracProduct[a___, Transp@ GammaM@ LoopMom, b___] :>
			Module[{nu}, DiracProduct[a, Transp@ GammaM@ Index[nu, Lorentz], b] LoopMom@ Index[nu, Lorentz]]
	};


(* ::Text:: *)
(*Replaces product of momentum vectors with symmetrized product of metrics, e.g. LoopMom[Index[mu, Lorentz]] LoopMom[Index[nu, Lorentz]] -> Prop[0]^-1 Metric[Index[mu, Lorentz], Index[nu, Lorentz]] /\[ScriptD], etc. *)


CollectMomenta@ expr_:= Module[{out= BetterExpand@ expr},
	If[Head@ out === Plus, Return[CollectMomenta/@ out]; ];
	LoopMoms@@ Cases[out, LoopMom@ l_:> l, All]* (out/. _LoopMom-> 1)
]


LoopMoms[]:= 1;


LoopMoms@ inds__:= If[EvenQ@ Length@ {inds}, Power[Prop@ 0, -Length@ Cases[{inds},Index[_,Lorentz]]/ 2] * SymmetricLorentzInds@ inds, 0];


(* ::Subsubsection::Closed:: *)
(*Evaluating the symmetric tensor *)


(* ::Text:: *)
(*The symmetric Lorentz tensor coming from the product of loop momenta*)


EvaluateSymmetricLorentzInds@ expr_:=
	expr/. SymmetricLorentzInds-> SymmetricLorentzIndsReplacement// ContractMetric;


SetAttributes[SymmetricLorentzInds, Orderless]


SymmetricLorentzInds[a_, a_, rest___]:= SymmetricLorentzInds@ rest;

AllUnorderedPairs[chosenPairs_, remainingItems_] := 
 If[Length[remainingItems] == 0, {chosenPairs},
  Flatten[
   Table[AllUnorderedPairs[
     Append[chosenPairs, {remainingItems[[1]], 
       remainingItems[[chosenItem]]}], 
     Delete[remainingItems, {{1}, {chosenItem}}]],
   {chosenItem, 2, Length[remainingItems]}], 1]]
     
(*This method only works for non-repeating indices due to behavior of Permutations*)
SymmetricLorentzIndsReplacement@ lorentzInds___:= Module[{inds, n, symTensor},
	inds= List@ lorentzInds;
	n= Length@ inds/ 2;
	symTensor= If[OddQ@ Length@ inds, 0,
		Plus@@ Times@@@ Apply[Metric, AllUnorderedPairs[{},inds], {2}]];
	symTensor SymGammaFactor@ n
];


SymGammaFactor@ 0= 1;


EvaluateGammaFactor@ n_Integer:= EvaluateGammaFactor@ n= BetterSeries[Gamma[2- \[Epsilon]]/(2^n Gamma[2- \[Epsilon]+ n]), {\[Epsilon], 0, 1}];


(* ::Subsection:: *)
(*Loop function reduction*)


(* ::Subsubsection::Closed:: *)
(*Simplification of loop function sum*)


(* ::Text:: *)
(*Function to simplify a sum of loop functions \[Dash] a mass function*)
(*The strategy is to reduce the propagator power associated with a given mass to 1, then try this for every possible mass to obtain the best result.*)


SimplifyMassFunction[ expr_Plus, OptionsPattern[{Dimensions->4}]]:= Module[{lfs, out= List@@ expr, keep, simp, temp, types, target, d=OptionValue@Dimensions},
	out= LFtoTempLF@ out;
	types= SortBy[FirstCase[#, TempLF[masses_, _]:> masses, {}, All]&/@ out// DeleteDuplicates, 
		Minus@* Length];
	Do[
		If[Length@ masses< 2, Continue[];];
		{keep, simp}= SelectAndDeleteCases[out, a_/; FreeQ[a, TempLF[masses, _]]];
		If[(target= Length@ simp) < 2, Continue[];];
		Do[
			temp= Plus@@ simp/. lf_TempLF:> PermuteTempLF[lf, {i, 1}];
			temp= SimpTempLFRules[temp, Dimensions-> d]// TermsToList;
			If[Length@ temp> target, Continue[]; ];
			target= Length@ temp;
			out= Join[keep, temp];
		, {i, Length@ masses}];
	, {masses, types}];
	Plus@@ out/. lf:TempLF[masses_, inds_]:> PermuteTempLF[lf, Ordering@ masses]/. TempLF-> LF
];
SimplifyMassFunction@ expr_:= expr;


(* ::Text:: *)
(*Replace LF with a temporary loop function*)


LFtoTempLF@ expr_:= expr/. LF-> TempLF /. lf:TempLF[masses_, inds_]:> PermuteTempLF[lf, Ordering@ masses];


PermuteTempLF[TempLF[masses_, inds_], order_]:= Module[{newMasses= masses, newInds= inds, old= Sort@ order},
	newMasses[[old]]= masses[[order]];
	newInds[[old]]= newInds[[order]];
	TempLF[newMasses, newInds]
]


(* ::Text:: *)
(*The IBP reduction rules are based on full loop functions with divergent pieces. By contrast LF is only the finite part. The pole part difference between LF and TempLF never multiplies O(\[Epsilon]) pieces before simplification and can be ignored. The O(\[Epsilon]) pieces picked up by IBP can combine with poles in TempLF to give finite contributions, which must be kept. After truncation of the O(\[Epsilon]) pieces the poles in TempLF can once again be ignored, when we convert back to LF. We know that the original LF expression was finite.*)


SimpTempLFRules[ expr_, OptionsPattern[{Dimensions->4}]]:= Block[{out, d=OptionValue@Dimensions},
	out= expr//. TempLF[masses_, ord:{first_/; first>1, mid__, last_}]:>
	(1 -\[Epsilon] -last)/(first -1) TempLF[masses, {first -1 , mid, last+1}] -
		Sum[{mid}[[i]]/(first-1) TempLF[masses, {first- 1, mid, last}+ UnitVector[Length@ ord, i+1]], {i, Length@ {mid}}];
	TempLFFiniteExtraction[out, Dimensions -> d]
]


TempLFFiniteExtraction[expr_, OptionsPattern[{Dimensions->4}]]:= BetterSeries[
		Expand@ expr/. lf_TempLF:> lf + EvaluateLoopFunctions[LF@@ lf, Pole-> True, Dimensions-> OptionValue@Dimensions]
	, {\[Epsilon], 0, 0}]/. Power[\[Epsilon], -1]-> 0;


(* ::Subsubsection::Closed:: *)
(*IBP reduction (not in use)*)


(* ::Text:: *)
(*For IBP reduction of the  loop functions *)


ReduceLoopFunctions@ expr_:= expr/. lf_LF:> ReduceLoopFunction@ lf;


ReduceLoopFunction@ lf_LF:= Module[{out},
	(*Possible divergent pieces would cancel in the end anyway*)
	out= LFFull@@ lf;
	out= out//. lfFullReductionRules;
	LFFull2LF@ out/. Power[\[Epsilon], -1]-> 1
]


lfFullReductionRules= {
	(* IBP rule to make the first power one *)
	LFFull[masses_, ord:{first_/; first>1, mid___, last_}]:>
		(2 -\[Epsilon] -last -1)/(first-1) LFFull[masses, {first- 1, mid, last+ 1}]
			-Sum[ord[[i]]/(first -1)LFFull[masses, {first- 1, mid, last}+ UnitVector[Length@ ord, i]], {i, 2, Length@ ord-1}],
	(* Mass relation to reduce massless propagators (only used after first power is one) *)
	LFFull[masses_,ord:{1, mid___, last_/; last>0}]:> 
		- 1/masses[[1]]^2 LFFull[masses[[2;;]], ord[[2;;]]] + 1/masses[[1]]^2 LFFull[masses, {1, mid, last -1}],
	(*Mass relation to increase massless propagators (only used after first power is one)*)
	LFFull[masses_, ord:{1, mid___, last_/; last<0}]:> 
		LFFull[masses[[2 ;;]], {mid, last + 1}] + masses[[1]]^2 LFFull[masses, {1, mid, last + 1}]
}
