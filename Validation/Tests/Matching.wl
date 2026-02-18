(* ::Package:: *)

(* ::Title:: *)
(*Matching test unit*)


(* ::Section:: *)
(*Setup*)


If[!MemberQ[$ContextPath, "Matchete`PackageScope`"], PrependTo[$ContextPath,"Matchete`PackageScope`"];]


DefineGaugeGroup[su2,SU@2,g,A];


(* ::Section:: *)
(*Tests*)


(* ::Subsubsection::Closed:: *)
(*Gauge fixing*)


VerificationTest[
	SetCurrentLagrangian[FreeLag[A],1,6];
	Xterm[{A,A},{i,j},2,0,0]/.$Xsubs//RelabelIndices
	,
	2/g[]^2 fStruct[su2][d$$1,i,j] FuncNCM@FS[A,i,j,d$$1],
	TestID->"Triple gauge vertex"
]


(* ::Section:: *)
(*Cleanup*)


ResetAll[]
