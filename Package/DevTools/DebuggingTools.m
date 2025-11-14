(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`DebuggingTools`*)


(* ::Text:: *)
(*Contains the functions needed for debugging purposes*)


(* ::Section:: *)
(*Scoping*)


(* ::Subsubsection::Closed:: *)
(*Internal*)


PackageScope["CurrentMemoryUsage"]


PackageScope["$tally"]
PackageScope["IncreaseTally"]
PackageScope["AppendTally"]


(* ::Section:: *)
(*Usage messages*)


(* ::Subsubsection::Closed:: *)
(*Internal*)


CurrentMemoryUsage::usage= "CurrentMemoryUsage[] or CurrentMemoryUsage[n] gives the gives a list of (n/50) Matchete` symbols with the most memory usage.
	CurrentMemoryUsage[symbol] gives the memory use (kB) of a single symbol";


(* ::Chapter:: *)
(*Private:*)


(* ::Subsubsection::Closed:: *)
(*Memory use*)


SymbolByteCount[symbolName_String]:= Block[{bytes, expr},
	expr= ToExpression[symbolName, InputForm, Hold];
	If[MatchQ[expr, Hold@ x_/; MemberQ[Attributes[x], ReadProtected]], 
		Return[Nothing];
	];
	
	bytes= Replace[expr, Hold[x_]:> 
		ByteCount@ Through[{OwnValues, DownValues, UpValues, SubValues, DefaultValues, FormatValues, NValues}[Unevaluated@ x, Sort-> False]] ] ;
	bytes= Round[bytes/ 1000., .1];
	{bytes, symbolName}
];


SetAttributes[CurrentMemoryUsage, HoldAll]; 


CurrentMemoryUsage@ s_Symbol:= CurrentMemoryUsage@ Evaluate[Context@ s <> SymbolName@ s];
CurrentMemoryUsage@ s_String:= SymbolByteCount@ s;


CurrentMemoryUsage[]:= CurrentMemoryUsage@ 50;
CurrentMemoryUsage[n_Integer? Positive]:= Block[{listing= SymbolByteCount/@ Names[{RegularExpression["Matchete`.*"]}]},
	Labeled[Grid[Reverse@ Take[Sort@ listing, -n], 
		Frame-> True, Alignment-> Left],
		Column[{Style["ByteCount (kB) for symbols without attribute ReadProtected in Matchete context", 12], 
			Style[Row@{"Total: ", Total@ listing[[;;, 1]], " kB for ", Length@ listing," symbols"}, Bold]}, Center, 1.5], Top]
];


(* ::Subsubsection::Closed:: *)
(*Tally function*)


(* ::Text:: *)
(*Function to keep a running tally, e.g., to keep track of number of function calls.*)


$tally= <||>;
IncreaseTally[h_, n_:1]:= If[KeyExistsQ[$tally, h], $tally[h]+= n, $tally[h]= n];
AppendTally[h_, elem_]:= If[KeyExistsQ[$tally, h], AppendTo[$tally[h], elem], $tally[h]= {elem}];
