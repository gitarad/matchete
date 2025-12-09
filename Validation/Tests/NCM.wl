(* ::Package:: *)

(* ::Title:: *)
(*NCM test unit*)


(* ::Section:: *)
(*Tests*)


If[!MemberQ[$ContextPath, "Matchete`PackageScope`"], PrependTo[$ContextPath,"Matchete`PackageScope`"];]


ResetAll[];
DefineField[\[Psi]M,Fermion,SelfConjugate->True];
DefineField[\[Psi]M2,Fermion,SelfConjugate->True];
DefineField[\[Psi]D,Fermion,SelfConjugate->False];
DefineField[\[Psi]L,Fermion,  Chiral->LeftHanded];
DefineField[\[Psi]R,Fermion,  Chiral->RightHanded];
DefineField[\[Phi],Scalar];


(* ::Subsection:: *)
(*Contractions*)


VerificationTest[
	Bar@\[Psi]L[]\[CenterDot] \[Phi][]\[CenterDot] \[Psi]R[],
	\[Phi][]Bar@\[Psi]L[]\[CenterDot] \[Psi]R[],
	TestID->"Extract scalar from spin chain"
]


VerificationTest[
	Bar@\[Psi]L[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] (I CD[\[Mu],\[Phi][]])\[CenterDot] \[Psi]L[],
	I CD[\[Mu],\[Phi][]]Bar@\[Psi]L[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]L[],
	TestID->"Extract derivative scalar from spin chain"
]


VerificationTest[
	Bar@\[Psi]D[]\[CenterDot] (\[Gamma][\[Mu]] Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]M[])\[CenterDot] \[Psi]D[],
	Bar@\[Psi]D[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]D[] Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]M[],
	TestID->"Contraction of spinors 1"
]


VerificationTest[
	Bar@\[Psi]D[]\[CenterDot] (\[Gamma][\[Mu]]\[CenterDot] \[Gamma][5] Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]M[])\[CenterDot] \[Psi]D[],
	Bar@\[Psi]D[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Gamma][5]\[CenterDot] \[Psi]D[] Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]M[],
	TestID->"Contraction of spinors 2"
]


VerificationTest[
	Bar@\[Psi]L[]\[CenterDot] (Coupling[m,0]Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]M[])\[CenterDot] \[Psi]R[],
	Coupling[m,0]Bar@\[Psi]L[]\[CenterDot] \[Psi]R[] Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]M[],
	TestID->"Contraction of spinors 3"
]


(*VerificationTest[
	\[Psi]R[]\[CenterDot] (Bar@\[Psi]M[]\[CenterDot] \[Gamma][5])\[CenterDot] (Bar@\[Psi]D[]\[CenterDot] \[Gamma][\[Mu]]) \[CenterDot] \[Psi]D[]\[CenterDot] \[Psi]M[]\[CenterDot] Bar@\[Psi]L[],
	-Bar@\[Psi]L[]\[CenterDot] \[Psi]R[]Bar@\[Psi]M[]\[CenterDot] \[Gamma][5]\[CenterDot] \[Psi]M[] Bar@\[Psi]D[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]D[],
	TestID->"Contraction of spinors 4"
]*)
(*AET: I do not think this is the behavior we want*)


(*VerificationTest[
	(\[Gamma][\[Mu]]\[CenterDot] \[Psi]D[]) \[CenterDot] NCM@Bar@\[Psi]D[] //Simplify,
	-Bar@\[Psi]D[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]D[] //Simplify,
	TestID->"Trace of spin chain"
]*)
(*I have no idea why this test does not want to run in the script but works here...*)


(*Bar@\[Psi]L[]\[CenterDot] Bar@\[Psi]D[] \[CenterDot] \[Psi]D[]\[CenterDot] \[Psi]R[]  //TraditionalForm*) (*Even single fields need NCM warpping*)


(* ::Subsection:: *)
(*Bar & Transpose*)


VerificationTest[
	Bar@ (Bar@CConj@\[Psi]M[]\[CenterDot] \[Psi]D[]),
	Bar@\[Psi]D[]\[CenterDot] \[Psi]M[],
	TestID->"Bar of Majorana with Dirac fermions 1"
]


VerificationTest[
	Bar@ (Bar@\[Psi]D[]\[CenterDot] \[Psi]M[]),
	Bar@CConj@\[Psi]M[]\[CenterDot] \[Psi]D[],
	TestID->"Bar of Majorana with Dirac fermions 2"
]


VerificationTest[
	Bar@ (Bar@\[Psi]M[]\[CenterDot] \[Psi]M[]),
	Bar@\[Psi]M[]\[CenterDot] \[Psi]M[] ,
	TestID->"Bar of Majorana mass"
]


(* ::Subsection:: *)
(*Spin Chain*)


(* ::Subsubsection::Closed:: *)
(*LOpen*)


VerificationTest[
	LOpenSpinChainQ[Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]M[]],
	False ,
	TestID->"LOpenSpinChainQ 1"
]


