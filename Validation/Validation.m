(* ::Package:: *)

Begin["BranchValidation`"]


(* ::Title:: *)
(*Validation of Results*)


(* ::Section:: *)
(*Matching results*)


(* ::Text:: *)
(*List of UV models for which a model file and a saved EFT Lagrangian result exist.*)


$validatedModels=0;


Do[
	(* reset the model *)
	ResetAll[];
	
	(* delete temporary files *)	
	DeleteFile/@FileNames[FileNameJoin@{$MatchetePath, "Validation", "MatchingResults", "current","*"}];
	
	Print["Validating model: \"", Style[model, Bold],"\""];
	
	(* turn on validation mode *)
	Matchete`PackageScope`ActivateValidationMode[model, False];
	
	LUV::usage="UV Lagrangian";
	(* define and run the model *)
	Begin["Global`"];
		LUV=LoadModel[model];
	End[];
	
	Match[LUV,EFTOrder->6,LoopOrder->1];
	
	(* load current result *)
	LEFT$now= Get@FileNameJoin[{$MatchetePath, "Validation", "MatchingResults", "current", model<>"-EFT.m"}];
	
	(* load previous result *)
	LEFT$previous= Get@FileNameJoin[{$MatchetePath, "Validation", "MatchingResults", "previous", model<>"-EFT.m"}];
	
	Print["\t- Previous results determined with version ", LEFT$previous["Version"], " on ", LEFT$previous["Date"], "."];
	
	(* check that the UV Lagrangian actually agree *)
	If[GreensSimplify[LEFT$now["UV Lagrangian"]-LEFT$previous["UV Lagrangian"]]=!=0,
		Print[Style["The UV Lagrangian do not agree!", Red, Bold]];
		Echo[LEFT$now["UV Lagrangian"], "UV Lagrangian NOW:", Format[#,NiceForm]&];
		Echo[LEFT$previous["UV Lagrangian"], "UV Lagrangian BEFORE:", Format[#,NiceForm]&];
	];
	
	(* compare computation time *)
	Print["\t- Computation time in sec."];
	Print["\t\t\[Rule] ", Style["Match","Code"], ": \t\t\t\t\t  ", LEFT$now["Time (Match)"], " (now) vs. ", LEFT$previous["Time (Match)"], " (before)"];
	Print["\t\t\[Rule] ", Style["GreensSimplify","Code"], ": \t\t\t ", LEFT$now["Time (GreensSimplify)"], " (now) vs. ", LEFT$previous["Time (GreensSimplify)"], " (before)"];
	Print["\t\t\[Rule] ", Style["EOMSimplify","Code"], ": \t\t\t\t", LEFT$now["Time (EOMSimplify)"], " (now) vs. ", LEFT$previous["Time (EOMSimplify)"], " (before)"];
	Print["\t\t\[Rule] ", Style["MapEffectiveCouplings","Code"], ": \t  ", LEFT$now["Time (MapEffectiveCouplings)"], " (now) vs. ", LEFT$previous["Time (MapEffectiveCouplings)"], " (before)"];
	
	(* compare off-shell Lagrangian *)
	diff$off= GreensSimplify@Contract@EvaluateLoopFunctions[LEFT$now["Off-shell EFT Lagrangian"]-LEFT$previous["Off-shell EFT Lagrangian"]];
	diff$off= If[Head[diff$off]===Plus,
		FullSimplify[#,And@@DeleteDuplicates@Cases[#,Log[arg_]:>(arg>0),All]]&/@diff$off,
		FullSimplify[diff$off,And@@DeleteDuplicates@Cases[diff$off,Log[arg_]:>(arg>0),All]]
	];
	If[diff$off===0,
		Print["\t- ", Style["\[CheckmarkedBox]", Darker@Green], " Off-shell EFT Lagrangian for the model agrees with the previous result."]
	,
		Print["\t- ", Style["\[WarningSign]", Red]," Off-shell EFT Lagrangian does not agrees with the previous result."];
		Echo[diff$off, "Difference off-shell EFT Lagrangian: ", Iconize[#,Format[#,NiceForm]]&];
	];
	
	(* check individual loops *)
	If[Sort@Keys@LEFT$now["SuperTraces"]=!=Sort@Keys@LEFT$previous["SuperTraces"],
		Print@Style["\t- The number of SuperTraces differs.", Red, Bold];
	,
		STrCounter=0;
		Do[
			\[CapitalDelta]STr=GreensSimplify@Contract@EvaluateLoopFunctions[LEFT$now["SuperTraces"][trace]-LEFT$previous["SuperTraces"][trace]];
			\[CapitalDelta]STr= If[Head[\[CapitalDelta]STr]===Plus,
				FullSimplify[#,And@@DeleteDuplicates@Cases[#,Log[arg_]:>(arg>0),All]]&/@\[CapitalDelta]STr,
				FullSimplify[\[CapitalDelta]STr,And@@DeleteDuplicates@Cases[\[CapitalDelta]STr,Log[arg_]:>(arg>0),All]]
			];
			If[\[CapitalDelta]STr=!=0,
				Print["\t- ", Style["\[WarningSign]", Red]," The SuperTrace ", trace, "does not agree with the previous result."];
				Echo[\[CapitalDelta]STr, "\[CapitalDelta]STr("<>trace<>"): ", Iconize[#,Format[#,NiceForm]]&];
				STrCounter++;
			]
		,
			{trace, Keys@LEFT$now["SuperTraces"]}
		];
		Print["\t- ", If[STrCounter==0,Style["\[CheckmarkedBox]", Darker@Green],Style["\[WarningSign]", Red]]," Agreement found for ", Length@Keys@LEFT$now["SuperTraces"]-STrCounter, "/", Length@Keys@LEFT$now["SuperTraces"], " SuperTraces."];
	];
	
	(* compare on-shell Lagrangian *)
	diff$on= GreensSimplify@Contract@EvaluateLoopFunctions[LEFT$now["On-shell EFT Lagrangian"]-LEFT$previous["On-shell EFT Lagrangian"]];
	diff$on= If[Head[diff$on]===Plus,
		FullSimplify[#,And@@DeleteDuplicates@Cases[#,Log[arg_]:>(arg>0),All]]&/@diff$on,
		FullSimplify[diff$on,And@@DeleteDuplicates@Cases[diff$on,Log[arg_]:>(arg>0),All]]
	];
	If[diff$on===0,
		Print["\t- ", Style["\[CheckmarkedBox]", Darker@Green], " On-shell EFT Lagrangian agrees with the previous result."];
		$validatedModels++;
	,
		Print["\t- ", Style["\[WarningSign]", Red]," On-shell EFT Lagrangian does not agrees with the previous result."];
		Echo[diff$on, "Difference on-shell EFT Lagrangian: ", Iconize[#,Format[#,NiceForm]]&];
	];
	
	diff$shift= GreensSimplify[ReplaceEffectiveCouplings@LEFT$now["Off-shell EFT Lagrangian"]-ReplaceEffectiveCouplings@ShiftRenCouplings@ReplaceEffectiveCouplings@LEFT$now["Off-shell EFT Lagrangian"], ReductionIdentities->dDimensional];
	If[0 === diff$shift, 
		Print["\t- ", Style["\[CheckmarkedBox]", Darker@Green], " ReplaceEffectiveCouplings@ShiftRenCouplings[\!\(\*SubscriptBox[\(\[ScriptCapitalL]\), \(off - shell\)]\)] \[Equal] \!\(\*SubscriptBox[\(\[ScriptCapitalL]\), \(off - shell\)]\)."];
		,
		Print["\t- ", Style["\[WarningSign]", Red]," ReplaceEffectiveCouplings@ShiftRenCouplings[\!\(\*SubscriptBox[\(\[ScriptCapitalL]\), \(off - shell\)]\)] \[NotEqual] \!\(\*SubscriptBox[\(\[ScriptCapitalL]\), \(off - shell\)]\)."];
		Echo[diff$shift, "\[ScriptCapitalL] - ReplaceEffectiveCouplings[ShiftRenCouplings[\[ScriptCapitalL]]]: ", Iconize[#,Format[#,NiceForm]]&];
	];
	
	(* check MapEffectiveCouplings *)
	If[!StringMatchQ[model,"VLF_toy_model"],
		\[ScriptCapitalL]SMEFT = LoadModel["SMEFT_Warsaw"];
		mc$diff = GreensSimplify[ReplaceInLagrangian[\[ScriptCapitalL]SMEFT, LEFT$now["Matching Conditions"]]-
			ReplaceInLagrangian[\[ScriptCapitalL]SMEFT, LEFT$previous["Matching Conditions"]], ReductionIdentities->dDimensional];
		If[mc$diff===0,
			Print["\t- ", Style["\[CheckmarkedBox]", Darker@Green], " Warsaw basis matching conditions agrees with the previous result."];
			(*$validatedModels++;*)
		,
			Print["\t- ", Style["\[WarningSign]", Red]," Warsaw basis matching conditions do not agrees with the previous result."];
			Echo[mc$diff, "Difference of Warsaw basis EFT Lagrangians: ", Iconize[#,Format[#,NiceForm]]&];
		];
	];
	
	Print["__________"];
,
	{model, $UVmodels}
]


Print["Validation of implemented models finished: ", $validatedModels, "/", Length@$UVmodels, " successfully verfied."];


(* ::Section:: *)
(*Export*)


(* ::Subsection:: *)
(*WCxf*)


If[TrueQ[$WCxfTests],
	ResetAll[];
	Print["__________"];
	Print["Validating ExportWCxf"];
	
	Module[
		{
			L, LSM, LNP, LEFT,
			json, pathWCxf,
			opt,
			new, old, newi, oldi,
			correct= True
		},
	(* model definitions *)
		LSM = LoadModel["SM"];
		DefineField[\[Chi], Fermion,
			SelfConjugate -> True,
			Indices -> {Flavor},
			Charges -> {},
			Mass -> {Heavy, m\[Chi], {Flavor}},
			NiceForm -> {"\[Chi]", "\!\(\*SubscriptBox[\(m\), \(\[Chi]\)]\)"}
		];
		DefineField[\[Phi], Scalar,
			SelfConjugate -> False,
			Indices -> {SU3c[fund]},
			Charges -> {U1Y[-1/3]},
			Mass -> {Heavy, m\[Phi]},
			NiceForm -> {"\[Phi]", "\!\(\*SubscriptBox[\(m\), \(\[Phi]\)]\)"}
		];
		DefineCoupling[\[Kappa],
			Indices -> {Flavor, Flavor},
			SelfConjugate -> False
		];
		
		LNP = FreeLag[\[Chi], \[Phi]] + PlusHc[\[Kappa][p, r](Bar[d[a, p]]\[CenterDot]\[Chi][r])\[Phi][a]];
		L = LSM + LNP;
		
		(* matching *)
		LEFT = Match[L, EFTOrder -> 6, LoopOrder -> 1];
		
		(* JSON input file *)
		json = {
			"SM" -> <|
				"EW scheme" -> 1,
				"flavor basis" -> "down"
			|>,
			"matching scale" -> 1000,
			"parameters" -> {
				"kapaRe11", "kapaRe12", "kapaRe13", 
				"kapaRe21", "kapaRe22", "kapaRe23", 
				"kapaRe31", "kapaRe32", "kapaRe33"
				,
				"kapaIm11", "kapaIm12", "kapaIm13", 
				"kapaIm21", "kapaIm22", "kapaIm23", 
				"kapaIm31", "kapaIm32", "kapaIm33"
				,
				"mPhi",
				"mChi1", "mChi2", "mChi3"
			},
			"dictionary" -> <|
				"Coupling[m\[Chi], {Index[1, Flavor]}, 0]" -> "mChi1",
				"Coupling[m\[Chi], {Index[2, Flavor]}, 0]" -> "mChi2",
				"Coupling[m\[Chi], {Index[3, Flavor]}, 0]" -> "mChi3",
				"Coupling[m\[Phi], {}, 0]" -> "mPhi",
				"Coupling[\[Kappa], {Index[1, Flavor], Index[1, Flavor]}, 0]" -> "I kapaIm11 + kapaRe11",
				"Coupling[\[Kappa], {Index[1, Flavor], Index[2, Flavor]}, 0]" -> "I kapaIm12 + kapaRe12",
				"Coupling[\[Kappa], {Index[1, Flavor], Index[3, Flavor]}, 0]" -> "I kapaIm13 + kapaRe13",
				"Coupling[\[Kappa], {Index[2, Flavor], Index[1, Flavor]}, 0]" -> "I kapaIm21 + kapaRe21",
				"Coupling[\[Kappa], {Index[2, Flavor], Index[2, Flavor]}, 0]" -> "I kapaIm22 + kapaRe22",
				"Coupling[\[Kappa], {Index[2, Flavor], Index[3, Flavor]}, 0]" -> "I kapaIm23 + kapaRe23",
				"Coupling[\[Kappa], {Index[3, Flavor], Index[1, Flavor]}, 0]" -> "I kapaIm31 + kapaRe31",
				"Coupling[\[Kappa], {Index[3, Flavor], Index[2, Flavor]}, 0]" -> "I kapaIm32 + kapaRe32",
				"Coupling[\[Kappa], {Index[3, Flavor], Index[3, Flavor]}, 0]" -> "I kapaIm33 + kapaRe33"
			|>,
			"parameter points" -> <|
				"1" -> {
					0.1, 0.2, 0.3, 
					0.4, 0.5, 0.6, 
					0.7, 0.8, 0.9
					,
					0.1, 0.1, 0.1, 
					0.1, 0.1, 0.1, 
					0.1, 0.1, 0.1
					,
					2001, 
					1000, 1500, 2000
				}
			|>
		};
		pathWCxf= FileNameJoin@{$MatchetePath,"Validation","ExportResults","WCxf"};
		Export[FileNameJoin@{pathWCxf,"WCxf-input.json"}, json];
		
		(* use D=4 identities and save previous options *)
		opt= Options@ Matchete`ExportWCxf`PackagePrivate`GetMatchingConditionsForWCxf;
		SetOptions[Matchete`ExportWCxf`PackagePrivate`GetMatchingConditionsForWCxf, ReductionIdentities->FourDimensional];
		
		(* Export WCxf files *)
		ExportWCxf[LEFT, 
			FileNameJoin@{pathWCxf,"WCxf-input.json"},
			FileNameJoin@{pathWCxf, "current"}
		];
		
		(* reset previous options *)
		Options@ Matchete`ExportWCxf`PackagePrivate`GetMatchingConditionsForWCxf= opt;
		
		(* comparison *)
		(* find new and old files *)
		new= FileNames["*.json", FileNameJoin@{pathWCxf, "current"}];
		old= FileNames["*.json", FileNameJoin@{pathWCxf, "previous"}];
		
		(* compare length *)
		If[Length[new]=!=Length[old],
			Print["\t- ", Style["\[WarningSign]", Red]," The new number of WCxf files does not match the old number."];
			correct= False
			,
			(* sompare each file *)
			Do[
				newi= Lookup[Import[new[[i]],"RawJSON"],"values"];
				oldi= Lookup[Import[old[[i]],"RawJSON"],"values"];
				(* check that all numerical values agree up to 10 signifcant digits *)
				If[!MatchQ[Flatten@Values[(2 (newi-oldi)/(newi+oldi)), If[Head[#]===Association, Values[#,Chop], Chop[#]]&], {0..}],
					correct= False;
					Print["\t- ", Style["\[WarningSign]", Red]," The WCxf file ", ToString@FileBaseName[new[[i]]], " does not match the previous version."]
					,
					Print["\t- ", Style["\[CheckmarkedBox]", Darker@Green]," The WCxf file ", ToString@FileBaseName[new[[i]]], " matches the previous version."]
				]
				,
				{i, Length[new]}
			]
		];
		
		If[correct,
			Print["WCxf validation sucessful."],
			Print["WCxf validation failed!"]
		]
	];
]


(* ::Section:: *)
(*Evanescent results*)


If[TrueQ[$EvanescentTests],
	(* reset the model *)
	ResetAll[];
	Print["__________"];
	Print["Validating evanescent shifts in SMEFT"];
		
	
	Module[{output},
	  output=QuietEcho@Quiet@NotebookEvaluate[FileNameJoin[{$MatchetePath, "Validation", "Evanescent_check.nb"}]];
	
	  If[output[[1]] === 0,
	    Print["\t Validation Passed:"],
	    Print["\t Validation Failed:"];
	    Echo[output[[1]], "Difference between automatic evanescent shift and paper results: ", Iconize[#,Format[#,NiceForm]]&];
	  ];
	  
	  Print["\t- Computation time in sec: ", output[[2]], " (now) vs. ", 88, " (reference time)." ];	
	]
];


Print["__________"];
Print["Validation finished."];


End[];
