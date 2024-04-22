(* ::Package:: *)

Begin["BranchValidation`"]


(* ::Title:: *)
(*Validation of Matching Results*)


(* ::Text:: *)
(*List of UV models for which a model file and a saved EFT Lagrangian result exist.*)


$UVmodels= {"VLF_toy_model", "Singlet_Scalar_Extension", "E_VLL", "S1S3LQs"};


Do[
	(* reset the model *)
	ResetAll[];
	
	Print["Validating model: \"", Style[model, Bold],"\""];
	
	(* turn on validation mode *)
	Matchete`PackageScope`ActivateValidationMode[model, False];
	
	(* define and run the model *)
	LUV=LoadModel[model];
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
	Print["\t\t\[Rule] ", Style["Match","Code"], ":   \t\t", LEFT$now["Time (Match)"], " (now) vs. ", LEFT$previous["Time (Match)"], " (before)"];
	Print["\t\t\[Rule] ", Style["GreensSimplify","Code"], ":  ", LEFT$now["Time (GreensSimplify)"], " (now) vs. ", LEFT$previous["Time (GreensSimplify)"], " (before)"];
	Print["\t\t\[Rule] ", Style["EOMSimplify","Code"], ": \t", LEFT$now["Time (EOMSimplify)"], " (now) vs. ", LEFT$previous["Time (EOMSimplify)"], " (before)"];
	
	(* compare off-shell Lagrangian *)
	diff$off= GreensSimplify[LEFT$now["Off-shell EFT Lagrangian"]-LEFT$previous["Off-shell EFT Lagrangian"]];
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
			\[CapitalDelta]STr=GreensSimplify[LEFT$now["SuperTraces"][trace]-LEFT$previous["SuperTraces"][trace]];
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
	diff$on= GreensSimplify[LEFT$now["On-shell EFT Lagrangian"]-LEFT$previous["On-shell EFT Lagrangian"]];
	If[diff$on===0,
		Print["\t- ", Style["\[CheckmarkedBox]", Darker@Green], " On-shell EFT Lagrangian agrees with the previous result."]
	,
		Print["\t- ", Style["\[WarningSign]", Red]," On-shell EFT Lagrangian does not agrees with the previous result."];
		Echo[diff$on, "Difference on-shell EFT Lagrangian: ", Iconize[#,Format[#,NiceForm]]&];
	];
	
	Print["__________"];
,
	{model, $UVmodels}
]


Print["Validation of implemented models finished: ", Length@$UVmodels, "/", Length@$UVmodels, " successfully verfied."];


End[];