VerificationTest[
	LOpenSpinChainQ[\[Gamma][\[Mu]]\[CenterDot] \[Psi]M[]],
	True ,
	TestID->"LOpenSpinChainQ 2"
]


VerificationTest[
	LOpenSpinChainQ[Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]],
	False ,
	TestID->"LOpenSpinChainQ 3"
]


VerificationTest[
	LOpenSpinChainQ[\[Gamma][\[Mu]]],
	True ,
	TestID->"LOpenSpinChainQ 4"
]


VerificationTest[
	LOpenSpinChainQ[\[Psi]M[]],
	True ,
	TestID->"LOpenSpinChainQ 5"
]


VerificationTest[
	LOpenSpinChainQ[Transp@\[Psi]M[]],
	False ,
	TestID->"LOpenSpinChainQ 6"
]


VerificationTest[
	LOpenSpinChainQ[Bar@\[Psi]M[]],
	False ,
	TestID->"LOpenSpinChainQ 7"
]


VerificationTest[
	LOpenSpinChainQ[Transp@Bar@\[Psi]M[]],
	True ,
	TestID->"LOpenSpinChainQ 8"
]


VerificationTest[
	LOpenSpinChainQ[Bar@CD[\[Mu],\[Psi]M[]]],
	False ,
	TestID->"LOpenSpinChainQ 9"
]


(* ::Subsubsection::Closed:: *)
(*ROpen*)


VerificationTest[
	ROpenSpinChainQ[Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]M[]],
	False ,
	TestID->"ROpenSpinChainQ 1"
]


VerificationTest[
	ROpenSpinChainQ[\[Gamma][\[Mu]]\[CenterDot] \[Psi]M[]],
	False ,
	TestID->"ROpenSpinChainQ 2"
]


VerificationTest[
	ROpenSpinChainQ[Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]],
	True ,
	TestID->"ROpenSpinChainQ 3"
]


VerificationTest[
	ROpenSpinChainQ[\[Gamma][\[Mu]]\[CenterDot] \[Gamma][5]],
	True ,
	TestID->"ROpenSpinChainQ 4"
]


VerificationTest[
	ROpenSpinChainQ[\[Psi]M[]],
	False ,
	TestID->"ROpenSpinChainQ 5"
]


VerificationTest[
	ROpenSpinChainQ[Transp@\[Psi]M[]],
	True ,
	TestID->"ROpenSpinChainQ 6"
]


VerificationTest[
	ROpenSpinChainQ[Bar@\[Psi]M[]],
	True ,
	TestID->"ROpenSpinChainQ 7"
]


VerificationTest[
	ROpenSpinChainQ[-Transp@Bar@\[Psi]M[]],
	False ,
	TestID->"ROpenSpinChainQ 8"
]


VerificationTest[
	ROpenSpinChainQ[Bar@CD[\[Mu],\[Psi]M[]]],
	True ,
	TestID->"ROpenSpinChainQ 9"
]


(* ::Subsubsection::Closed:: *)
(*Closed*)


VerificationTest[
	Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] \[Psi]M[]// ClosedSpinChainQ,
	True, 
	TestID->"ClosedSpinChainQ 1"
]


VerificationTest[
	Bar@\[Psi]M[]\[CenterDot] \[Gamma][\[Mu]]// ClosedSpinChainQ,
	False, 
	TestID->"ClosedSpinChainQ 2"
]


VerificationTest[
	\[Psi]D[]// ClosedSpinChainQ,
	False, 
	TestID->"ClosedSpinChainQ 3"
]


VerificationTest[
	\[Phi][]// ClosedSpinChainQ,
	False, 
	TestID->"ClosedSpinChainQ 4"
]


(* ::Subsection:: *)
(*Transpose canonical ordering*)


VerificationTest[
	Bar@\[Psi]L[]\[CenterDot] \[Psi]R[],
	Transp[Bar@\[Psi]L[]\[CenterDot] \[Psi]R[]],
	TestID->"Canonical ordering 1"
]


VerificationTest[
	Bar@CConj@\[Psi]M[]\[CenterDot] \[Psi]D[],
	Transp[Bar@CConj@\[Psi]M[]\[CenterDot] \[Psi]D[]],
	TestID->"Canonical ordering 2"
]


