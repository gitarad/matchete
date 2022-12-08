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


PackageImport["GroupMagic`"]


(* ::Subsubsection::Closed:: *)
(*Exported*)


PackageExport["\[Mu]bar2"] 
PackageExport["hbar"]
PackageExport["\[Epsilon]"]
PackageExport["LF"]


PackageExport["EvaluateLoopFunctions"]


(* ::Subsubsection::Closed:: *)
(*Internal*)


PackageScope["InvProp"]
PackageScope["LoopMom"]
PackageScope["MomDev"]


PackageScope["LoopIntegrate"]


PackageScope["ExtractMomenta"]
PackageScope["EpsExpand"]
PackageScope["PerformMomDerivatives"]


PackageScope["TermsToList"]


PackageScope["MomNCM"]
PackageScope["MatrixNCM"]
PackageScope["MomAntiCommutator"]
PackageScope["ReleaseMomNCM"]
PackageScope["ExpandMatrixNCM"]


PackageScope["ev"]


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


InvProp::usage=
"InvProp[m] is the inverse propagator: \!\(\*SuperscriptBox[\(k\), \(2\)]\)-\!\(\*SuperscriptBox[\(m\), \(2\)]\), where k is the loop momentum.";
LoopMom::usage=
"LoopMom, or LoopMom[Index[\[Mu],Lorentz]], is the momentum running inside the loop.";
MomDev::usage=
"MomDev[\[Mu]] is an object representing a derivative with respect to the loop momentum with Lorentz index \[Mu], acting to the right.";


LoopIntegrate::usage=
"LoopIntegrate[expr, LogTerm ->True/False] performs the scalar integral over the loop momentum propagators in the expression, written in the form: InvProp[m1\!\(\*SuperscriptBox[\(]\), \(-i1\)]\)...InvProp[mn\!\(\*SuperscriptBox[\(]\), \(-in\)]\)InvProp[0\!\(\*SuperscriptBox[\(]\), \(j\)]\); 
By default, LogTerm is False. If turned on (LogTerm-> True), there is an additional factor corresponding to the integral over \[Xi] from the integral expression of the log."


ExtractMomenta::usage=
"Extract slashed LoopMom from DiracProduct by replace product of momentum vectors with symmetrized product of metrics, 
e.g. LoopMom[Index[mu, Lorentz]] LoopMom[Index[nu, Lorentz]] -> InvProp[0] Metric[Index[mu, Lorentz], Index[nu, Lorentz]] /\[ScriptD], etc.";
EpsExpand::usage=
"EpsExpand[expr,Order->n] expands an expression to nth order (by default 0) in \[Epsilon], the regulator from dimensional regularization, after replacing the space-time dimension \[ScriptD] by 4-2\[Epsilon]."
PerformMomDerivatives::usage=
"Perform all momentum derivatives in a loop integral expression using IbP to reduce the number of terms. ";


TermsToList::usage= 
"Transform a sum of terms into a list, or convert a single term into a list."


MomNCM::usage= 
"Internal NCM head for use in the CDE of the SuperTraces."
MatrixNCM::usage= 
"Temporary NCM for use in X-term multiplication in SuperTraces (non-distributive)."
MomAntiCommutator::usage=
"Anti commutator used in the CDE expansion."
ReleaseMomNCM::usage=
"Drop the MomNCM head after tracing."
ExpandMatrixNCM::usage=
"Expand out the MatrixNCM after X-term substitutions."


ev::usage=
"Dummy label for evanescent operators."


(* ::Chapter:: *)
(*Private:*)


(* ::Section:: *)
(*Momentum integrals*)


(* ::Subsection::Closed:: *)
(*Properties*)


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


(* ::Subsection::Closed:: *)
(*Scalar integrals*)


(* ::Subsubsection::Closed:: *)
(*Auxiliary functions*)


(* ::Text:: *)
(*Transform a sum of terms into a list, or convert a single term into a list*)


TermsToList@ expr_:= Module[{temp= BetterExpand@ expr},
	If[Head@ temp === Plus, List@@ temp, List@ temp]
];


