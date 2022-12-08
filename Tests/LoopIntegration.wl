(* ::Package:: *)

(* ::Title:: *)
(*LoopIntegration test unit*)


(* ::Section:: *)
(*Tests*)


AppendTo[$ContextPath,"Matchete`PackageScope`"];


(*LoopIntegrate=Matchete`PackageScope`LoopIntegrate;
InvProp=Matchete`PackageScope`InvProp;*)


VerificationTest[
	LoopIntegrate[InvProp[m]^-2 InvProp[0]^-2],
	-(I/(m^4 \[Epsilon])) + I LF[{m},{2,2}],
	TestID->"Integration of \!\(\*FractionBox[\(1\), \(\*SuperscriptBox[\(p\), \(2\)] \*SuperscriptBox[\((\*SuperscriptBox[\(p\), \(2\)] - \*SuperscriptBox[\(m\), \(2\)])\), \(2\)]\)]\)"
]


VerificationTest[
	LoopIntegrate[InvProp[m]^-2 InvProp[0]^-2] //EvaluateLoopFunctions //Expand,
	-(I/m^4)(1/\[Epsilon]+Log[\[Mu]bar2/m^2]+2) //Expand,
	TestID->"Evaluation of loop function from \!\(\*FractionBox[\(1\), \(\*SuperscriptBox[\(p\), \(2\)] \*SuperscriptBox[\((\*SuperscriptBox[\(p\), \(2\)] - \*SuperscriptBox[\(m\), \(2\)])\), \(2\)]\)]\)"
]


VerificationTest[
	LoopIntegrate[InvProp[m]^-2 InvProp[0]^2] ,
	3m^4 I/\[Epsilon] + I LF[{m},{2,-2}],
	TestID->"Integration of \!\(\*FractionBox[SuperscriptBox[\(p\), \(2\)], SuperscriptBox[\((\*SuperscriptBox[\(p\), \(2\)] - \*SuperscriptBox[\(m\), \(2\)])\), \(2\)]]\)"
]


VerificationTest[
	LoopIntegrate[InvProp[m]^-2 InvProp[0]^2] //EvaluateLoopFunctions //Expand,
	 I m^4  (3/\[Epsilon] + 3 Log[\[Mu]bar2/m^2] + 2) //Expand,
	TestID->"Evaluation of loop function from \!\(\*FractionBox[SuperscriptBox[\(p\), \(2\)], SuperscriptBox[\((\*SuperscriptBox[\(p\), \(2\)] - \*SuperscriptBox[\(m\), \(2\)])\), \(2\)]]\)"
]


(* ::Section:: *)
(*Loading the package*)


(* ::Text:: *)
(*Un-comment and run first to see the tests directly in this file. *)
(*Comment when finished and add file name to the list testfiles in  the script "RunTests.wls" .*)


(*	PrependTo[$Path, ParentDirectory[NotebookDirectory[]]];
	<< Matchete`*)
