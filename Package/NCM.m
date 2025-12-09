(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`NCM`*)


(* ::Subtitle:: *)
(*Contains the definitions of the NCM*)


(* ::Chapter:: *)
(*Public:*)


(* ::Section:: *)
(*Scoping*)


(* ::Subsubsection::Closed:: *)
(*Exported*)


PackageExport["Bar"]
PackageExport["NCM"]


(* ::Subsubsection::Closed:: *)
(*Internal*)


PackageScope["NonBarableQ"]
PackageScope["SetBarable"]
PackageScope["UnsetBarable"]


PackageScope["CommutativeQ"]
PackageScope["Commutative"]


PackageScope["FermionTrace"]
PackageScope["CanonizeSpinorLines"]


PackageScope["OpenSpinChainQ"]


PackageScope["NCDot"]


(* ::Section:: *)
(*Usage definitions*)


(* ::Subsubsection::Closed:: *)
(*Exported*)


NCM::usage = "NCM[a, b, ...] (alternatively a\[CenterDot] b\[CenterDot] ...) denotes the Dirac product of spinors, Dirac matrices, etc.";


Bar::usage   = "Bar[field] returns the bar of a fermion field or the conjugate otherwise. Bar can also be applied to conjugate indices and charges.";


(* ::Subsubsection::Closed:: *)
(*Internal*)


NonBarableQ::usage  = "Specifies whether a term is trivial under bar or not.";
SetBarable::usage   = "Function for setting complex objects.";
UnsetBarable::usage = "Function for unsetting complex objects.";


CommutativeQ::usage      = "CommutativeQ[obj] returns True if obj is a comutative object and false otherwise.";
Commutative::usage       = "Commutative[obj] is an auxiliary head that can be used to treat the object obj temporarily as commutative.";


FermionTrace::usage        = "FermionTrace[expr] closes fermion lines in expr and performs Dirac gamma traces.";
CanonizeSpinorLines::usage = "CanonizeSpinorLines[expr] separates out nested spinor lines, breaking up the NCM accordingly.";


(* ::Chapter:: *)
(*Private:*)


(* ::Section:: *)
(*Bar*)


(* ::Text:: *)
(*Bar denotes complex conjugation except for on fermion lines, where they are the Bar of the Dirac algebra*)


(* ::Subsubsection::Closed:: *)
(*Set rules for what is trivial under a Bar *)


(* ::Text:: *)
(*Default is no action*)


NonBarableQ[f_?NonBarableQ[x___]]:= And@@ NonBarableQ/@ {x};
NonBarableQ[f_@ x___]:= False;
NonBarableQ[_] := True; 
NonBarableQ@ Alternatives[Pattern, Blank, BlankSequence, BlankNullSequence, Except, Hold]= False;


(* ::Text:: *)
(*Objects with non-trivial behavior under Bar *)


NonBarableQ@ Alternatives[Complex, CG, Index]= False;
NonBarableQ@ _SparseArray= False;


NonBarableQ@ Alternatives[Coupling, DiracProduct, Field, FieldStrength,
	NCM, Transp, EvaOp]= False;


(* ::Subsubsection::Closed:: *)
(*General properties of Bar*)


Bar@ Bar@ x_:= x;


Bar@ x_?NonBarableQ:= x;


Bar[expr:Alternatives[_Plus, _Times, _Power, _Log, _List]]:= Bar/@expr;


Bar@ x_SparseArray:= Conjugate@ x;


Bar@ x_Complex:= Conjugate@ x;


(* ::Subsubsection::Closed:: *)
(*Action on Matchete symbols*)


Bar[expr_NCM]:= Bar/@ Reverse@ expr;
Bar@ x_DiracProduct:= Reverse@ x/. {Gamma5-> -Gamma5, Proj@ s_:> Proj[-s], g_GammaM:> Reverse@ g};


Bar@ f:Field[label_, Scalar|Vector[_]|Graviton[__]|Ghost|AntiGhost, __]/; $FieldAssociation[label, SelfConjugate]:=f;
Bar@ f:Field[label_, Fermion, __]/; $FieldAssociation[label, SelfConjugate]:= 
	Transp[f]\[CenterDot] DiracProduct[GammaCC]; (* Bar for Majorana Fermions *)
Bar@ FieldStrength[label_, lind_, ginds_, cdinds_]/; $FieldAssociation[label, SelfConjugate]:= 
	FieldStrength[label, lind, Bar/@ ginds, cdinds];