VerificationTest[
	Bar@CConj@\[Psi]M[]\[CenterDot] \[Psi]M2[],
	Transp[Bar@CConj@\[Psi]M[]\[CenterDot] \[Psi]M2[]],
	TestID->"Canonical ordering 3"
]


VerificationTest[
	Bar@CConj@\[Psi]D[]\[CenterDot] \[Psi]R[],
	Transp[Bar@CConj@\[Psi]D[]\[CenterDot] \[Psi]R[]],
	TestID->"Canonical ordering 4"
]


VerificationTest[
	Bar@\[Psi]D[]\[CenterDot] Transp@Bar@\[Psi]R[],
	Transp[Bar@\[Psi]D[]\[CenterDot] Transp@Bar@\[Psi]R[]],
	TestID->"Canonical ordering 5"
]


(* ::Subsection:: *)
(*Actively acting on spin chains*)


(* ::Subsubsection::Closed:: *)
(*CanonizeSpinorLines*)


VerificationTest[
	Bar@\[Psi]L[]\[CenterDot] \[Gamma][\[Mu],\[Nu]]\[CenterDot] \[Psi]R[]// CanonizeSpinorLines,
	Bar@\[Psi]L[]\[CenterDot] \[Gamma][\[Mu],\[Nu]]\[CenterDot] \[Psi]R[],
	TestID->"CanonizeSpinorLines: nothing 1"
]


VerificationTest[
	\[Psi]M[]\[CenterDot] Bar@\[Psi]R[]// CanonizeSpinorLines,
	\[Psi]M[]\[CenterDot] Bar@\[Psi]R[],
	TestID->"CanonizeSpinorLines: nothing 2"
]


VerificationTest[
	CConj@\[Psi]D[]\[CenterDot] Bar@CConj@ \[Psi]R[]// CanonizeSpinorLines,
	CConj@\[Psi]D[]\[CenterDot] Bar@CConj@ \[Psi]R[],
	TestID->"CanonizeSpinorLines: nothing 3"
]


VerificationTest[
	\[Gamma][\[Mu], \[Nu]]\[CenterDot] PL\[CenterDot] \[Psi]M[]// CanonizeSpinorLines,
	\[Gamma][\[Mu], \[Nu]]\[CenterDot] PL\[CenterDot] \[Psi]M[],
	TestID->"CanonizeSpinorLines: nothing 4"
]


