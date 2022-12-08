(* ::Package:: *)

(* ::Chapter:: *)
(*Initialization [GroupMagic`]*)


(* Restrict the runnable version number of Mathematica *)
If[!OrderedQ[{10.0, 0}, {$VersionNumber, $ReleaseNumber}], 
  Print["GroupMagic` requires Mathematica 10.0.0 or later."];
  Abort[]
]


(* Loading the package *)
If[MemberQ[$Packages, "GroupMagic`"],
	(* Avoid double loading the package *)
	Print@ Style["The package GroupMagic` is already loaded.", RGBColor[0.70,0.63,0.062]];
,
	(* Loading the file if its not already loaded*)
	$GrouperDirectory= DirectoryName[$InputFileName, 2];
	(* Loading *)
	(*Print["Loading GroupMagic`..."];*)
	(* Load, but abort if there is a message *)
	Check[
		Get@ FileNameJoin@ {$GrouperDirectory, "GroupMagic.m"},
		Print@Style["Loading failed!", RGBColor[.6, .0706, 0.1373]];
		Abort[];
	];
	(*Print@ Style["Loading successful.", RGBColor[0.3,0.55,0.2]];*)
];