Bar@ c:Coupling[label_, __]/; $CouplingAssociation[label, SelfConjugate]:= c;
Bar@ Coupling[label_, ind_List,x__]/; (Head[$CouplingAssociation[label, SelfConjugate]]===List):= Coupling[label, Permute[ind, $CouplingAssociation[label, SelfConjugate]],x];


(*Special case of charge conjugation before Bar*)
Transp/: Bar@ Transp@ f_:= Transp@ Bar@ f;


LF/: Bar@ lf_LF:= lf;
LCTensor/: Bar@ lc_LCTensor:= lc;


Bar@ Index[x_, Lorentz]:= Index[x, Lorentz];


(* ::Subsubsection::Closed:: *)
(*For setting objects complex*)


SetBarable[x_, y__]  := (SetBarable@ x; SetBarable@ y;);
SetBarable[x_] := (NonBarableQ@ x ^= False;);


(* ::Text:: *)
(*And unseting them for removal*)


UnsetBarable[x_Symbol] := (x/: NonBarableQ@ x =.);
UnsetBarable[x:_Symbol@_] := (Evaluate@ Head@ x/: NonBarableQ@ x =.);


(* ::Section:: *)
(*NonCommutativeMultiply functionality*)


(* ::Subsection:: *)
(*Commutative check*)


(* ::Text:: *)
(*Hard-code commutative properties of objects to prevent iterative calls to all subparts: greatly improves performance *)


CommutativeQ@ _DiracProduct= False;
CommutativeQ@ Field[_, Fermion, __]= False;


CommutativeQ@ Field[_, Scalar| _Vector| _Tensor| Ghost| AntiGhost, __]= True;
CommutativeQ@ _FieldStrength= True;
CommutativeQ@ _Coupling= True;
CommutativeQ@ _CG= True;
CommutativeQ@ _LF= True;


(* ::Text:: *)
(*Default assumption is that everything is commutative*)


(* Memoization speeds up DeriveSubstitutions by a factor of ~2 or so *)
(* Memoization seems to have very poor performance in EOM and GreensSimplify creating 100,000s of Downvalues *)
(*CommutativeQ[x_NCM]:= (CommutativeQ[x]= ClosedSpinChainQ[x]);
CommutativeQ[f_?CommutativeQ[x___]]:= (CommutativeQ[f[x]]= And@@ CommutativeQ/@ {x});*)

CommutativeQ@ x_NCM:= ClosedSpinChainQ@ x;
CommutativeQ[f_?CommutativeQ[x___]] := And@@ CommutativeQ/@ {x};

CommutativeQ[f_[x___]] := False;
CommutativeQ[_] := True; 


(* ::Text:: *)
(*Define the non-commutative objects*)


CommutativeQ@ Alternatives[Pattern, Blank, BlankSequence, BlankNullSequence, Except, Hold] = False;


(* ::Text:: *)
(*Commutative is a head that can be used to temporarily treat an object as commutative*)


CommutativeQ@ Commutative@ _ ^= True; 


(* ::Subsection:: *)
(*Properties of NCM*)


(* ::Text:: *)
(*Highjack CenterDot for NCM shorthand*)


CenterDot= NCM;
(*Protect@ CenterDot;*) (* This can cause the loading to crash! *)


(* ::Text:: *)
(*Set definitions for the non-commutative product*)


(* ::Subsubsection::Closed:: *)
(*General properties*)


(* ::Text:: *)
(*NCM contractions*)


NCM[a___, NCM[b__], c___]:= NCM[a, b, c] /;FreeQ[List@b,Fermion]
NCM[] = 1;
NCM@NCM@x___:=NCM@x;