VerificationTest[
	CheckAbort[\[Psi]L[]\[CenterDot] \[Gamma][\[Mu],\[Nu]]\[CenterDot] \[Psi]R[]// CanonizeSpinorLines,True],
	True,
	Matchete`PackageScope`CanonizeSpinorLines::lopens,
	TestID->"CanonizeSpinorLines: abort 1"
]


VerificationTest[
	CheckAbort[Bar@\[Psi]L[]\[CenterDot] \[Gamma][\[Mu],\[Nu]]\[CenterDot] Bar@\[Psi]R[]// CanonizeSpinorLines, True],
	True,
	Matchete`PackageScope`CanonizeSpinorLines::ropens,
	TestID->"CanonizeSpinorLines: abort 2"
]


VerificationTest[
	Bar@ CConj@\[Psi]M[] \[CenterDot] Bar@\[Psi]L[]\[CenterDot] \[Gamma][\[Mu],\[Nu]]\[CenterDot] \[Psi]R[]// CanonizeSpinorLines,
	Bar@\[Psi]L[]\[CenterDot] \[Gamma][\[Mu],\[Nu]]\[CenterDot] \[Psi]R[] Bar@ CConj@\[Psi]M[],
	TestID->"CanonizeSpinorLines: split chain 1"
]


VerificationTest[
	Bar@CConj@\[Psi]L[] \[CenterDot] Bar@\[Psi]D[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] PL\[CenterDot] \[Psi]D[]\[CenterDot] \[Gamma]@\[Mu]\[CenterDot] CConj@\[Psi]L[]// CanonizeSpinorLines,
	-Bar@\[Psi]D[]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] PL\[CenterDot] \[Psi]D[] Bar@\[Psi]L[]\[CenterDot] \[Gamma]@\[Mu]\[CenterDot] \[Psi]L[],
	TestID->"CanonizeSpinorLines: split chain 2"
]


VerificationTest[
	Bar@CConj@\[Psi]L[] \[CenterDot] \[Gamma]@\[Mu]\[CenterDot] CConj@\[Psi]L[] \[CenterDot] Bar@\[Psi]D[] \[CenterDot] \[Psi]D[]// CanonizeSpinorLines,
	-Bar@\[Psi]D[] \[CenterDot] \[Psi]D[] Bar@\[Psi]L[]\[CenterDot] \[Gamma]@\[Mu]\[CenterDot] \[Psi]L[],
	TestID->"CanonizeSpinorLines: split chain 3"
]


(* ::Subsubsection::Closed:: *)
(*FermionTrace*)


(*VerificationTest[
	CheckAbort[\[Psi]D[]\[CenterDot] Bar@ \[Psi]D[] NCM@ \[Gamma]@\[Mu]// FermionTrace, True],
	True,
	Matchete`PackageScope`FermionTrace::multopens,
	TestID->"FermionTrace: abort 1"
]*)


(*VerificationTest[
	CheckAbort[\[Psi]D[]\[CenterDot] Bar@\[Psi]D[]\[CenterDot] \[Gamma]@\[Mu]\[CenterDot] \[Psi]L[]// FermionTrace, True],
	True,
	Matchete`PackageScope`FermionTrace::cantclose,
	TestID->"FermionTrace: abort 2"
]*)


(*VerificationTest[
	CConj@ \[Psi]D[]\[CenterDot] Bar@ CConj@ \[Psi]D[] \[CenterDot] PR// FermionTrace,
	-Bar@ \[Psi]D[]\[CenterDot] PR\[CenterDot] \[Psi]D[],
	TestID->"FermionTrace: single line 1"
]*)


(*VerificationTest[
	\[Gamma]@\[Mu]\[CenterDot] \[Gamma]@\[Nu]// FermionTrace,
	4 Metric[Index[\[Mu],Lorentz],Index[\[Nu],Lorentz]],
	TestID->"FermionTrace: single line 2"
]*)


(*VerificationTest[
	Bar@ CConj@ \[Psi]D[] \[CenterDot] PR\[CenterDot] CConj@ \[Psi]D[] \[Psi]M[]\[CenterDot] Bar@\[Psi]M[]// FermionTrace,
	-Bar@ \[Psi]D[]\[CenterDot] PR\[CenterDot] \[Psi]D[] Bar@ \[Psi]M[]\[CenterDot] \[Psi]M[],
	TestID->"FermionTrace: multiple lines 1"
]*)


(*VerificationTest[
	Bar@ \[Psi]D[] \[CenterDot] PR\[CenterDot] \[Psi]D[] + \[Psi]M[]\[CenterDot] Bar@\[Psi]M[]// FermionTrace,
	4 Bar@ \[Psi]D[]\[CenterDot] PR\[CenterDot] \[Psi]D[] - Bar@ \[Psi]M[]\[CenterDot] \[Psi]M[],
	TestID->"FermionTrace: multiple lines 2"
]*)


(* ::Subsection:: *)
(*Examples from the CDE*)


(*VerificationTest[
	Matchete`SuperTrace`PackagePrivate`GopFerm[f,{i,j},2]//RelabelIndices
	,
	1/2 I DiracProduct[GammaM[Index[d$$1,Lorentz]]]\[CenterDot] 
		Matchete`PackageScope`Gop[f,{i,j},{Index[d$$1,Lorentz],Index[d$$2,Lorentz]},{}]\[CenterDot] 
		Matchete`PackageScope`MomDev[Index[d$$2,Lorentz]]
	,
	TestID->"CDE_ferm_1"
]*)


(*VerificationTest[
	Matchete`SuperTrace`PackagePrivate`GopFerm[f,{i,j},3]//RelabelIndices
	,
	1/3 DiracProduct[GammaM[Index[d$$1,Lorentz]]]\[CenterDot] 
		Matchete`PackageScope`Gop[f,{i,j},{Index[d$$1,Lorentz],Index[d$$2,Lorentz]},{Index[d$$3,Lorentz]}]\[CenterDot] 
		Matchete`PackageScope`MomDev[Index[d$$3,Lorentz]]\[CenterDot] 
		Matchete`PackageScope`MomDev[Index[d$$2,Lorentz]]
	,
	TestID->"CDE_ferm_2"
]*)


(* ::Section:: *)
(*Cleanup after tests *)


ResetAll[]


(* ::Section:: *)
(*Loading the package*)


(* ::Text:: *)
(*Un-comment and run first to see the tests directly in this file. *)
(*Comment when finished and add file name to the list testfiles in  the script "RunTests.wls" .*)


(*	PrependTo[$Path, ParentDirectory[NotebookDirectory[]]];
	<< Matchete`*)