EpsExpand[expr_,OptionsPattern[{Order->0}]]:= Module[{sub},
	Normal@ Series[expr/. \[ScriptD]-> 4-2\[Epsilon], {\[Epsilon], 0, OptionValue@Order}] ];


(* ::Text:: *)
(*Identifying propagators in the expressions:*)
(*mprops is an association of mass propagators and their corresponding power, for example a denominator 1/((p^2-m1^2)^n1(p^2-m1^2)^n2) reads <|m1->n1,m2->n2|> in mprops.*)
(*\[Alpha] is the power of (1/p^2)^\[Alpha].*)


integralType/: integralType[mprops_, \[Alpha]_] InvProp@ 0:= integralType[mprops, \[Alpha]-1 ];
integralType/: integralType[mprops_, \[Alpha]_] Power[InvProp@ 0, n_]:= integralType[mprops, \[Alpha]-n];
integralType/: integralType[mprops_, \[Alpha]_] Power[InvProp@ m_, n_]:= integralType[Merge[{mprops, <|m-> -n|>}, Total], \[Alpha]];


(* ::Subsubsection::Closed:: *)
(*Single scale (and Log term) integrals*)


(* ::Text:: *)
(*For the log term integral (LogTerm->True) there is an additional term due to the \[Xi] integral.*)
(*SingleScaleIntegral can either evaluate the pole (Pole ->True) or the finite part of the integral (Pole ->False). In the latter case, expansion with respect to \[Epsilon] is already performed.*)


LoopIntegration::error="The LogTerm option might have been turned on by mistake." 


SingleScaleIntegral[{mass_, \[Beta]_Integer}, \[Alpha]_Integer, OptionsPattern[{LogTerm->False, Pole->False}]]:= 
Module[{preFact},
	If[OptionValue[LogTerm],
		If[\[Beta] <= 0 || \[Alpha] >= 2 || \[Alpha]+ \[Beta] <= 2,
			Message[LoopIntegration::error];
			Abort[];
		];
		Return[(-1)^(\[Alpha]+\[Beta]) I mass^(2(2- \[Alpha]- \[Beta]))/ Gamma@ \[Beta] Gamma[2- \[Alpha]] Gamma[\[Alpha]+ \[Beta]- 2] (1+ (Log[\[Mu]bar2/ mass^2]+ 1+ PolyGamma[\[Alpha]+\[Beta]-2]- PolyGamma[2- \[Alpha]])\[Epsilon] )]
	];

	If[\[Beta] <= 0, Return@ 0;];
	preFact= (-1)^(\[Alpha]+\[Beta]) I mass^(2(2- \[Alpha]- \[Beta]))/ Gamma@ \[Beta];

	If[\[Alpha] >= 2,
		Return[-preFact Gamma[\[Alpha]+ \[Beta]- 2] (-1)^\[Alpha]/ (\[Alpha]-2)!
			If[OptionValue[Pole],
				1/\[Epsilon],
				(-HarmonicNumber[\[Alpha]-2]+ Log[\[Mu]bar2/ mass^2]+ 1+ PolyGamma[\[Alpha]+\[Beta]-2]+ EulerGamma)
			]
		];
	];
	If[\[Alpha]+ \[Beta] <= 2,
		Return[preFact Gamma[2- \[Alpha]] (-1)^(\[Alpha]+\[Beta])/(2-\[Alpha]-\[Beta])! 
			If[OptionValue[Pole],
				1/\[Epsilon],
				(+HarmonicNumber[2-\[Alpha]-\[Beta]]+ Log[\[Mu]bar2/ mass^2]+ 1- PolyGamma[2- \[Alpha]]- EulerGamma)
			]
		];
	];
	Return[If[OptionValue[Pole],
			0,
			preFact Gamma[2- \[Alpha]]Gamma[\[Alpha]+ \[Beta]- 2]
		]
	]
];


(* ::Subsubsection::Closed:: *)
(*Multiscale integrals*)


