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
(*Transposed fermions *)


LoadModel@ "SM";
DefineField[\[CapitalSigma], Fermion, Indices-> SU2L[fund], Charges-> U1Y[1/2], Mass-> {Light, m\[CapitalSigma]}];
DefineCoupling[{c1, c2}, SelfConjugate-> True]


VerificationTest[Module[{L, \[Mu], i, j},
		L= FreeLag[H, \[CapitalSigma]]+ PlusHc[I c1[]H[i]H[j]Bar@ \[CapitalSigma][i]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] PL\[CenterDot] CD[\[Mu], CConj@ \[CapitalSigma][j] ]+
			I c2[]H[i]H[j]Bar@ \[CapitalSigma][i]\[CenterDot] \[Gamma][\[Mu]]\[CenterDot] PR\[CenterDot] CD[\[Mu], CConj@ \[CapitalSigma][j]] ];
		EOMSimplify@ L - (FreeLag[H, \[CapitalSigma]] + PlusHc[m\[CapitalSigma][] c1[]H[i]H[j]Bar@ \[CapitalSigma][i]\[CenterDot] PR\[CenterDot] CConj@ \[CapitalSigma][j]+
			m\[CapitalSigma][] c2[]H[i]H[j]Bar@ \[CapitalSigma][i]\[CenterDot] PL\[CenterDot] CConj@ \[CapitalSigma][j] ]) //GreensSimplify
	]
,
	0
, TestID-> "Field redefinitions with transposed fermions."]


ResetAll[]


(* ::Subsubsection::Closed:: *)
(*Kinetic mixing*)


DefineGaugeGroup[U1e, U1, e, A];
DefineGaugeGroup[U1X, U1, gX, X];
DefineField[\[Psi], Fermion, Mass-> 0, Charges-> U1e@ 1];
DefineField[\[CapitalPsi], Fermion, Mass-> 0, Charges-> U1X@ 1];
DefineCoupling[{k1, k2, k12, D1, D2}, SelfConjugate-> True];


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


(* ::Subsubsection::Closed:: *)
(*Anomalous shifts*)


DefineGaugeGroup[qed, U1, e, A]
DefineGaugeGroup[qcd, SU@3, g, G];
DefineFlavorIndex[Flavor, 3]

DefineField[\[Psi], Fermion, Charges->{qed[Q\[Psi]]},Mass->0]
DefineField[\[CapitalPsi], Fermion, Indices->{qcd[fund]},Mass->0]
DefineField[\[Psi]L, Fermion, Charges->{qed[Q\[Psi]]},Mass->0,Chiral->LeftHanded,Indices->Flavor]
DefineField[\[Psi]R, Fermion, Charges->{qed[Q\[Psi]]},Mass->0,Chiral->RightHanded,Indices->Flavor]
DefineField[a, Scalar, SelfConjugate->True,Mass->Light]

DefineCoupling[#,SelfConjugate->True]&/@{ca,fa};
DefineCoupling[cL,SelfConjugate->{2,1},Indices->{Flavor,Flavor}]


VerificationTest[
	Module[{Lbefore, Lafter, \[Mu], \[Nu], \[Rho]},
		Lbefore= FreeLag[\[Psi],a]+ca[]/fa[] CD[\[Mu],a[]]Bar@\[Psi][]\[CenterDot]\[Gamma][\[Mu]]\[CenterDot](PR-PL)\[CenterDot]\[Psi][]+a[]^7;
		Lafter= FreeLag[\[Psi],a]+hbar Q\[Psi]^2 ca[] a[]/fa[] FS[A,\[Mu],\[Nu]]FS[A,\[Rho],\[Sigma]] LCTensor[\[Mu],\[Nu],\[Rho],\[Sigma]]+a[]^7;
		EOMSimplify@Lbefore- Lafter// GreensSimplify
	]
,
	0
, TestID-> "Anomalous field redefinitions with projectors."]


VerificationTest[
	Module[{Lbefore, Lafter, \[Mu], \[Nu], \[Rho], \[Sigma]},
		Lbefore= FreeLag[\[Psi],a]+ca[]/fa[] CD[\[Mu],a[]]Bar@\[Psi][]\[CenterDot]\[Gamma][\[Mu]]\[CenterDot]\[Gamma]@5\[CenterDot]\[Psi][]+a[]^7;
		Lafter= FreeLag[\[Psi],a]+hbar Q\[Psi]^2 ca[] a[]/fa[] FS[A,\[Mu],\[Nu]]FS[A,\[Rho],\[Sigma]] LCTensor[\[Mu],\[Nu],\[Rho],\[Sigma]]+a[]^7;
		EOMSimplify@Lbefore- Lafter// GreensSimplify
	]
,
	0
, TestID-> "Anomalous field redefinitions with \[Gamma]5."]


VerificationTest[
	Module[{Lbefore, Lafter, \[Mu], \[Nu], \[Rho], \[Sigma], \[Alpha], c},
		Lbefore= FreeLag[\[CapitalPsi],a]+ca[]/fa[] CD[\[Mu],a[]]Bar@\[CapitalPsi][\[Alpha]]\[CenterDot]\[Gamma][\[Mu]]\[CenterDot]\[Gamma]@5\[CenterDot]\[CapitalPsi][\[Alpha]]+a[]^7;
		Lafter= FreeLag[\[CapitalPsi],a]+hbar 1/2 ca[] a[]/fa[] FS[G,\[Mu],\[Nu],c]FS[G,\[Rho],\[Sigma],c] LCTensor[\[Mu],\[Nu],\[Rho],\[Sigma]]+a[]^7;
		EOMSimplify@Lbefore- Lafter// GreensSimplify
	]
,
	0
, TestID-> "Anomalous field redefinitions with non-abelian gauge fields."]


VerificationTest[
	Module[{Lbefore, Lafter, \[Mu], \[Nu], \[Rho], \[Sigma], p, r},
		Lbefore= FreeLag[\[Psi]L,\[Psi]R,a]+cL[p,r]/fa[] CD[\[Mu],a[]]Bar@\[Psi]L[p]\[CenterDot]\[Gamma][\[Mu]]\[CenterDot]\[Psi]L[r]+ca[]/fa[] CD[\[Mu],a[]]Bar@\[Psi]R[p]\[CenterDot]\[Gamma][\[Mu]]\[CenterDot]\[Psi]R[p]+a[]^7;
		Lafter= FreeLag[\[Psi]L,\[Psi]R,a]+1/2hbar Q\[Psi]^2 (3ca[] -cL[p,p])a[]/fa[] FS[A,\[Mu],\[Nu]]FS[A,\[Rho],\[Sigma]] LCTensor[\[Mu],\[Nu],\[Rho],\[Sigma]]+a[]^7;
		EOMSimplify@Lbefore- Lafter// GreensSimplify
	]
,
	0
, TestID-> "Anomalous field redefinitions with flavor indices."]


ResetAll[]


(* ::Section:: *)
(*Cleanup*)


ResetAll[]
