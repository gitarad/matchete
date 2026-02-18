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
(*Effective coupling definitions*)


DefineGaugeGroup[SU2,SU@2,gL,W,FundAlphabet->{"i","j","k"},AdjAlphabet->{"I","J","K"}]
DefineField[\[Phi],Scalar,Indices->SU2[fund]]


VerificationTest[
	Module[{L, \[Alpha], \[Beta], \[Mu], \[Nu], J},
		L= IntroduceEffectiveCouplings@PlusHc[I gL[]^2 Bar@\[Phi][\[Alpha]]CD[\[Mu],\[Phi][\[Beta]]]CD[\[Nu],FS[W,\[Mu],\[Nu],J]]CG[gen[SU2[fund]],{J,\[Alpha],\[Beta]}]];
		L-Bar@L//GreensSimplify
	]
,
	0
, TestID-> "Antihermitian couplings"]


ResetAll[]


(* ::Section:: *)
(*Cleanup*)


ResetAll[]
