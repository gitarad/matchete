(* ::Package:: *)

(* ::Chapter:: *)
(*FieldRedef tests*)


(* ::Section:: *)
(*Setup*)


(*If[!MemberQ[$ContextPath, "Matchete`PackageScope`"], PrependTo[$ContextPath,"Matchete`PackageScope`"];]*)


ResetAll[]


(* ::Section:: *)
(*Tests*)


(* ::Subsubsection::Closed:: *)
(*Field redefinitions with Field strength tensors*)


DefineGaugeGroup[U1e, U1, \[ScriptE], A]
DefineField[\[Phi], Scalar, SelfConjugate-> True, Mass-> 0]
DefineCoupling[c, SelfConjugate-> True]


VerificationTest[
	Module[{L, \[Mu], \[Nu]},
		L= FreeLag[]+ c[]CD[{\[Mu], \[Mu]}, \[Phi][]] FS[A, \[Mu], \[Nu]]^2;
		EOMSimplify@ L
	]
,
	FreeLag[]
, TestID-> "Field redefinitions with \[Square]\[Phi]*\!\(\*SuperscriptBox[\(F\), \(2\)]\)"]


ResetAll[]


(* ::Subsubsection::Closed:: *)
(*Kinetic mixing*)


DefineGaugeGroup[U1e, U1, e, A];
DefineGaugeGroup[U1X, U1, gX, X];
DefineField[\[Psi], Fermion, Mass-> 0, Charges-> U1e@ 1];
DefineField[\[CapitalPsi], Fermion, Mass-> 0, Charges-> U1X@ 1];
DefineCoupling[#, SelfConjugate-> True]&/@ {k1, k2, k12, D1, D2};


(* ::Text:: *)
(*Result verified by hand (AET)*)


VerificationTest[
	Module[{Lbefore, Lafter, \[Mu], \[Nu], \[Rho]},
		Lbefore= (1+ hbar k1[]e[]^2)FreeLag[A]+(1+ hbar k2[]gX[]^2)FreeLag[X]+ FreeLag[\[Psi], \[CapitalPsi]] -
			hbar k12[]/2FS[A, \[Mu], \[Nu]]FS[X, \[Mu], \[Nu]] -D1[] CD[\[Mu], FS[A, \[Mu], \[Nu]]] Bar@ \[Psi][]\[CenterDot] \[Gamma]@ \[Nu]\[CenterDot] \[Psi][] +
			D2[] CD[\[Mu], FS[X, \[Mu], \[Nu]]]CD[\[Rho], FS[X, \[Rho], \[Nu]]];
		Lafter= (1+ hbar k1[]e[]^2)FreeLag[A]+(1+ hbar k2[]gX[]^2)FreeLag[X]+ FreeLag[\[Psi], \[CapitalPsi]]-
			hbar k12[]/2FS[A, \[Mu], \[Nu]]FS[X, \[Mu], \[Nu]] +
			(e[]^2 - hbar e[]^4 k1[]) D1[] (Bar@ \[Psi][]\[CenterDot] \[Gamma]@ \[Mu]\[CenterDot] \[Psi][])^2 -
			hbar k12[]e[]^2 gX[]^2 (D1[] + 2 D2[] gX[]^2) (Bar@ \[Psi][]\[CenterDot] \[Gamma]@ \[Mu]\[CenterDot] \[Psi][])(Bar@ \[CapitalPsi][]\[CenterDot] \[Gamma]@ \[Mu]\[CenterDot] \[CapitalPsi][]) +
			(gX[]^4 -2 hbar gX[]^6 k2[]) D2[] (Bar@ \[CapitalPsi][]\[CenterDot] \[Gamma]@ \[Mu]\[CenterDot] \[CapitalPsi][])^2;
		EOMSimplify[Lbefore, ReductionIdentities-> dDimensional]- Lafter// GreensSimplify
	]
,
	0
, TestID-> "Field redefinitions w/ gauge kinetic mixing."]


ResetAll[]


(* ::Section:: *)
(*Cleanup*)


ResetAll[]