MultiScaleIntegral[propPowers_Association, \[Alpha]_, OptionsPattern[{Pole->False}]]:= Module[{mi, pi, mj, temp},
	If[OptionValue[Pole],If[Plus@@ propPowers + \[Alpha]> 2 && \[Alpha]<2, Return@ 0;]];
	Sum[temp= KeyDrop[propPowers, mi];
		SingleScaleIntegral[{mi, propPowers@ mi - pi}, \[Alpha], Pole -> OptionValue[Pole]] /pi! D[Product[Power[M2@ mi -M2@ mj, -propPowers@ mj],
			{mj, Keys@ temp}], {M2@ mi, pi}]
	,{mi, Keys@ propPowers}, {pi, 0, propPowers@ mi -1}]/. M2@ mass_:> mass^2 
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
(*A factor "i" is extracted from the definition of the loop function, so that it is real*)


ToLoopFunctions[propPowers_Association, \[Alpha]_]:= Module[{props},
	props= SortBy[KeyValueMap[{#1, #2}&, propPowers], (-#[[2]]&)];
	I LF[props[[;;, 1]], props[[;;, 2]] ~ Join ~ {\[Alpha]}] + Simplify@ MultiScaleIntegral[propPowers, \[Alpha], Pole-> True] 
]


EvaluateLoopFunctions@ LF[denoms_, powers_]:= Module[{association},
	association= Association@@ (#[[1]]->#[[2]]&)/@ Transpose@ {denoms, powers[[;;-2]]};
	-I MultiScaleIntegral[association, Last@ powers, Pole-> False] //Simplify
];
EvaluateLoopFunctions@ expr_:= expr/. lf_LF:> EvaluateLoopFunctions@ lf;


(* ::Subsubsection::Closed:: *)
(*General loop integration function*)


LoopIntegrate::onescale="There is more than one scale in the LogTerm integration." 


LoopIntegrate[expr_,OptionsPattern[{LogTerm->False}]]:=Module[{temp= expr, term, masses},
	temp= TermsToList@ temp integralType[<||>, 0]; 
	If[OptionValue[LogTerm],
		If[!AllTrue[Length/@Cases[temp,integralType[x_,_]:>x,Infinity],#<2&],Message[LoopIntegrate::onescale];Abort[]];
		Sum[term/.integralType[<|m_->\[Beta]_|>,\[Alpha]_]:>integralType[{m,\[Beta]},\[Alpha],LogTerm->True] /. x_integralType:> SingleScaleIntegral@@ x, {term, temp}],
		Sum[term/. x_integralType:> ToLoopFunctions@@ x, {term, temp}]]
];


(* ::Subsection::Closed:: *)
(*Numerator momentum structures*)


(* ::Text:: *)
(*Bring momenta to propagator (with zero mass) form.*)


LoopMom/:Power[_LoopMom,2] := InvProp@ 0;


(* ::Subsubsection::Closed:: *)
(*Extract momenta*)


(* ::Text:: *)
(*Extract LoopMom-slashes from DiracProduct: replaces product of momentum vectors with symmetrized product of metrics, e.g. LoopMom[Index[mu, Lorentz]] LoopMom[Index[nu, Lorentz]] -> InvProp[0] Metric[Index[mu, Lorentz], Index[nu, Lorentz]] /\[ScriptD], etc. *)


SymmetricLoopMomReplacement@ momInds___:= Module[{inds, n},
	inds= Flatten@ List@ momInds;
	n= Length@ inds/ 2; 
	SymTensor= If[OddQ@ Length@ inds, 0,
	Plus@@ Times@@@ Map[Metric, DeleteDuplicatesBy[Partition[#, 2]&/@ Permutations@ inds, (Sort[Sort/@ #] &)], {2}]];
	SymTensor InvProp[0]^n Gamma[\[ScriptD]/2]/ (Gamma[\[ScriptD]/2 + n] 2^n)/.Metric[{\[Alpha]_,\[Beta]_}]:>Metric[\[Alpha],\[Beta]]
];


ExtractMomenta@ expr_ := Module[{out, pInds},
	out= expr//.{
		DiracProduct[a___, GammaM@ LoopMom, b___] :> 
			Module[{\[Delta]}, DiracProduct[a, GammaM@ Index[\[Delta], Lorentz], b] LoopMom@ Index[\[Delta], Lorentz]]
	}/.{x:Alternatives[_LoopMom, InvProp[0]]-> Commutative@ x}/. Commutative@ x_->x// BetterExpand;
	Expand[out pInds[]]//. pInds[x___] LoopMom@ Index[\[Mu]_,Lorentz]:> pInds[x, \[Mu]]/. pInds-> SymmetricLoopMomReplacement// BetterExpand
]


(* ::Section:: *)
(*Momentum structures for CDE*)


(* ::Subsection::Closed:: *)
(*Non-commutative products*)


(* ::Text:: *)
(*A specific non-commutative product for use in the CDE*)


(* ::Subsubsection::Closed:: *)
(*Commutative check*)


(* ::Text:: *)
(*Default assumption: everything is commutative*)


MomCommuteQ[f_?MomCommuteQ[x___]] := And@@ MomCommuteQ/@ {x};
MomCommuteQ[f_[x___]] := False;
MomCommuteQ[_] := True; 


(* ::Text:: *)
(*Define the non-commutative objects*)


MomCommuteQ@ Alternatives[Pattern, Blank, BlankSequence, BlankNullSequence, Except, Hold] = False;


(* ::Text:: *)
(*Commutative is a head that can be used to temporarily treat an object as commutative*)


MomCommuteQ@ Commutative@ _ ^= True; 


(* ::Subsubsection::Closed:: *)
(*Non-commutative symbols used in Matchete declared here*)


(* ::Text:: *)
(*Define non-commutative objects*)


((MomCommuteQ@ # ^= False) &) /@ {
	Field,
	FieldStrength,
	DiracProduct,
	MomDev,
	LoopMom,
	InvProp,
	Gop, 
	Xop, 
	HoldPart, 
	MassOp
	};


(* ::Subsubsection::Closed:: *)
(*Properties of MomNCM*)


(* ::Text:: *)
(*Flatness*)


MomNCM[a___, MomNCM[b__], c___]:= MomNCM[a, b, c];
MomNCM[] = 1;
MomNCM@ x_MomNCM:= x;


(* ::Text:: *)
(*Extracting commuting objects*)


MomNCM[a___, b_?MomCommuteQ, c___]:= b * MomNCM[a, c];
MomNCM[a___, b_?MomCommuteQ * x_, c___]:= b * MomNCM[a, x, c];


(* ::Text:: *)
(*Distributivity*)


MomNCM[a___, b_Plus, c___]:= MomNCM[a, #, c] & /@ b 


(* ::Subsubsection::Closed:: *)
(*Properties of Matrix NCM*)


(* ::Text:: *)
(*Flatness*)


MatrixNCM[a___, MatrixNCM[b__], c___]:= MatrixNCM[a, b, c];
MatrixNCM[] = 1;


(* ::Text:: *)
(*Working on lists and matrices*)


MatrixNCM@ expr_List:= expr;


MatrixNCM[a___, x_List, y_List, b___]:= MatrixNCM[a, Inner[MatrixNCM, x, y, Plus], b];
MatrixNCM[a___, x_List, y: Except[_List], b___]:= MatrixNCM[a, MatrixNCM[#, y]&/@ x, b];
MatrixNCM[a___, x: Except[_List], y_List, b___]:= MatrixNCM[a, MatrixNCM[x, #]&/@ y, b];


(* ::Text:: *)
(*Extracting commuting objects (no deltas on account of summation over heavy mass indices)*)


MatrixNCM[a___, (x:Except[_Delta|_Times]?MomCommuteQ), c___]:= x * MatrixNCM[a, c];


(* ::Subsubsection::Closed:: *)
(*Utility functions*)


MomAntiCommutator[x_, y_] := MomNCM[x, y]+ MomNCM[y, x];


(* ::Text:: *)
(*Drop the MomNCM after tracing*)


ReleaseMomNCM@ expr_:= expr/. MomNCM-> NonCommutativeMultiply;


(* ::Text:: *)
(*Expand out the MatrixNCM after X-term substitutions*)


ExpandMatrixNCM@ expr_:= expr//. {
		MatrixNCM[a___, (x:Except[_Delta|_Times]?MomCommuteQ) b_, c___]:> x * MatrixNCM[a, b, c],
		MatrixNCM[a___, (x:(InvProp[0]|InvProp[0]^_))* b_, c___]:> x * MatrixNCM[a, b, c],
		MatrixNCM[a___, b_Plus, c___]:> (MatrixNCM[a, #, c] & /@ b)
	}


(* ::Subsection::Closed:: *)
(*Momentum derivatives*)


(* ::Subsubsection::Closed:: *)
(*Auxiliary functions*)


LastPosition[x_, y_]:= Module[{temp},
	temp = FirstPosition[Reverse@ x, y, None, {1}];
	If[temp=== None, temp, Length@ x- First@ temp +1]
];


(* ::Text:: *)
(*Test if expression is independent of loop momentum (Subscript[LoopMom, \[Mu]]) *)


MomFreeQ[f_?MomFreeQ[x___]]:= And@@ MomFreeQ/@ {x}; 
MomFreeQ[f_[x___]]:= False;
MomFreeQ[_]:= True; 
MomFreeQ[LoopMom| InvProp]:= False; 


(* ::Subsubsection::Closed:: *)
(*Partial Momentum Derivative*)


(* ::Text:: *)
(*Rules for applying a partial momentum derivative to an individual term*)


MomDerivative[_?MomFreeQ, _]:= 0;
MomDerivative[x_Plus, \[Mu]_]:= MomDerivative[#, \[Mu]]&/@ x;   
MomDerivative[Times[x_, y__], \[Mu]_]:= MomDerivative[x, \[Mu]] y + x MomDerivative[Times@ y, \[Mu]];
MomDerivative[Power[x_, n_], \[Mu]_]:= n Power[x, n-1] MomDerivative[x, \[Mu]];


MomDerivative[LoopMom@ Index[\[Mu]_,Lorentz], Index[\[Nu]_,Lorentz]]:= Metric[Index[\[Mu],Lorentz], Index[\[Nu],Lorentz]];
MomDerivative[_InvProp, Index[\[Mu]_,Lorentz]]:= 2 LoopMom@ Index[\[Mu],Lorentz];
MomDerivative[\[Gamma]@ LoopMom, Index[\[Mu]_,Lorentz]]:= \[Gamma]@ Index[\[Mu],Lorentz]; 


(* ::Text:: *)
(*Act with momentum derivatives to the right in an NCM product, and eventually terminate them.*)


TakeMomDerivatives@ expr_:= expr//. {
	MomNCM[a___, MomDev@ \[Mu]_, x:Except[_MomDev], b___]:> 
		MomNCM[a, x, MomDev@ \[Mu], b] + MomNCM[a, MomDerivative[x, \[Mu]], b],
	MomNCM[___, _MomDev]:> 0
};


(* ::Text:: *)
(*Perform all momentum derivatives in a loop integral expression using IbP to reduce the number of terms.  *)


PerformMomDerivatives@ expr_:= expr/. x_MomNCM:> PerformMomDerivatives@ x;
PerformMomDerivatives@ expr_MomNCM:= Module[{pos},
	pos= LastPosition[expr, _MomDev];
	If[pos === None, Return@ expr];
	(*Decides whether to do IbP or not*)
	PerformMomDerivatives@ If[Count[expr[[;; pos- 1]], Except[_?MomFreeQ], {1}]- Count[expr[[pos+ 1;; ]], Except[_?MomFreeQ], {1}] > 0,
		MomNCM[expr[[;; pos- 1]], (TakeMomDerivatives@ expr[[pos;;]])]   
	,
		pos= First@ FirstPosition[expr, _MomDev, None, {1}];
		-MomNCM[TakeMomDerivatives@ MomNCM[expr[[pos]], expr[[;;pos-1]]], expr[[pos+1;;]] ] 
	]
];