(* Extracting commuting objects *)
NCM[a___, b_?CommutativeQ, c___]:= b * NCM[a, c];
NCM[a___, b_?CommutativeQ * x_, c___]:= b * NCM[a, x, c];
(* Distributivity *)
NCM[a___, b_Plus, c___]:= NCM[a, #, c] & /@ b 


(*On matrix*)
NCDot[a_, b_]/;(Length@Dimensions@a===2 && Length@Dimensions@b===2 && (Dimensions[a][[2]])===(Dimensions[b][[1]])):=
	Inner[NCM,a,b,Plus];
NCDot[a_,b_,c__]:=NCDot[NCDot[a,b],c];
NCDot[0,0]:=0;


(* ::Subsubsection::Closed:: *)
(*Contraction of spin chains*)


NCM[a___, x:NCM@ b___, c___]:=
	If[ClosedSpinChainQ@ x,
		x NCM[a, c],
		NCM[a, b, c]
	];


(* ::Subsubsection::Closed:: *)
(*Canonical ordering of operators with transpose*)


(*No terms with two fields transposed*)
NCM[A: Transp@Field[_,Fermion,___] , B___/;FreeQ[List@B,Fermion] ,C: Transp@Bar@Field[_,Fermion,___]]:= - Transp[C]\[CenterDot] Transp[B] \[CenterDot] Transp[A] 
(*No complex fermion transpose on the left*)
NCM[A: Transp@Field[labelA_,Fermion,___]/;!$FieldAssociation[labelA][SelfConjugate], B___/;FreeQ[List@B,Fermion], C: Field[labelC_,Fermion,___]/;$FieldAssociation[labelC][SelfConjugate]]:= 
	- Transp[C]\[CenterDot] Transp[B] \[CenterDot] Transp[A] 
(*If there must be a transpose, and no derivatices, choose canonical ordering of labels*)
NCM[A:Transp@(Field[labelA_,Fermion,_,{}])/; $FieldAssociation[labelA][SelfConjugate], B___/;FreeQ[List@B,Fermion], C: Field[labelC_,Fermion,_,{}]/;$FieldAssociation[labelC][SelfConjugate]]:= 
	- Transp[C]\[CenterDot] Transp[B] \[CenterDot] Transp[A]  /;!OrderedQ[{labelA,labelC}] 
NCM[A:Transp@(Field[labelA_,Fermion,_,{}])/;!$FieldAssociation[labelA][SelfConjugate], B___/;FreeQ[List@B,Fermion], C: Field[labelC_,Fermion,_,{}]/;!$FieldAssociation[labelC][SelfConjugate]]:= 
	- Transp[C]\[CenterDot] Transp[B] \[CenterDot] Transp[A]  /;!OrderedQ[{labelA,labelC}]
NCM[A:Bar@(Field[labelA_,Fermion,_,{}]), B___/;FreeQ[List@B,Fermion], C: Transp@Bar@(Field[labelC_,Fermion,_,{}]) ]:=
	- Transp[C]\[CenterDot] Transp[B] \[CenterDot] Transp[A]  /;!OrderedQ[{labelA,labelC}]


(*If same field and same number of derivatives, place fields according to indices*)
(*NCM[A:Bar@(Field[label_,Fermion,indA:Except[_Pattern],derA_]), B___/;FreeQ[List@B,Fermion], C: Transp@Bar@(Field[label_,Fermion,indC:Except[_Pattern],derC_]) ]/;(Length[derA]===Length[derC]):=
	- Transp[C]\[CenterDot] Transp[B] \[CenterDot] Transp[A]  /;!OrderedQ[{indA,indC}/.{Index[_,Flavor]->Nothing,Index[_Pattern,_]->Nothing}]*)


(*(*Place field with most derivative on the right*)
NCM[A:Transp@Field[_,Fermion,_,Lind1_], B___/;FreeQ[List@B,Fermion], C: Field[_,Fermion,_,Lind2_]]:=
	- Transp[C]\[CenterDot] Transp[B] \[CenterDot] Transp[A]  /;(Length[Lind1]>Length[Lind2]);
NCM[A:Bar@Field[_,Fermion,_,Lind1_], B___/;FreeQ[List@B,Fermion], C: Transp@Bar@Field[_,Fermion,_,Lind2_]]:=
	- Transp[C]\[CenterDot] Transp[B] \[CenterDot] Transp[A]  /;(Length[Lind1]>Length[Lind2]);*)


(*Place field with most derivative on the right*)
NCM[A:Transp@Field[labelA_,Fermion,_,Lind1_], B___/;FreeQ[List@B,Fermion], C: Field[labelC_,Fermion,_,Lind2_]]/;!($FieldAssociation[labelA][SelfConjugate]&&!$FieldAssociation[labelC][SelfConjugate]):=
	- Transp[C]\[CenterDot] Transp[B] \[CenterDot] Transp[A]  /;(Length[Lind1]>Length[Lind2]);
NCM[A:Bar@Field[_,Fermion,_,Lind1_], B___/;FreeQ[List@B,Fermion], C: Transp@Bar@Field[_,Fermion,_,Lind2_]]:=
	- Transp[C]\[CenterDot] Transp[B] \[CenterDot] Transp[A]  /;(Length[Lind1]>Length[Lind2]);


(*Place field with EoM head on the right*)
NCM[EoM@ Transp[f1:Field[_, Fermion, _, {}]], d_DiracProduct, f2:Field[_, Fermion, _, {}]]:=
	- Transp@ f2 \[CenterDot] Transp@ d \[CenterDot] EoM@ f1;
NCM[EoM@ Bar[f1:Field[_, Fermion, _, {}]], d_DiracProduct, Transp[f2:Bar@ Field[_, Fermion, _, {}]]]:=
	- f2 \[CenterDot] Transp@ d \[CenterDot] EoM@ Transp@ Bar@ f1;


(* ::Subsection:: *)
(*Non-commutative symbols used in Matchete should be declared here*)


(* ::Text:: *)
(*From DiracAlgebra.m*)


CommutativeQ@ Alternatives[GammaM, Gamma5, GammaCC]= False;


(* ::Text:: *)
(*From FunctionalTools.m*)


(* SetNonCommutative[TransposeThisSpinChain] *)
(* For some reason the lie above does not work, but the one below does... *)
CommutativeQ[TransposeThisSpinChain]=False


(* ::Section:: *)
(*Active manipulation*)


(* ::Subsection:: *)
(*Organize fermion lines*)


(* ::Subsubsection::Closed:: *)
(*Fermion trace*)


(* ::Text:: *)
(*Function for closing fermion lines in traces as appear in some supertraces. *)


FermionTrace::cantclose = "The fermion line cannot be closed";
FermionTrace::multopens = "Multiple open fermion lines encountered in one term.";


OpenSpinChainQ= Not@* ClosedSpinChainQ;


FermionTrace@ expr_:= Module[{out= LagrangianExpand@ expr},	
	(*Trace terms in the sums separately*)
	If[Head@ out === Plus, Return[FermionTrace/@ out];]; 
	
	Switch[Count[{out}, _NCM? OpenSpinChainQ, All]
		,0 ,
			4 out
		,1 ,
			out/. x_NCM? OpenSpinChainQ:> TraceSpin@ x// ContractMetric
		,_ ,
			Message[FermionTrace::multopens];
			Abort[];
	]
];


TraceSpin@ spinChain_NCM:= Module[{spinCount= CumulativeSpin@ spinChain},
	If[Last@ spinCount =!= 0,
		Message[FermionTrace::cantclose];
		Abort[];	
	];
	(*Check if the fermion line can be closed through the trace *)
	If[MemberQ[spinCount, -1],
		(*Sign is from Grassmanian variables*)
		Return[-RotateLeft[spinChain, FirstPosition[spinCount, -1]]];
	];
	(*Otherwise do a Dirac trace*)
	DiracTrace@ spinChain
];


(* ::Subsubsection::Closed:: *)
(*Spinor line canonization*)


(* ::Text:: *)
(*Function for separating out nested spinor lines, breaking up the NCM accordingly*)


CanonizeSpinorLines::lopens = "The Spinor line has >1 L-open spinors.";
CanonizeSpinorLines::ropens = "The Spinor line has >1 R-open spinors.";


CanonizeSpinorLines@ fline_NCM:= Module[
		{cumSpinCount, max, min, l, r, expr},
	cumSpinCount= CumulativeSpin@ fline;
	min= Min@ cumSpinCount;
	If[min < -1,
		Message[CanonizeSpinorLines::lopens];
		Abort[];
	];
	If[Last@ cumSpinCount> 1,
		Message[CanonizeSpinorLines::ropens];
		Abort[];
	];
	
	If[min ===-1,
		cumSpinCount[[;; First@ FirstPosition[cumSpinCount, -1] -1]]--;
	]; 
	max= Max@ cumSpinCount;
		
	(*If a closed spinor line appear it is separated out*)
	{l, r}= First@ SequencePosition[cumSpinCount, {max..}, Overlaps-> False]+ {0, 1};
	If[r <= Length@ fline,
		Return[fline[[l;;r]] CanonizeSpinorLines[fline[[;; l-1]]\[CenterDot] fline[[r+ 1;;]] ] ];
	];

	fline
];


CanonizeSpinorLines@ expr_:= expr//. x_NCM:> CanonizeSpinorLines@ x;
