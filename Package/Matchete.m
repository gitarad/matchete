(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`*)


(* ::Subtitle:: *)
(*Paclet for routines options and utility functions*)


(* ::Chapter:: *)
(*Public:*)


(* ::Section:: *)
(*Scoping*)


PackageImport["GroupMagic`"]


(* ::Subsection:: *)
(*Exported*)


PackageExport["$MatchetePath"]
PackageExport["CheckForUpdate"]


(* ::Subsection:: *)
(*Internal*)


PackageScope["PrintMessages"]


PackageScope["OptionsCheck"]
PackageScope["OptionTest"]
PackageScope["OptionMessage"]


PackageScope["SubscriptStyle"]


PackageScope["Defined"]
PackageScope["OptionalMonitor"]


PackageScope["PseudoTimes"]
PackageScope["ReleasePseudoTimes"]


PackageScope["ReplaceListSubExprs"]
PackageScope["ReplaceFirst"]


PackageScope["SelectAndDelteCases"]


PackageScope["TermsToList"]


PackageScope["IntegerSets"]


PackageScope["BetterExpand"]
PackageScope["EvenBetterExpand"]


PackageScope["MyPrint"]


PackageScope["$PrintMessages"]


(* ::Section::Closed:: *)
(*Usage messages*)


(* ::Subsection:: *)
(*Exported*)


$MatchetePath::usage  = "$MatchetePath is the path to the Matchete package."


CheckForUpdate::usage = "CheckForUpdate[] compares the local Matchete version to the one in the git repository."


PrintMessages::usage  = "PrintMessages[True/False] sets whether information messages are displayed by some of the routines."


(* ::Subsection:: *)
(*Internal*)


OptionsCheck::usage  = "OptionsCheck can be applied on any function with optional arguments and checks the validity of optional arguments.";
OptionTest::usage    = "OptionTest[opt,func,val] must be implemented such that it returns True if val is an allowed value for the option opt in the function func, and False otherwise. ";
MyPrint::usage       = "MyPrint[message,Verbose -> True/False] is a printing function that can be deactivated when Verbose is set to False. The Verbose option is set to the global flag $PrintMessages, which can be changed using the PrintMessages routine."


(* ::Chapter:: *)
(*Private:*)


$MatchetePath=DirectoryName[$InputFileName,2];


(* ::Section::Closed:: *)
(*Version*)


$MatcheteVersionURL = "https://gitlab.com/matchete/matchete/-/raw/master/version";


GetVersionString[]:=StringTrim[First@StringSplit[Import@FileNameJoin[{$MatchetePath,"version"}],"\n"]]


CheckForUpdate[]:=Module[{importString,nrOnly,yn},
	importString = Import[$MatcheteVersionURL];
	If[importString === $Failed || Head[importString]=!=String, Print["Could not fetch version number from repository."]; Return[]];
	nrOnly = First @ StringSplit[importString, "\n"];

	If[StringTrim[nrOnly] === GetVersionString[],
		MessageDialog["Matchete is up-to-date.\nYour version: "<>GetVersionString[]],
		yn = ChoiceDialog["A new Matchete version is available!\nYour version: "<> GetVersionString[]<>"\nNew version: "<>StringTrim@nrOnly<>" ("<>StringSplit[importString, "\n"][[2]]<>")\n\n"<>"Do you want to update?",{"Yes"->True,"No"->False}];
		If[yn,UpdateMatchete[]]
	];
]


UpdateMatchete[]:=Module[{},
	Import["https://gitlab.com/matchete/matchete/-/raw/master/install.m"]
]


(* ::Section::Closed:: *)
(*OptionsChecker*)


(* ::Text:: *)
(*General function for checking Options of functions*)


SetAttributes[OptionsCheck, HoldFirst];
OptionsCheck @ func_[___, opts : OptionsPattern[]] := And[
	And@@ (Message[General::invalidopt, #1, func] &)@@@ FilterRules[List@ opts, Except@ Options@ func],
	And@@ (OptionTest[func, #1][#2] || OptionMessage[#1, func, #2] &)@@@ FilterRules[List@ opts, Options@ func]
];


General::invalidopt = "Invalid option `1` given for function `2`.";
General::invalidarg = "Option `1` for function `2` received invalid value `3`.";
General::optexpectsval = "Option `1` for function `2` received invalid value `3`. A `4` is expected.";
OptionMessage[opt_, func_, val_] := Message[General::invalidarg, opt, func, val];


(* ::Text:: *)
(*Specific tests for options*)


(*KEEP alphabetical in option name please*)
OptionTest[_, AdjAlphabet]                   = #===None||(ListQ[#]&&And@@(Head[#1]===String&/@#))&;
OptionTest[_, CanonicallyNormalized]         = BooleanQ;
OptionTest[_, ChargeNeutral]                 = BooleanQ;
OptionTest[_, Charges]                       = ListQ;
OptionTest[_, Chiral]                        = MatchQ[False|LeftHanded|RightHanded];
OptionTest[_, ClosedSpinChains]              = BooleanQ;
OptionTest[_, ContractedIndices]             = BooleanQ;
OptionTest[_, DetailedOutput]                = BooleanQ;
OptionTest[DefineCoupling, DiagonalCoupling] = MatchQ[{_?BooleanQ..} | {}];
OptionTest[DefineCoupling, EFTOrder]         = MatchQ[_Integer? NonNegative];
OptionTest[_, EFTOrder]                      = MatchQ[{_Integer?Positive}| (_Integer?Positive)];
OptionTest[_, FundAlphabet]                  = #===None||(ListQ[#]&&And@@(Head[#1]===String&/@#))&;
OptionTest[_, FreeOfGaugeFields]             = BooleanQ;
OptionTest[_, GaugeAnomalies]                = BooleanQ;
OptionTest[_, HeavyMassBasis]                = BooleanQ;
OptionTest[_, Hermiticity]                   = BooleanQ;
OptionTest[LoadModel, IndexAlphabet]         = (ListQ[#] && And@@(Head[#1]===Rule &/@#) && And@@(And@@StringQ/@#1[[2]] &/@#)) &;
OptionTest[_, IndexAlphabet]                 = #===None||(ListQ[#]&&And@@(Head[#1]===String&/@#))&;
OptionTest[DefineField, Indices]             = (ListQ[#] && And@@(MemberQ[Keys@$FlavorIndices,#1]||MemberQ[Join[Keys@$GlobalGroups,Keys@$GaugeGroups],GroupFromRep@#1]&/@#) && Length[GroupFromRep/@#]===Length[DeleteDuplicates[GroupFromRep/@#,!MemberQ[Keys@$FlavorIndices,#]]])&;
OptionTest[DefineCoupling, Indices]          = (ListQ[#] && And@@(MemberQ[Keys@$FlavorIndices,#1]||MemberQ[Keys@$GlobalGroups,GroupFromRep@#1]&)/@#)&;
OptionTest[_, LoopOrder]                     = MatchQ[0| 1| {1}];
OptionTest[_, Mass]                          = MatchQ[Heavy|Light|0|{Light,0}|{Heavy|Light,_}|{Heavy|Light,_,_?((Length[#]==1&&AllTrue[#,MemberQ[Keys@GetFlavorIndices[],#1]&])&)}];
OptionTest[_, ModelParameters]               = (ListQ[#] && And@@(Head[#1]===Rule &/@#))&;
OptionTest[_, Rules]                         = BooleanQ;
OptionTest[_, SelfConjugate]                 = Or[BooleanQ[#],VectorQ[#,Positive]]&;
OptionTest[_, Simplifications]               = MatchQ[All| None];
OptionTest[DefineCoupling, Symmetries]       = (ListQ[#] && And@@((MatchQ[Head[#1],SymmetricIndices|AntisymmetricIndices|SymmetricPermutation|AntisymmetricPermutation] && VectorQ[List@@#1,Positive])&)/@#) || (MatchQ[#,_SymmetryOverride]) &;
OptionTest[_, Symmetries]                    = ListQ;
OptionTest[_, UndefinedObject]               = BooleanQ;
OptionTest[Match, Verbose]                   = MatchQ[Print|Monitor|None];
OptionTest[_, Verbose]                       = BooleanQ;


(* ::Text:: *)
(*Error messages for the options*)


OptionMessage[Indices, func:DefineField, val_]           := Message[General::optexpectsval, Indices, func, val, " list of already defined group representations (only one per group) and/or flavor indices"];
OptionMessage[Indices, func:DefineCoupling, val_]        := Message[General::optexpectsval, Indices, func, val, "list of already defined flavor or global indices"];
OptionMessage[Symmetries,func:DefineCoupling, val_]      := Message[General::optexpectsval, Symmetries, func, val, "a list of terms of the form SymmetricIndices[n1,n2,..], AntisymmetricIndices[n1,n2,..], SymmetricPermutation[n1,n2,..], or AntisymmetricPermutation[n1,n2,..], with n1,n2,... being positive integers indicating the index positions, or an empty list (in case of no symmetries)"];
OptionMessage[Charges, func_, val_]                      := Message[General::optexpectsval, Charges, func, val, "list of group charges"];
OptionMessage[SelfConjugate, func_, val_]                := Message[General::optexpectsval, SelfConjugate, func, val, "boolean (True or False) or a list of positive integers indicating the index positions"];
OptionMessage[Mass, func_, val_]                         := Message[General::optexpectsval, Mass, func, val, "value Heavy, Light, 0, {Light,0}, {Heavy,MassLabel}, {Light,MassLabel}, {Heavy,MassLabel,{FlavorIndex}} or {Light,MassLabel,{FlavorIndex}}, with FlavorIndex being one of the flavor indices of the field, "];
OptionMessage[Chiral, func_, val_]                       := Message[General::optexpectsval, Chiral, func, val, "value False, LeftHanded, or RightHanded"];
OptionMessage[EFTOrder, DefineCoupling, val_]            := Message[General::optexpectsval, EFTOrder, DefineCoupling, val, "positive integer or List with one positive integer"];
OptionMessage[EFTOrder, func_, val_]                     := Message[General::optexpectsval, EFTOrder, func, val, "positive integer or List with one positive integer"];
OptionMessage[LoopOrder, func_, val_]                    := Message[General::optexpectsval, LoopOrder, func, val, "value 0, 1 or {1}"];
OptionMessage[Simplifications, func_, val_]              := Message[General::optexpectsval, Simplifications, func, val, "value All or None"];
OptionMessage[Symmetries, func_, val_]                   := Message[General::optexpectsval, Symmetries, func, val, "a list of index symmetries"];
OptionMessage[IndexAlphabet, func_, val_]                := Message[General::optexpectsval, IndexAlphabet, func, val, "list of strings or None"];
OptionMessage[FundAlphabet, func_, val_]                 := Message[General::optexpectsval, FundAlphabet, func, val, "list of strings or None"];
OptionMessage[AdjAlphabet, func_, val_]                  := Message[General::optexpectsval, AdjAlphabet, func, val, "list of strings or None"];
OptionMessage[Verbose, Match, val_]                      := Message[General::optexpectsval, Verbose, Match, val, "Print, Monitor or None"];
OptionMessage[Verbose, func_, val_]                      := Message[General::optexpectsval, Verbose, func, val, "Boolean"];
OptionMessage[ModelParameters, func_, val_]              := Message[General::optexpectsval, ModelParameters, func, val, "list of replacement rules"];
OptionMessage[IndexAlphabet, LoadModel, val_]            := Message[General::optexpectsval, IndexAlphabet, LoadModel, val, "list of replacement rules with a list of strings as the target value"];
OptionMessage[DiagonalCoupling,func:DefineCoupling,val_] := Message[General::optexpectsval, DiagonalCoupling, func, val, "list of booleans or an empty list"];


(* ::Section:: *)
(*Utility functions*)


(* ::Subsection::Closed:: *)
(*Defined*)


(* An auxiliary function that determines if a variable has already been defined *)
Defined[label_] := ValueQ[label] ||
               Head@label =!= Symbol ||
               Attributes[label] =!= {} ||
               DownValues[label] =!= {} ||
               SubValues[label] =!= {} ||
               Head[label::usage]=!=MessageName


(* ::Subsection:: *)
(*Expansion*)


(* ::Text:: *)
(*Smarter versions of the Expand function, which can be incredibly slow at times *)


(* ::Subsubsection::Closed:: *)
(*BetterExpand*)


(* ::Text:: *)
(*BetterExpand distributes over Plus, for MUCH better performance on long expressions. Why is this  not default Mathematica behaviour?*)


BetterExpand@ expr_Plus:= Expand/@ expr;
BetterExpand@ expr_:= Expand@ expr;


(* ::Subsubsection::Closed:: *)
(*EvenBetterExpand*)


(* ::Text:: *)
(*An even better expansion function*)
(*-Needs work*)


EvenBetterExpand@ expr_Plus:= EvenBetterExpand/@ expr;
(*EvenBetterExpand@ Times[x_Plus, y__Plus, rest___]:=
	Expand[Distribute[Times[x, y]] Times@ rest];*)
(*EvenBetterExpand@ Times[x_Plus, rest:(Except[_Plus]..)]:=
	Expand[Times[rest] EvenBetterExpand/@ x];*)
(*EvenBetterExpand@ Times[x_Plus, y__Plus, rest___]:=
	Expand@ Times[(Times[rest] #)&/@ x, y]; *)
(*EvenBetterExpand@ Times[coef_? Distributable, sum_Plus, rest___]:=
	(coef* #&)/@ EvenBetterExpand@ Times[sum, rest];*)
EvenBetterExpand@ expr_:= Expand@ expr;
(*EvenBetterExpand@ expr_:= Expand[expr, _Field|_DiracProduct];*)


(* ::Text:: *)
(*Simple test if products can be directly distributed (might not capture every case, so further speedup might be achievable)  *)


Distributable@ Power[_, _?Negative]:= True;
Distributable@ expr_:= FreeQ[expr, Plus];


(* ::Subsection::Closed:: *)
(*OptionalMonitor*)


(* ::Text:: *)
(*A version of monitor that can be disabled (while still executing the code), controlled by the 3rd Boolean argument*)


SetAttributes[OptionalMonitor, HoldRest];
OptionalMonitor[True, expr_, mon_]:= Monitor[expr, mon];
OptionalMonitor[False, expr_, mon_]:= expr;


(* ::Subsection::Closed:: *)
(*PseudoTimes*)


(* ::Text:: *)
(*A Times-like head to expand out powers *)


SetAttributes[PseudoTimes, {Orderless}];
PseudoTimes@ expr_Plus:= PseudoTimes/@ expr;
PseudoTimes@ expr_Times:= PseudoTimes@@ expr;
PseudoTimes[a___, PseudoTimes@ b___]:= PseudoTimes[a, b]
PseudoTimes[a___, n_Integer]:= n PseudoTimes@ a;
PseudoTimes[a___, b_Plus]:= PseudoTimes[a, #]&/@ b;
PseudoTimes[a___, Power[b_, n_Integer/; n > 1]]:= PseudoTimes[a, Sequence@@ ConstantArray[b, n]];


ReleasePseudoTimes@ expr_:= expr/. PseudoTimes-> Times;


(* ::Subsection::Closed:: *)
(*Replacement functions*)


(* ::Text:: *)
(*Function mimicking ReplaceList but on all subexpressions*)


(*This implementation does not apply the rules in all posible ways at each subexpression*)
(*ReplaceListSubExprs[expr_, rule_Rule|rule_RuleDelayed]:=
	MapAt[Function[{x}, x/. rule], expr, #]&/@ Position[expr, First@ rule, Infinity];*)


ReplaceListSubExprs[expr_, rule_Rule|rule_RuleDelayed]:= Module[{op, pos, rep},
	Flatten[Table[
			op= expr;
			op[[Sequence@@ pos]]= rep;
			op
		, {pos, Position[expr, First@ rule, Infinity]}
		, {rep, ReplaceList[expr[[Sequence@@ pos]], rule]}]
	, 1]
]


(* ::Text:: *)
(*Function applying a replacement rule once on the first match to the rule*)


ReplaceFirst[expr_, rule_Rule|rule_RuleDelayed]:=
	MapAt[Function[{x}, x/. rule], expr, FirstPosition[expr, First@ rule, {}] ];


(* ::Subsection::Closed:: *)
(*Select and delete cases in an expression *)


SelectAndDelteCases[expr_, rule:(Rule|RuleDelayed)[lhs_, _], args___]:=
	{Cases[expr, rule, args], DeleteCases[expr, lhs, args]};
SelectAndDelteCases[expr_, args__]:= {Cases[expr, args], DeleteCases[expr, args]};


(* ::Subsection::Closed:: *)
(*Combinatorics function for expansions*)


(* ::Text:: *)
(*IntegerSet[s,n] returns all ordered sets of n integers {Subscript[\[Mu], 1],...,Subscript[\[Mu], n]}, such that Subscript[\[CapitalSigma], k] Subscript[\[Mu], k]=s and Subscript[\[Mu], k]>=0.*)


IntegerSets[sum_, ints_]:= Flatten[Permutations@ PadRight[#, ints]&/@
	DeleteCases[IntegerPartitions@ sum, _?(Length@ # > ints &)], 1];


(* ::Subsection::Closed:: *)
(*Print function that can be globally deactivated*)


(* ::Subsubsection::Closed:: *)
(*Setter function for the printing flag*)


PrintMessages::flag="The flag '`1`' is not a boolean. Please use either True or False."


$PrintMessages=False;
PrintMessages[flag_]:=Module[{},
	If[!BooleanQ[flag],
		Message[PrintMessages::flag,flag];
		Abort[]
	];

	$PrintMessages=flag;
]


(* ::Subsubsection::Closed:: *)
(*Options*)


Options[MyPrint]={Verbose :> $PrintMessages}


(* ::Subsubsection::Closed:: *)
(*MyPrint*)


MyPrint[string__,OptionsPattern[]]? OptionsCheck:=Module[{},
	If[OptionValue@Verbose,Print[string]];
];


(* ::Subsection::Closed:: *)
(*TermsToList*)


(* ::Text:: *)
(*Transform a sum of terms into a list, or convert a single term into a list*)


TermsToList@ expr_:= Module[{temp= BetterExpand@ expr},
	If[Head@ temp === Plus, List@@ temp, List@ temp]
];


(* ::Section:: *)
(*DumpSave*)


(* ::Text:: *)
(*W.I.P.*)


(*SetAttributes[SaveMatcheteSession, HoldRest]*)


(*SaveMatcheteSession[fileName_String, symbols_List:{}]:=Module[
	{
		(* For some reason averything crashes when you DumpSave GroupMagic`... *)
		builtInDefs={"Matchete`", (*"GroupMagic`",*) Hold[Global`$MatcheteVersion], NonCommutativeMultiply, Format, NiceForm},
		file,
		mySymbols,
		$DumpSave,
		tmp
	}
,
	(* determine file for saving *)
	Switch[FileExtension[fileName],
		"",   file=fileName<>".mx",
		"mx", file=fileName,
		_,    (Print["Changing file extension from \"",FileExtension[fileName],"\" to \"mx\"."];file=DirectoryName[fileName]<>FileBaseName[fileName]<>".mx")
	];

	(* keep symbols unevaluated *)
	mySymbols= Map[Hold, Hold@symbols, {2}][[1]];

	(* list of everything that must be saved *)
	mySymbols= Echo@Join[builtInDefs, mySymbols];

	(* dummy function that does not evaluate and keeps its arguments unevaluated *)
	SetAttributes[$DumpSave, HoldRest];

	(* save Matchete session *)
	With[{symb= mySymbols}, (* needds a dummy function to remove Hold *)
		tmp= $DumpSave[file,symb]/.Hold[arg_]:>arg;
	];
	Echo[tmp];
	tmp/.$DumpSave->DumpSave;

	Print["Saved the current Matchete session to the file: ", Style[file,"Code"],". \[Rule] Symbols included: ",HoldForm[symbols],"."
	];
	Print["It can be loaded again at a later point using: ",Style["Get["<>file<>"];","Code"],". This overrides the definitions of any Matchete session that might be active at this later point."];
]*)
