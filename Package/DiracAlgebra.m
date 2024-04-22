(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`DiracAlgebra`*)


(* ::Subtitle:: *)
(*Implementation of the Dirac algebra used in Matchete.*)


(* ::Text:: *)
(*\[Gamma] matrices are all decomposed into the standard form (see e.g. https://arxiv.org/abs/physics/0703214, eq.  4.15) *)
(*DiracProduct[...,Gamma5,...] is interpreted as ...Subscript[\[Gamma], 5]... *)
(*DiracProduct[...,GammaM[Index[\[Alpha],Lorentz]],...] is interpreted as ...Subscript[\[Gamma], \[Alpha]]...*)
(*In NDR:  DiracProduct[..., GammaM[Subscript[\[Mu], 1], ...,Subscript[\[Mu], n]],...] is interpreted as  Subscript[\[CapitalGamma], n]^(Subscript[\[Mu], 1]... Subscript[\[Mu], n])=  \!\(\*SubscriptBox[\(\[Gamma]\), \([*)
(*\*SubscriptBox[\(\[Mu]\), \(1\)]\)]\)... Subscript[\[Gamma], Subscript[\[Mu], n]]]  (full antisymmetrization with normalization factor 1/n!)*)


(* ::Chapter:: *)
(*Public:*)


(* ::Section:: *)
(*Scoping:*)


PackageImport["GroupMagic`"]


(* ::Subsubsection::Closed:: *)
(*Input variables*)


PackageExport["\[Gamma]"]
PackageExport["\[Sigma]"]


PackageExport["PL"]
PackageExport["PR"]


PackageExport["CC"]


PackageExport["Transp"]
PackageExport["CConj"]


(* ::Subsubsection:: *)
(*Exported*)


PackageExport["DiracProduct"]


PackageExport["GammaM"]
PackageExport["Gamma5"]
PackageExport["GammaCC"]
PackageExport["Proj"]


PackageExport["DiracTrace"]


(* ::Subsubsection:: *)
(*Internal*)


PackageScope["FermionQ"]
PackageScope["ClosedSpinChainQ"]
PackageScope["LOpenSpinChainQ"]
PackageScope["ROpenSpinChainQ"]
PackageScope["MajoranaQ"]
PackageScope["CumulativeSpin"]


PackageScope["CollectGammaMatrices"]


PackageScope["ASymGammaExpand"]
PackageScope["ProjExpand"]


PackageScope["RefineDiracProducts"]


PackageScope["\[Gamma]CommuteQ"]


PackageScope["FierzScore"]
PackageScope["FbasisQ"]
PackageScope["Origin"]
PackageScope["RedundantOperator"]
PackageScope["BasisOperator"]


PackageScope["LC2Gamma5"]
PackageScope["Gamma52LC"]
PackageScope["LC2Delta"]
PackageScope["SchoutenID"]


PackageScope["EvaOp"]


PackageScope["Evanescent"]
PackageScope["GetEvanescentTerm"]
PackageScope["ResetEvanescentOperators"]
PackageScope["ExpandEvanescentOperators"]
PackageScope["FindEvanescentOperator"]


PackageScope["GammaReduction"]
PackageScope["Fierz"]
PackageScope["RemoveLCTensor"]


(* ::Section:: *)
(*Usage definitions*)


(* ::Subsubsection::Closed:: *)
(*Input variables*)


\[Gamma]::usage = "\[Gamma][\[Mu]] is the shortcut for a Dirac matrix with Lorentz index \[Mu]. 
\[Gamma][5] is the shortcut for the Dirac matrix \!\(\*FormBox[SubscriptBox[\(\[Gamma]\), \(5\)],TraditionalForm]\). 
\[Gamma][\!\(\*SubscriptBox[\(\[Mu]\), \(1\)]\),...,\!\(\*SubscriptBox[\(\[Mu]\), \(n\)]\)] is the shortcut for the anti-symmetrized product of n Dirac matrices \!\(\*SubscriptBox[\(\[Gamma]\), \([\*SubscriptBox[\(\[Mu]\), \(1,  ... , \)] \*SubscriptBox[\(\[Mu]\), \(n\)]]\)]\)";
\[Sigma]::usage = "\[Sigma][\[Mu],\[Nu]] is the shortcut for the hermitian anti-symmetric Dirac matrix combination \[Sigma][\[Mu],\[Nu]] = \!\(\*FractionBox[\(\[ImaginaryI]\), \(2\)]\) [\[Gamma][\[Mu]],\[Gamma][\[Nu]]].";


PL::usage = "PL is the shortcut for the chiral left projector \!\(\*FormBox[SubscriptBox[\(P\), \(L\)],TraditionalForm]\) in a Dirac product.";
PR::usage = "PR is the shortcut for the chiral right projector \!\(\*FormBox[SubscriptBox[\(P\), \(R\)],TraditionalForm]\) in a Dirac product.";


CC::usage = "CC is the shortcut for the charge conjugation matrix in a Dirac product."


Transp::usage = "Transp[arg] is used to denote the transposed of the object arg in the Dirac algebra.";
CConj::usage  = "CConj[field] is the charge conjugation operator and can only be used to act on fermion fields, for example CConj[\[Psi]]= \!\(\*SuperscriptBox[\(\[Psi]\), \(c\)]\)= \!\(\*TemplateBox[{\"C\"},\n\"RowDefault\"]\) \!\(\*SuperscriptBox[OverscriptBox[\(\[Psi]\), \(_\)], \(T\)]\).";


(* ::Subsubsection::Closed:: *)
(*Exported*)


DiracProduct::usage = "DiracProduct[seq] represents the (non-commutative) product of Dirac matrices, charge conjugation matrices and chiral projectors in the sequence seq.";


GammaM::usage  = "GammaM[\[Mu]] is a Dirac matrix with Lorentz index \[Mu] as written inside DiracProduct.
GammaM[\!\(\*FormBox[SubscriptBox[\(\[Mu]\), \(1\)],TraditionalForm]\), ...,\!\(\*FormBox[SubscriptBox[\(\[Mu]\), \(n\)],TraditionalForm]\)] is interpreted as  \!\(\*FormBox[SubscriptBox[SuperscriptBox[\(\[CapitalGamma]\), \(n\)], \(\(\*SubscriptBox[\(\[Mu]\), \(1\)] ... \) \*SubscriptBox[\(\[Mu]\), \(n\)]\)],TraditionalForm]\)=  \!\(\*FormBox[\(\(\*SubscriptBox[\(\[Gamma]\), \([\(\)\*SubscriptBox[\(\[Mu]\), \(1\)]\)] ... \)\\\ \*SubscriptBox[\(\[Gamma]\), \(\*SubscriptBox[\(\[Mu]\), \(n\)]\(]\)\)]\),TraditionalForm]\)  (full antisymmetrization with normalization factor 1/n!).
The associated shortcut is \[Gamma][\[Mu]] or \[Gamma][\!\(\*SubscriptBox[\(\[Mu]\), \(1\)]\),...,\!\(\*SubscriptBox[\(\[Mu]\), \(n\)]\)].";(*GammaM[LoopMom] represents p slash.*)
Gamma5::usage  = "Gamma5 is the Dirac matrix \!\(\*SubscriptBox[\(\[Gamma]\), \(5\)]\) as written inside DiracProduct.
In the NDR scheme, anti-commutativity with other gamma matrices is preserved but cyclicity of the Dirac trace is abandonned, adding a consistency requirement in the reading point choice.
The associated shortcut is \[Gamma][5].";
GammaCC::usage = "GammaCC is the charge conjugation matrix as written inside DiracProduct.
The associated shortcut is CC."
Proj::usage    = "Proj[+/-1] is the chiral right/left projectors \!\(\*SubscriptBox[\(P\), \(L/R\)]\) = \!\(\*FractionBox[StyleBox[RowBox[{\"1\", \" \", \"+\", RowBox[{\"/\", RowBox[{\"-\", \" \", SubscriptBox[\"\[Gamma]\", \"5\"]}]}]}], \"Code\"], \(2\)]\) as written inside DiracProduct.
The associated shortcut is PR/PL.";


DiracTrace::usage = "DiracTrace[expr] evaluates the Dirac trace of expr.";


EvaOp::usage                     = "EvaOp[label, (indices)] denotes the evanescent operator stored in the association $EvanescentTerms. To obtain the definition, use GetEvanescentTerm[label]."


GammaReduction::usage            = "GammaReduction[SP1 * SP2] returns the simplification of SP1 and SP2 current after a projection of the Dirac structures to the 4D basis.";
Fierz::usage                     = "Fierz[SP1 * SP2] returns the fierzing of the product of SP1 and SP2 by exchanging the second spinor in each closed spin chain."
RemoveLCTensor::usage            = "Get rid of Levi-Civita tensors either by combining with a Lorentz sigma to give a \!\(\*SubscriptBox[\(\[Gamma]\), \(5\)]\) or by expanding the product of two Levi-Civita tensor to give the fully antisymmetric product of metrics."


Evanescent::usage                = "Evanescent is an option for Fierz, GammaReduction and RemoveLCTensor. If set to True (default), it stores the evanescent operator (if generated) in an association and includes it in the result."
GetEvanescentTerm::usage         = "GetEvanescentTerm[label] outputs the informations (Operators, Origin) about the evanescent operator given as an argument.
									If no argument is given, it returns the full list of generated evanescent operators."
ResetEvanescentOperators::usage  = "ResetEvanescentOperators[] resets the association containing the definition of all evanescent operators generated."
ExpandEvanescentOperators::usage = "ExpandEvanescentOperators[expr] replaces EvaOp[label,(indices)] by the corresponding definition of the evanescent operator."
FindEvanescentOperator::usage    = "Identifies an evanescent operator already defined and replace it with an EvaOp object."


(* ::Subsubsection::Closed:: *)
(*Internal*)


FermionQ::usage         = "FermionQ[expr] returns True if a expr is a fermion or False otherwise.";
ClosedSpinChainQ::usage = "ClosedSpinChainQ[expr] returns True if a expr is a closed spin chain or False otherwise.";
LOpenSpinChainQ::usage  = "LOpenSpinChainQ[expr] returns True if a expr is a spin chain that is open from the left or False otherwise.";
ROpenSpinChainQ::usage  = "ROpenSpinChainQ[expr] returns True if a expr is a spin chain that is open from the right or False otherwise.";
MajoranaQ::usage        = "FermionQ[expr] returns True if a expr is a Majorana fermion or False otherwise.";
CumulativeSpin::usage   = "Returns the cumulative count of fermion spins along a NCM product. Counts +1 for R-open fermions and -1 for L-open.";


CollectGammaMatrices::usage = "CollectGammaMatrices[expr] collects all \[Gamma]-matrices in a DiracProduct and and moves them to the left inside of a NonCommutativeMultiply.";


ASymGammaExpand::usage = "ASymGammaExpand[DiracProduct[...]] performs the anti-symmetric expansion of the \[Gamma]-matrices inside the DiracProduct";
ProjExpand::usage      = "Expand the left/right handed projector into (1-/+\!\(\*SubscriptBox[\(\[Gamma]\), \(5\)]\))/2."


RefineDiracProducts::usage = "RefineDiracProducts[expr] matches all Dirac product in an expression to the basis of completely anti-symmetrized products.";


\[Gamma]CommuteQ::usage = "\[Gamma]CommuteQ[obj] checks if obj commutes with gamma matrices.";


LC2Gamma5::usage= "LC2Gamma5[expr] combines \[Epsilon]^\[Mu]\[Nu]\[Rho]\[Sigma] with gamma matrices in expr to obtain Subscript[\[Gamma], 5], using the relation Subscript[\[Gamma], 5] = -I/4! \[Epsilon]^\[Mu]\[Nu]\[Rho]\[Sigma] \[Gamma][\[Mu]]**\[Gamma][\[Nu]]**\[Gamma][\[Rho]]**\[Gamma][\[Sigma]].";
Gamma52LC::usage= "Gamma52LC[expr] decomposes Subscript[\[Gamma], 5] in expr as Subscript[\[Gamma], 5] = -I/4! \[Epsilon]^\[Mu]\[Nu]\[Rho]\[Sigma] \[Gamma][\[Mu]]**\[Gamma][\[Nu]]**\[Gamma][\[Rho]]**\[Gamma][\[Sigma]].";


RedundantOperator::usage         = "RedundantOperator is an attribute of evanescent operators. It stores the operator that generated the evanescent structure before the 4D operation."
BasisOperator::usage             = "BasisOperator is an attribute of evanescent operators. It stores the operator generated by RedundantOperator after applying the 4D operation."
Origin::usage                    = "Origin is an attribute of evanescent operators. It is either Fierz, GammaReduction or LCTensor."


(* ::Chapter:: *)
(*Private:*)


(* ::Section:: *)
(*SNDR scheme*)


(* ::Subsection::Closed:: *)
(*Convenient notation*)


PL= DiracProduct@ Proj@ -1;
PR= DiracProduct@ Proj@ 1;


\[Gamma]@ Sequence[\[Mu]_Symbol,\[Nu]___]:= DiracProduct@ GammaM@ Sequence[Index[\[Mu], Lorentz], Sequence@@(Index[#,Lorentz]&/@List[\[Nu]])];
\[Gamma]@ Sequence[\[Mu]: Index[_Symbol, Lorentz],\[Nu]___]:= DiracProduct@ GammaM@ Sequence[\[Mu],\[Nu]];
\[Gamma]@ 5:= DiracProduct@ Gamma5;
\[Sigma]@ Sequence[\[Mu]_Symbol,\[Nu]_Symbol]:= I DiracProduct@ GammaM@ Sequence[Index[\[Mu], Lorentz],Index[\[Nu], Lorentz]];
\[Sigma]@ Sequence[\[Mu]: Index[_Symbol, Lorentz],\[Nu]: Index[_Symbol, Lorentz]]:= I DiracProduct@ GammaM@ Sequence[\[Mu],\[Nu]];


CC = DiracProduct@ GammaCC;


(* ::Subsection:: *)
(*Properties of DiracProduct*)


(* ::Subsubsection::Closed:: *)
(*General properties*)


DiracProduct/: NonCommutativeMultiply[a___, x_DiracProduct, y_DiracProduct, b___]:=
	NonCommutativeMultiply[a, Join[x, y], b];


DiracProduct/: MomNCM[a___, x_DiracProduct, y_DiracProduct, b___]:=
	MomNCM[a, Join[x, y], b];


DiracProduct[a___, GammaM[] | Transp@ GammaM[], b___] := DiracProduct[a, b];
DiracProduct[a___, c_?NumberQ d_, b___]:= c DiracProduct[a, d, b];
DiracProduct[___,0,___]= 0;
DiracProduct[]= 1;


DiracProduct[A___,1,B___]:=DiracProduct[A,B];


(* ::Subsubsection::Closed:: *)
(*Properties of antisymmetrized \[Gamma] matrices*)


GammaM@ OrderlessPatternSequence[\[Mu]_, \[Mu]_, ___]:= 0;


(* ::Subsubsection::Closed:: *)
(*SNDR specific properties*)


(* ::Text:: *)
(*Subscript[\[Gamma], 5] : contract pairs (or with projectors) and move singles to the right.*)


DiracProduct[a___, Gamma5 | Transp@Gamma5 , b___/; FreeQ[List@ b, Gamma5| Transp@Gamma5| GammaCC| Proj| Transp@Proj], Gamma5 | Transp@Gamma5 , c___]:=
	(-1)^Length@ Flatten@ GammaM@ b * DiracProduct[a, b, c];
DiracProduct[a___, Gamma5 | Transp@Gamma5, b___/; FreeQ[List@ b, Gamma5 | Transp@Gamma5| GammaCC| Proj| Transp@Proj], p: Proj@s_ | Transp@Proj@s_ , c___]:=
	s (-1)^Length@ Flatten@ GammaM@ b * DiracProduct[a, b, p, c];
DiracProduct[a___, p: Proj@s_ | Transp@Proj@s_, b___/; FreeQ[List@ b, Gamma5 | Transp@Gamma5| GammaCC| Proj| Transp@Proj], Gamma5 | Transp@Gamma5, c___]:=
	s (-1)^Length@ Flatten@ GammaM@ b * DiracProduct[a, p, b, c];
DiracProduct[a___, g5: Gamma5 | Transp@Gamma5, b__/; FreeQ[List@ b, Gamma5 | Transp@Gamma5| GammaCC| Proj| Transp@Proj]]:=
	(-1)^Length@ Flatten@ GammaM@ b * DiracProduct[a, b, g5];


(* ::Text:: *)
(*Projectors: contract pairs and move singles to the right.*)


DiracProduct[a___, Proj@ r_ , b___/; FreeQ[List@ b, Gamma5| Transp@ Gamma5| GammaCC| Proj],  Proj@s_, c___]:=
	If[r s === (-1)^Length@ Flatten[List@ b/. Transp-> Identity/. GammaM-> List], DiracProduct[a, b, Proj@ s, c], 0];
DiracProduct[a___, Proj@ s_, b__/; FreeQ[List@ b, Gamma5| Transp@ Gamma5| GammaCC| Proj]]:=
	DiracProduct[a, b, Proj[s (-1)^Length@ Flatten[List@ b/. Transp-> Identity/. GammaM-> List] ] ];


(* ::Text:: *)
(*Subscript[\[Gamma], \[Mu]] : Move contracted \[Gamma]-matrices together and eventually contract them.*)


DiracProduct[a___, GammaM@ \[Mu]_Index , GammaM@\[Mu]_Index, b___]:= \[ScriptD] DiracProduct[a, b];
DiracProduct[a___, gm: GammaM@ \[Mu]_Index, gn: GammaM@\[Nu]_Index, b___, GammaM@ \[Mu]_Index, c___]/; FreeQ[List[b, c], \[Nu]]:=
	2 Metric[\[Mu], \[Nu]] DiracProduct[a, b, gm, c]- DiracProduct[a, gn, gm, b, gm, c];


DiracProduct[a___, Transp@GammaM@ \[Mu]_Index, Transp@GammaM@ \[Mu]_Index, b___]:= \[ScriptD] DiracProduct[a, b];
DiracProduct[a___, gm: Transp@GammaM@ \[Mu]_Index, gn: Transp@GammaM@\[Nu]_Index, b___, Transp@GammaM@ \[Mu]_Index, c___]/; FreeQ[List[b, c], \[Nu]]:=
	2 Metric[\[Mu], \[Nu]] DiracProduct[a, b, gm, c]- DiracProduct[a, gn, gm, b, gm, c];


(* ::Text:: *)
(*p slash :  combine two into a propagator (using use {\[Gamma]_\[Mu], \[Gamma]_\[Nu]}= 2 g_{\[Mu]\[Nu]} if needed).*)


DiracProduct[a___, GammaM@ LoopMom, GammaM@ LoopMom, b___]:= Power[Prop[0], -1] DiracProduct[a, b];
DiracProduct[a___, gL: GammaM@ LoopMom, gn: GammaM@ \[Nu]_Index, b___, GammaM@ LoopMom, c___]:= 
	2 LoopMom@ \[Nu] * DiracProduct[a, b, gL, c] - DiracProduct[a, gn, gL, b, gL, c];


DiracProduct[a___, Transp@ GammaM@ LoopMom, Transp@ GammaM@ LoopMom, b___]:= Power[Prop[0], -1] DiracProduct[a, b];
DiracProduct[a___, gL: Transp@ GammaM@ LoopMom, gn: Transp@ GammaM@ \[Nu]_Index, b___, Transp@ GammaM@ LoopMom, c___]:= 
	2 LoopMom@ \[Nu] * DiracProduct[a, b, gL, c] - DiracProduct[a, gn, gL, b, gL, c];


(* ::Subsubsection::Closed:: *)
(*4D function to remove Levi-Civita tensor*)


(*Combine \[Epsilon]^\[Mu]\[Nu]\[Rho]\[Sigma] with tensor to obtain Subscript[\[Gamma], 5]*)
LC2Gamma5[exp_]:=Module[{LCind, LCt,Sigmaindpos, Sigmat, Compind, sign,res},
	If[Length[LCt=Cases[exp,_LCTensor ,Infinity]]=!=1,
		exp,
		LCind=List@@First@LCt;
		Sigmat=Cases[exp, GammaM[a___]/;(Length@{a}===2), Infinity];
		Catch[
		(Sigmaindpos=Flatten[Position[LCind,#]&/@(List@@#)];
		If[Length@Sigmaindpos===2,
			Compind=Complement[Range[4],Sigmaindpos];
			sign=Signature@Flatten@Join[Compind,Sigmaindpos];
			Compind=LCind[[Compind]];
			Throw[-2I* sign* exp/.{_LCTensor->1, #->Sequence[GammaM@@Compind, Gamma5] }];
			]
		)&/@Sigmat;
		Throw[exp]]
		]	
	];
(*Expand Subscript[\[Gamma], 5]*)
Gamma52LC[exp_]:=exp/.DiracProduct[dp___,Gamma5]:> -I/4! LCTensor[\[Alpha],\[Beta],\[Delta],\[Eta]]DiracProduct[dp]**\[Gamma][\[Alpha]]**\[Gamma][\[Beta]]**\[Gamma][\[Delta]]**\[Gamma][\[Eta]] //RelabelIndices ;


(*Expand product of two Levi-Civita tensors into antisymmetric product of metric*)
LC2Delta[exp_]:=exp/.{LCTensor[a:Sequence[_Index..]] * LCTensor[b:Sequence[_Index..]] :> - Det[Outer[Metric,List@a,List@b]]};


(*Perform cyclic permutations of indices on the product of a Levi-Civita tensor with a metric*)
SchoutenID[exp_]:=Module[{tempind, Tind, LCt, LCind, LMind, newLind, out},
	If[Length[LCt=Cases[exp,_LCTensor ,Infinity]]=!=1,
		exp, 
		LCt=First@LCt;
		LCind=List@@LCt;
		LMind=Cases[exp,Index[_,Lorentz],Infinity];
		LMind=Part[Select[Tally@LMind,Part[#,2]===2&],All,1];
		LMind=Complement[LMind, LCind];
		If[LMind==={},
			exp, 
			(*If several indices, another than First might be prefered*)
			LMind=First@LMind;
			out= ReleaseHold[exp/.LMind->Index[HoldForm@Unique[],tempind]];
			Tind=Cases[out, Index[_,tempind],Infinity];
			newLind=Index[Unique[d], Lorentz];
			out= out/.Tind[[1]]->LMind/.Tind[[2]]->newLind;
			out= - Metric[LCind[[1]], LMind] (out /.{LCt->LCTensor[LCind[[2]],LCind[[3]],LCind[[4]],newLind]})
				 - Metric[LCind[[2]], LMind] (out /.{LCt->LCTensor[LCind[[3]],LCind[[4]],newLind,LCind[[1]]]})
				 - Metric[LCind[[3]], LMind] (out /.{LCt->LCTensor[LCind[[4]],newLind,LCind[[1]],LCind[[2]]]})
				 - Metric[LCind[[4]], LMind] (out /.{LCt->LCTensor[newLind, LCind[[1]],LCind[[2]],LCind[[3]]]});
			out //RelabelIndices//Contract
			]
		]
	]


(* ::Subsection:: *)
(*Dirac trace*)


(* ::Subsubsection::Closed:: *)
(*Trace of an expression*)


(* ::Text:: *)
(*Move the DiracTrace from acting on any expression to act on the DiracProduct inside the expression*)


Options@ DiracTrace= {Dimensions->\[ScriptD]};


DiracTrace[expr_, opt:OptionsPattern[]]:= Module[
	{
		allterms = Expand@ expr,
		term
	},
	
	allterms = If[Head@ allterms === Plus,
		List@@ allterms,
		{allterms}
	];
	
	(*sum over all terms in the list allterms*)
	Sum[
		Switch[Count[term, _DiracProduct, Infinity],
			0, 4 term,
			1, term/. x_DiracProduct:> DiracTrace[x],
			_, Message[DiracTrace::canteval]; term
		],
		{term, allterms}
	] /.\[ScriptD]->OptionValue@ Dimensions 
];


(* ::Text:: *)
(*Error Messages*)


DiracTrace::canteval= "Dirac trace encountered term with multiple Dirac products. No trace applied.";


(* ::Subsubsection::Closed:: *)
(*Split of anti-symmetrized \[Gamma] matrices *)


(* ::Text:: *)
(*Anti-symmetric expansion of the \[Gamma]-matrices inside the DiracProduct*)


ASymGammaExpand@ DiracProduct[a___, GammaM[\[Mu]___]/; Length@{\[Mu]}>1, opt___]:=Module[{permutations= Permutations@{\[Mu]}},
	Signature@ {\[Mu]}/Length @permutations * 
		Plus@@((Signature@ # * ASymGammaExpand@ DiracProduct[a, Sequence@@ (GammaM/@ #), opt]&)/@ permutations)// 
	Expand];
ASymGammaExpand@ x_= x;


(* ::Text:: *)
(*Expand all compact objects inside DiracTraces*)


DiracTrace[DiracProduct[a___, GammaM[\[Mu]_, \[Nu]__], b___], opt:OptionsPattern[]]:= 
	DiracTrace[ASymGammaExpand@ DiracProduct[a, GammaM[\[Mu], \[Nu]], b], opt]// Expand;


DiracTrace[DiracProduct[a___, Proj@ s_], opt:OptionsPattern[]]:= DiracTrace[DiracProduct@ a/2+ s DiracProduct[a, Gamma5]/2, opt] ;


(* ::Subsubsection::Closed:: *)
(*General properties*)


(* ::Text:: *)
(*Basic traces*)


DiracTrace[DiracProduct[GammaM@ \[Mu]_Index, GammaM@ \[Nu]_Index], OptionsPattern[]]:= 4 Metric[\[Mu],\[Nu]];
DiracTrace[DiracProduct[GammaM@ \[Mu]_Index, GammaM@ \[Nu]_Index, GammaM@ \[Rho]_Index, GammaM@ \[Sigma]_Index], OptionsPattern[]]:=
	4 Metric[\[Mu],\[Nu]] Metric[\[Rho],\[Sigma]] - 4 Metric[\[Mu],\[Rho]] Metric[\[Nu],\[Sigma]] + 4 Metric[\[Mu],\[Sigma]] Metric[\[Nu],\[Rho]];


(* ::Subsubsection::Closed:: *)
(*Semi-NDR specific properties*)


(* ::Text:: *)
(*Reduction of the DiracTraces*)


DiracTrace[x_DiracProduct, opt:OptionsPattern[]]:= Module[
	{indices, n, \[Mu]},
	(*Reduce the traces depending on whether they include \[Gamma]5 or not.*)
	Switch[MemberQ[List@@x, Gamma5],
		False,
			indices= List@@ x[[;;, 1]];
			If[OddQ@ Length@ x, Return@ 0;];
			Expand@ Sum[
				(-1)^n * Metric@@ indices[[{1, n}]] DiracTrace[x[[Complement[Range@ Length@ x, {1, n}] ]], opt],
			{n, 2, Length@ x}],
		True, (* The results here yield evanescent contributions we will need to deal with at two-loop order *)
			indices= List@@ x[[;;-2, 1]];
			Which[
				EvenQ@ Length@ x || Length@ x === 3 || Length@ x === 1, 
					0,
				Length@ x === 5, 
					-4I * LCTensor@@ indices,
				Length@ x >= 7, 
					Sum[(-1)^(n1+n2+1) Metric@@ indices[[{n1, n2}]] DiracTrace[x[[Complement[Range@ Length@ x, {n1, n2}]]]],{n1, 1, 2},{n2,n1+1,3}] + I LCTensor@@ Join[indices[[{1,2,3}]],{Index[\[Mu],Lorentz]}] DiracTrace[\[Gamma][\[Mu]]**\[Gamma][5]**x[[Complement[Range@ Length@ x, {1, 2, 3}] ]]] 
			]
	]
];


(* ::Subsection:: *)
(*Expand to basis*)


(* ::Subsubsection::Closed:: *)
(*General Properties*)


RefineDiracProducts@ expr_:= expr/. x_DiracProduct:> RefineDiracProducts@ x// Expand;


(* ::Subsubsection::Closed:: *)
(*SNDR specific properties*)


(* ::Text:: *)
(*Anti-symmetrize all the DiracProducts inside DiracTraces. Performance can be improved with the techniques in [1905.00429], Sec 2.9.2.*)


RefineDiracProducts@ DiracProduct[x:OrderlessPatternSequence[GammaM[_, __], GammaM[__],___]]:=
	RefineDiracProducts@ ASymGammaExpand@ DiracProduct[x]// Expand;


(* ::Text:: *)
(*Charge conjugation matrices, chiral projectors, and Subscript[\[Gamma], 5] are left  alone  *)


RefineDiracProducts@ DiracProduct@ GammaCC:= DiracProduct@ GammaCC;
RefineDiracProducts@ DiracProduct[GammaCC, x__]:=
	DiracProduct@ GammaCC** RefineDiracProducts@ DiracProduct@x;


RefineDiracProducts@ DiracProduct@ Gamma5:= DiracProduct@ Gamma5;
RefineDiracProducts@ DiracProduct@ s_Proj:= DiracProduct@ s;
RefineDiracProducts@ DiracProduct[x__, chiral: (Gamma5| _Proj)]:=
	RefineDiracProducts@ DiracProduct@ x ** DiracProduct@ chiral;


(* ::Text:: *)
(*Order indices in antisymmetric GammaM*)


RefineDiracProducts[DiracProduct[GammaM[a__]]]:= Signature@{a} DiracProduct[GammaM @@ Sort@{a}];


(* ::Text:: *)
(*Expansion of Dirac product unto basis of anti-symmetric gamma matrices with the techniques of [1905.00429], Sec 2.9.2.*)


RefineDiracProducts[x:DiracProduct[_GammaM,_GammaM..]](*/;Count[x,_GammaM,Infinity]>1*):= Module[{gammas, k, set, pairs, aSym, pairCombs},
	gammas = GammaM@@ x// Flatten;
	
	Signature@ gammas Sum[
		aSym= Complement[gammas, set];
		pairCombs= DeleteDuplicatesBy[Partition[#, 2]&/@ Permutations@ set, (Sort[Sort/@ #] &)];
		Sum[
			Signature@ Flatten@ GammaM[pairs, aSym]Times@@ Metric@@@ pairs DiracProduct@ aSym
		,{pairs, pairCombs}]
	,{k, 0, Length@ gammas, 2}, {set, Subsets[gammas, {k}]}]

];


(* ::Text:: *)
(*Dealing with transposed matrices*)


RefineDiracProducts::transp= "Some, but not all, matrices in `1` was transp. Could not match to basis";
RefineDiracProducts@ x:DiracProduct[_Transp, ___]:= Module[{},
	If[!MatchQ[x, DiracProduct[_Transp..]],
		Message[RefineDiracProducts::transp, x];
		Return@ x;
	];

	RefineDiracProducts@ Reverse[x][[;;, 1]]/. d_DiracProduct:> Transp@ d
];


(* ::Subsection::Closed:: *)
(*Collecting and manipulating the gamma matrices*)


(* ::Text:: *)
(*Check if something commutes with gamma matrices: *)


\[Gamma]CommuteQ[Xop| DiracProduct| MomNCM]= False;
\[Gamma]CommuteQ@ Field[_, Fermion, ___]= False;
\[Gamma]CommuteQ@ TransposeThisSpinChain= False;
\[Gamma]CommuteQ@x_NonCommutativeMultiply:=Nor[LOpenSpinChainQ@x, ROpenSpinChainQ@x];
\[Gamma]CommuteQ[f_?\[Gamma]CommuteQ[x___]]:=And@@ \[Gamma]CommuteQ/@ {x};
\[Gamma]CommuteQ[f:Except[NonCommutativeMultiply][x___]]:=  False;
\[Gamma]CommuteQ@ Alternatives[Pattern, _Blank, _BlankSequence, _BlankNullSequence, _Except] = False;
\[Gamma]CommuteQ[_]:= True;


(* ::Text:: *)
(*Collect all gamma matrices in Dirac products on the left of the non-commutative multiply:*)


CollectGammaMatrices@expr_:=expr/.{
		x_DiracProduct :> Hold@ x
	}//.{
		MomNCM[a___, x_?\[Gamma]CommuteQ, Hold@ g_DiracProduct, b___]:>
		MomNCM[a, Hold@g, x, b]
	}//ReleaseHold;


(* ::Section:: *)
(*Operations*)


(* ::Subsection::Closed:: *)
(*Fermion test functions*)


FermionL= (Bar|Transp)@Field[_,Fermion,___];
FermionR= Field[_,Fermion,___] | Transp@Bar@Field[_,Fermion,___];


(* ::Subsubsection::Closed:: *)
(*FermionQ*)


FermionQ[FermionL | FermionR]:=True;
FermionQ[expr_]:=False;


(* ::Subsubsection::Closed:: *)
(*L/R OpenSpinChainQ*)


LOpenSpinChainQ@x_NonCommutativeMultiply:=LOpenSpinChainQ@ First@x
LOpenSpinChainQ[FermionL]:=False  
LOpenSpinChainQ@x_:=!\[Gamma]CommuteQ@x


ROpenSpinChainQ@x_NonCommutativeMultiply:=ROpenSpinChainQ@ Last@x
ROpenSpinChainQ[FermionR]:=False  
ROpenSpinChainQ@x_:=!\[Gamma]CommuteQ@x


(* ::Subsubsection::Closed:: *)
(*ClosedSpinChainQ*)


ClosedSpinChainQ@ x_NonCommutativeMultiply:= !FreeQ[x, Fermion
	] && Nor[
		LOpenSpinChainQ@ x, 
		ROpenSpinChainQ@ x
	] && Last@ CumulativeSpin@ x === 0;
ClosedSpinChainQ@ _:= False;


(* ::Subsubsection::Closed:: *)
(*MajoranaQ *)


MajoranaQ@x_:=!FreeQ[x, Field[label_,Fermion,___]/;$FieldAssociation[label][SelfConjugate]]


(* ::Subsubsection::Closed:: *)
(*CumulativeSpin count*)


(* ::Text:: *)
(*Returns the cumulative count of fermion spins along an NCM product. Counts +1 for R-open fermions and -1 for L-open.*)


CumulativeSpin@ op:(_NonCommutativeMultiply|_MomNCM):= Module[{temp},
	temp= FermionCount/@ (List@@ op);
	FoldList[Plus, temp]
];


FermionCount@ FermionL= 1;
FermionCount@ FermionR= -1;
FermionCount@ SymmetrizedCD[_, expr_]:= FermionCount@ expr; 
FermionCount@ x:(_NonCommutativeMultiply| _MomNCM| _Times):= 
	Plus@@ FermionCount/@ (List@@ x);
FermionCount@ x:_Plus:= FermionCount@ First@ x; 
FermionCount@_ = 0; 


(* ::Subsection::Closed:: *)
(*GammaCC*)


DiracProduct[a___, GammaCC, GammaCC, b___]:= - DiracProduct[a, b];
DiracProduct[a___, s: _Proj | Gamma5, GammaCC, b___]:= DiracProduct[a, GammaCC, Transp@ s, b];
DiracProduct[a___, Transp@s: _Proj | Gamma5, GammaCC, b___]:= DiracProduct[a, GammaCC, s, b];
DiracProduct[a___, g_GammaM, GammaCC, b___]:= Power[-1, Ceiling[Length@ g/2]] DiracProduct[a, GammaCC, Transp@ g, b];
DiracProduct[a___, Transp@g_GammaM, GammaCC, b___]:= Power[-1, Ceiling[Length@ g/2]] DiracProduct[a, GammaCC, g, b];


(* ::Subsection::Closed:: *)
(*Transp*)


(* ::Text:: *)
(*Transp should work on closed NCM lines for convenience, although they are commutative*)


Transp@ expr_NonCommutativeMultiply:= (-1)^Floor[Count[expr, _?FermionQ]/2] Transp/@ Reverse@ expr;


Transp@ expr_?CommutativeQ:= expr/. ncm_NonCommutativeMultiply:> Transp@ ncm; 


Transp[expr:(_Plus|_Times)]:= Transp/@ expr;


Transp@ Transp@ x_:= x;
Transp@ GammaCC= -GammaCC;
Transp[]:= 1;
Transp@ x_DiracProduct:= Transp/@ x/. y_DiracProduct:> Reverse@ y; (*Transp and Reverse can cuase multiplication with -1; hence, replacement rather than function call.*)


(* ::Text:: *)
(*Transp with multiple arguments (can occur in NCM rules for automatically transposing spinor lines).*)


Transp[x_, y__]:= Reverse[NonCommutativeMultiply[x, y]/. d_DiracProduct:> Transp@ d]; 


(* ::Subsection::Closed:: *)
(*Bar*)


(* ::Text:: *)
(*Bar denotes complex conjugation except for on fermion lines, where they are the Bar of the Dirac algebra*)


GroupMagic`PackageScope`NonBarableQ@ Alternatives[Coupling, DiracProduct, Field, FieldStrength,
	NonCommutativeMultiply, Transp]= False;


(* ::Subsubsection::Closed:: *)
(*Properties of Bar*)


Bar[x:(_Metric| _LCTensor)]:= x; 


Bar[expr_NonCommutativeMultiply]:= Bar/@ Reverse@ expr;
Bar@ x_DiracProduct:= Reverse@ x/. {Gamma5-> -Gamma5, Proj@ s_:> Proj[-s], g_GammaM:> Reverse@ g};


Bar@ f:Field[label_, Scalar|Vector[_]|Ghost, __]/; $FieldAssociation[label, SelfConjugate]:=f;
Bar@ f:Field[label_, Fermion, __]/; $FieldAssociation[label, SelfConjugate]:= 
	Transp[f]**DiracProduct[GammaCC]; (* Bar for Majorana Fermions *)
Bar@ FieldStrength[label_, lind_, ginds_, cdinds_]/; $FieldAssociation[label, SelfConjugate]:= 
	FieldStrength[label, lind, Bar/@ ginds, cdinds];
Bar@ c:Coupling[label_, __]/; $CouplingAssociation[label, SelfConjugate]:= c;
Bar@ Coupling[label_, ind_List,x__]/; (Head[$CouplingAssociation[label, SelfConjugate]]===List):= Coupling[label, Permute[ind, $CouplingAssociation[label, SelfConjugate]],x];


(*Special case of charge conjugation before Bar*)
Bar@ Transp@ f_:= Transp@ Bar@ f;


LF/: Bar@ lf_LF:= lf;


Bar@ x_List := Bar/@ x;


Bar@ Index[x_, Lorentz]:= Index[x, Lorentz];
Bar@ Index[x_, type: Alternatives@@ Keys@ GetFlavorIndices[]]:= Index[x, type];


(* ::Subsection::Closed:: *)
(*CConj*)


(* ::Text:: *)
(*Properties of charge conjugation working on fermion fields *)


CConj::notfermion= "CConj is only supposed to act on a fermion field."


CConj@f:Field[label_,Fermion,_,_]/;$FieldAssociation[label][SelfConjugate]:= f;
CConj@f:Bar[Field[label_,Fermion,_,_]]/;$FieldAssociation[label][SelfConjugate]:= f;
CConj@f:Bar[Field[_,Fermion,_,_]]:= Transp@Bar@f ** DiracProduct@GammaCC;
CConj@f:Field[_,Fermion,_,_]:= DiracProduct@ GammaCC ** Transp@Bar@f;
CConj[DiracProduct[Proj[s_]]**(f:Field[_,Fermion,_,_])]:= DiracProduct[Proj[-s]]**CConj[f];
CConj[(f:Bar[Field[_,Fermion,_,_]])**DiracProduct[Proj[s_]]]:= CConj[f]**DiracProduct[Proj[-s]];
CConj@_:=(Message[CConj::notfermion]; Abort[]);


(* ::Subsection:: *)
(*Evanescent operators*)


(* ::Subsubsection::Closed:: *)
(*Handle functions*)


ResetEvanescentOperators[]:= Block[{},
	$EvanescentTerms= <||>;
	(* Set a counter for the naming of the operators *)
	EvaCounter=1;
];
ResetEvanescentOperators[];


ExpandEvanescentOperators[expr_]:= expr /.(EvaOp[x_,ind_]:>(($EvanescentTerms[x][RedundantOperator]-$EvanescentTerms[x][BasisOperator])/.AssociationThread[FindOpenIndices[$EvanescentTerms[x][RedundantOperator]],ind]))/.EvaOp[x_]:>(($EvanescentTerms[x][RedundantOperator]-$EvanescentTerms[x][BasisOperator]));
GetEvanescentTerm[EvLabel___]:= $EvanescentTerms[EvLabel];
GetEvanescentTerm[]:= $EvanescentTerms;


FindEvanescentOperator[operator_]:= Module[{inputop,openind,indtemp, evaop, evaind, coeff=0,label=0, placeholder4coeff,selectoneop, evacoeff, opcoeff},
	inputop=MatchOperatorPatterns[CollectOperators@Contract@operator];
	coeff=(Catch[
		evaop=MatchOperatorPatterns[ExpandEvanescentOperators[EvaOp[#]]];
		If[MatchQ[Cases[evaop,_AtomicOp,All], {OrderlessPatternSequence@@(Cases[inputop,_AtomicOp,All])}],
		(*check ordering of indices too?*)
			label=#;
			selectoneop=First@Cases[MatchOperatorPatterns[$EvanescentTerms[#][RedundantOperator]],_AtomicOp,All];
			opcoeff= Coefficient[inputop/.selectoneop->placeholder4coeff,placeholder4coeff];
			evacoeff= Coefficient[evaop/.selectoneop->placeholder4coeff,placeholder4coeff];
			openind=FindOpenIndices@OpsToFieldForm@selectoneop;
			Throw[opcoeff/evacoeff],
			Throw[Nothing]]
		]&/@ (Keys@$EvanescentTerms));
	If[label=!=0, First@coeff*EvaOp[label, openind], 0]
]


(* ::Subsubsection::Closed:: *)
(*Helper functions*)


ProjExpand[exp_]:=exp/. DiracProduct[b___,Proj[s_]]:> (DiracProduct[b] + s  DiracProduct[b,Gamma5])/2 //Expand;


(* ::Subsubsection::Closed:: *)
(*Define evanescent operators*)


DefineEvanescentOperator[inioperator_,finoperator_(*,order_*),origin_]:=Module[{evaOperator,(*evaOpList,*)label(*,looporder*), result},
	evaOperator= inioperator-finoperator(*//ContractCGs*)(*//RefineDiracProducts//Contract*)//RelabelIndices;
	(*evaOpList=If[(EvaLabels=Keys@$EvanescentTerms)==={},{},ExpandEvanescentOperators[EvaOp[#,Alphabet[][[;;Length[FindOpenIndices[$EvanescentTerms[#][RedundantOperator]]]]]]]&/@EvaLabels];*)
	If[(evaOperator//RefineDiracProducts//Contract//ProjExpand)===0 , 
		0,
		(*check if evaOperator already exists*)
		result=FindEvanescentOperator[evaOperator];
		If[result=!=0,
			result,
			(*looporder= order; *)
			label=EvaCounter;
			EvaCounter+=1;
			AppendTo[$EvanescentTerms, label-> <|RedundantOperator-> CollectOperators@Contract@RelabelIndices@inioperator , BasisOperator-> CollectOperators@Contract@RelabelIndices@finoperator, Origin-> origin (*, LoopOrder-> looporder*) |>];
			EvaOp[label,FindOpenIndices[inioperator]]
		   ]
	]
]


(* ::Subsection:: *)
(*Fierzing*)


(* ::Subsubsection::Closed:: *)
(*Error messages*)


Fierz::error1= "The Fierz function can only be used on the product of two closed spin chains with standard Dirac structures with head DiracProduct (or nothing for scalar currents). ";
Fierz::Order = "Fierz function only support Fierz Order {1,3,4,2} or {1,4,3,2}."


(* ::Subsubsection::Closed:: *)
(*Property*)


Options[Fierz]={Order->{1,4,3,2},Evanescent-> True};
Options[Fierz4D]={Order->{1,4,3,2}};


(* ::Subsubsection::Closed:: *)
(*Helper functions*)


FieldLabel[f:_Field|Bar@_Field|Transp@_Field|Transp@Bar@_Field]:=First@Cases[{f}, Field[l_,_, _,_]:>l,Infinity];
FieldIndices[f:_Field|Bar@_Field|Transp@_Field|Transp@Bar@_Field]:=First@Cases[{f}, Field[_,_,ind_,_]:>ind,Infinity];


(* ::Subsubsection::Closed:: *)
(*4D Fierz function*)


Fierz4D[(SP1:NonCommutativeMultiply[field1_,G12___,field2_])*(SP2:NonCommutativeMultiply[field3_,G34___,field4_]), OptionsPattern[]]:=
Module[
{Gbasis, Gbasisdual, ind1, ind2, Gcoeff, i,j, C1=1, C2=1, 
G1=G12*1, G2=G34*1, P1=1, P2=1, P3=1, P4=1, f1=field1, f2=field2, f3=field3, f4=field4, sgnO=1},

	ind1={Unique[],Unique[],Unique[],Unique[]};
	ind2={Unique[],Unique[],Unique[],Unique[]};

	Gbasis[a_,b_,c_,d_]:={PL,PR,PL**\[Gamma][a],PR**\[Gamma][b],\[Sigma][c,d]/2}/.NonCommutativeMultiply[x_]:>x;
	Gbasisdual[a_,b_,c_,d_]:={PL,PR,PR**\[Gamma][a],PL**\[Gamma][b],\[Sigma][c,d]/2}/.NonCommutativeMultiply[x_]:>x;
	
	If[OptionValue@Order === {1,2,3,4}, Return[SP1*SP2]];
	If[!MemberQ[{{1,3,4,2},{1,4,3,2},{1,2,3,4}},OptionValue@Order], Message[Fierz::order];Abort[]];
	If[OptionValue@Order==={1,3,4,2}, 
			f3=Transp@field4;
			f4=Transp@field3;
			sgnO=-1;
			G2=Transp@G2;
			If[First@G2===-1, G2=-G2; sgnO=+1;]
	];

	If[!ClosedSpinChainQ@SP1 || !ClosedSpinChainQ@SP2, Message[Fierz::error1]; Abort[]];
	If[(Head[G1]=!= DiracProduct ||  Head[G2]=!= DiracProduct ) && (G1=!=1 ||G2=!=1  ), Message[Fierz::error1]; Abort[]];
	
	If[Head[f1]===Transp, G1=(-CC)**G1; f1=f1**CC];
	If[Head[f2]===Transp, G1=G1**(-CC); f2=CC**f2];

	If[Head[f4]===Transp, G2=G2**(-CC); f4=CC**f4];
	If[Head[f3]===Transp, G2=(-CC)**G2; f3=f3**CC];

	If[!FreeQ[G1, _Proj],
		P1=DiracProduct@First@Cases[Transp@G1,_Proj,Infinity];
		P2=DiracProduct@First@Cases[G1,_Proj,Infinity];
	];

	If[!FreeQ[G2, _Proj],
		P3=DiracProduct@First@Cases[Transp@G2,_Proj,Infinity];
		P4=DiracProduct@First@Cases[G2,_Proj,Infinity];
	];

	G1 = G1 /._Proj->1;
	G2 = G2 /._Proj->1;

	Gcoeff=IdentityMatrix[5];
	For[j=1,j<6,++j,
		For[i=1,i<6,++i,
			Gcoeff[[i,j]]= -(1/4) DiracTrace[(Gbasis@@ind1)[[i]]**G1**(Gbasisdual@@ind2)[[j]]**G2,Dimensions->4] //Contract;
		]
	];

	sgnO*(Sum[
			Gcoeff[[i,j]]
				* (f1**P1**(Gbasisdual@@ind1)[[i]]**P4**f4) * (f3**P3**(Gbasis@@ind2)[[j]]**P2**f2)
		,{i,1,5},{j,1,5}] //Contract //RelabelIndices //LC2Gamma5) /.GammaM[a_,b_]/;(!OrderedQ[{a,b}]):> -GammaM[b,a]
]


(* ::Subsubsection::Closed:: *)
(*Fierz score*)


FbasisQ[SP1_,SP2_]:=FreeQ[SP1*SP2//.Join[{_Field->1, GammaCC->1,Proj[1]->1,Proj[-1]->1},Thread[NonCommutativeMultiply/@{DiracProduct@GammaM[x_],DiracProduct@Transp@GammaM[x_],DiracProduct@GammaM[x_, y_],
DiracProduct@Transp@GammaM[x_, y_]}->1]],NonCommutativeMultiply];


FierzScore[op_Operator]:=FierzScore[NormalForm@op];


FierzScore[expr_/;(Count[expr,_NonCommutativeMultiply, Infinity]=!=2)]:=0;


FierzScore[(SP1 : NonCommutativeMultiply[field1_, G12___, field2_] )*(SP2 : NonCommutativeMultiply[field3_, G34___, field4_])*rest___] :=
 Module[
  {result = 0, fields = {field1, field2, field3, field4}, order = OptionValue@Order,
   GaugeGroups, gind, pos, posmax},
  	(*Default rules: same fields, higher groups together*)
  	result = Plus[0,
    	    (*same labels favored*)
    		If[FieldLabel[fields[[1]]] === FieldLabel[fields[[2]]], +1 , -1],
    		If[FieldLabel[fields[[3]]] === FieldLabel[fields[[4]]], +1 , -1],
    		(*many transposed fields penalized*)
    		If[Xor[Head[fields[[1]]] === Transp, Head[fields[[2]]] === Transp] && Xor[Head[fields[[3]]] === Transp, Head[fields[[4]]] === Transp] , -6 , .5],
    		(*double tensor  penalized*)
    		If[! FreeQ[G12, GammaM[a___] /; (Length[List@a] > 1)] && ! FreeQ[G34, GammaM[b___] /; (Length[List@b] > 1)], -4, 0],
    		(*Dirac structures not part of the basis penalized*)
    		If[FbasisQ[SP1, SP2], 0, -10],
    		(*contracted indices in bilinears encouraged*)
    		Total[If[MemberQ[FieldIndices@field2,#],+0.2,0]&/@(FieldIndices@field1)],
    		Total[If[MemberQ[FieldIndices@field4,#],+0.2,0]&/@(FieldIndices@field3)]
    		];
  		
  	(*same group in only two fields, starting from biggest group*)
  	GaugeGroups = Reverse@SortBy[Keys@GetGaugeGroups[], GroupDimension@* GetGaugeGroups[#][Group] &];
  	gind = Reverse[SortBy[Select[FieldIndices@#, (MemberQ[GaugeGroups, GroupFromRep@ #[[2]]] &)], GroupDimension@* GetGaugeGroups[#[[2]]][Group] & ]] & /@ fields;
      pos = Position[gind /. Index[_, g_] :> GroupFromRep@g, #] & /@ GaugeGroups /. {} -> Nothing;
    	If[pos =!= {},
    		posmax = First@Transpose@First@pos;
    		If[Length[posmax]=!=2 && Length@pos>1,posmax=First@Transpose[pos[[2]]]];
     		result += If[MemberQ[{{1, 2}, {3, 4}}, posmax], +1 , 0];
     	];
    	result
    ]	


(* ::Subsubsection::Closed:: *)
(*Fierz function*)


Fierz[(SP1:NonCommutativeMultiply[field1_,G12___,field2_])*(SP2:NonCommutativeMultiply[field3_,G34___,field4_])*rest___, OptionsPattern[]]/;(FreeQ[rest+1,NonCommutativeMultiply]):=
Module[
{result,groupStruct,evaOperator, iniOperator },
	iniOperator=rest*SP1*SP2//RefineDiracProducts//Contract//RelabelIndices;
	If[Head@iniOperator===Plus, Fierz[#]&/@iniOperator,
	result=Fierz4D[SP1*SP2,Order->OptionValue@Order];

	groupStruct=Times@@Cases[{rest},_Delta|_CG,Infinity];
	
	evaOperator=If[OptionValue@Evanescent, 
			DefineEvanescentOperator[groupStruct*(SP1*SP2),groupStruct*result,(*Exponent[rest*1,hbar]+1,*)Fierz]*rest/groupStruct,
			0];
	evaOperator+result*rest//Expand//ContractCGs//Contract
	]
]


(*FierzOld[(SP1:NonCommutativeMultiply[field1_,G12___,field2_])*(SP2:NonCommutativeMultiply[field3_,G34___,field4_])*rest___, OptionsPattern[]]/;(FreeQ[rest+1,NonCommutativeMultiply]):=
Module[
{result,groupStruct,evaOperator ,order={1,2,3,4}},
	(*order=First@TakeLargestBy[{{1,2,3,4},{1,4,3,2},{1,3,4,2}},FierzScore[SP1*SP2,Order->#]&,1];*)
	result=Fierz4D[SP1*SP2,Order->order];

	groupStruct=Times@@Cases[Times@rest,_Delta|_CG,Infinity];
	
	evaOperator=If[OptionValue@Evanescent, DefineEvanescentOperator[groupStruct(SP1*SP2),groupStruct*result,Exponent[rest*1,hbar]+1,Fierz]*rest/groupStruct,0];
	evaOperator+result*rest//Expand//ContractCGs//Contract
]*)


(* ::Subsection::Closed:: *)
(*Gamma Products Reduction*)


GammaReduction[expr_Plus, opt___]:= GammaReduction[#,opt]&/@expr;


GammaReduction[expr:Except[Plus],opt___]/;(Count[expr,_NonCommutativeMultiply,Infinity]=!=2):=expr;


Basis4D[]:=Module[{\[Mu],\[Nu]},
	{{PL,PL},{PR,PR},{PL,PR},{PR,PL},
	{\[Gamma]@\[Mu]**PL,\[Gamma]@\[Mu]**PL},{\[Gamma]@\[Mu]**PR,\[Gamma]@\[Mu]**PR},{\[Gamma]@\[Mu]**PL,\[Gamma]@\[Mu]**PR},{\[Gamma]@\[Mu]**PR,\[Gamma]@\[Mu]**PL},
	{\[Sigma][\[Mu],\[Nu]]**PL,\[Sigma][\[Mu],\[Nu]]**PL},{\[Sigma][\[Mu],\[Nu]]**PR,\[Sigma][\[Mu],\[Nu]]**PR}}
	]


InverseBasisTrace[]:=InverseBasisTrace[]=Simplify@Inverse@Table[
		bi[[1]]**bj[[1]]**bi[[2]]**bj[[2]]//DiracTrace//ContractMetric
		,{bi,Basis4D[]}, {bj,Basis4D[]}];


GammaReduction[(SP1:NonCommutativeMultiply[field1_,G12___,field2_])*(SP2:NonCommutativeMultiply[field3_,G34___,field4_])* rest___,OptionsPattern[{Evanescent-> True}]]/;(FreeQ[rest+1,NonCommutativeMultiply]):=
Module[{Bcoeff,basis,f1=field1,f2=field2,f3=field3,f4=field4, G1= G12*1,G2= G34*1,invbastr, result, groupStruct, evaOperator},
(*Check if in the basis*)
(*If[MemberQ[basis,{G1,G2}],Return[SP1 * SP2* rest]];*)
(*If[Count[G1*G2,_GammaM,Infinity]<3 && Count[G1,_Index,Infinity]<3 && Count[G2,_Index,Infinity]<3 , Return[SP1 * SP2* rest]];
*)
	basis=Basis4D[];
	invbastr=InverseBasisTrace[];
	
	If[Head[f1]===Transp, G1=(-CC)**G1; f1=f1**CC];
	If[Head[f2]===Transp, G1=G1**(-CC); f2=CC**f2];

	If[Head[f4]===Transp, G2=G2**(-CC); f4=CC**f4];
	If[Head[f3]===Transp, G2=(-CC)**G2; f3=f3**CC];

	Bcoeff=invbastr . Table[
		bj[[1]]**G1**bj[[2]]**G2//RefineDiracProducts//ContractMetric//DiracTrace
	,{bj,basis}]//Simplify;

	result= Sum[Bcoeff[[i]]*(f1**basis[[i,1]]**f2) * (f3**basis[[i,2]]**f4) , {i,1,Length@Bcoeff}];
	groupStruct=Times@@Cases[Times@rest,_Delta|_CG,Infinity];
	
	evaOperator=If[OptionValue@Evanescent,
				DefineEvanescentOperator[groupStruct(SP1*SP2),groupStruct*result,(*Exponent[rest*1,hbar]+1,*)GammaReduction]*rest/groupStruct,
				0];
	evaOperator+result*rest//Expand//ContractCGs//Contract
]


(* ::Subsection::Closed:: *)
(*Levi-Civita relations*)


RemoveLCTensor[expr,opt___]/;FreeQ[expr,_LCTensor]:=expr;


RemoveLCTensor[expr_,opt___]:= NormalForm[Operator[expr]/.a_Operator:>RemoveLCTensor[a,opt]];


RemoveLCTensor[op_Operator,OptionsPattern[{Evanescent-> True}]]:=Module[{opexp=NormalForm@op, evaOperator, result},
	result=LC2Delta@LC2Gamma5@opexp;
	(*add SchoutenID?*)
	evaOperator=If[OptionValue@Evanescent,
				DefineEvanescentOperator[opexp,result,LCTensor],
				0];
	evaOperator+result//RelabelIndices//Contract	
]
