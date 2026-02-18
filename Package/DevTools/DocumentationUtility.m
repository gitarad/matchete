(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`DocumentationUtility`*)


(* ::Text:: *)
(*Contains the functions needed for building and linking Matchete documentation to the Mathematica Documentation center*)


(* ::Section:: *)
(*Scoping*)


(* ::Subsubsection::Closed:: *)
(*Internal*)


PackageScope["BuildDocumentation"]


PackageScope["CopyDocumentationToSourceDirectory"]


PackageScope["CreateTemplateDocumentation"]


PackageScope["LinkDocumentation"]


PackageScope["UpdatePreBuiltDocumentation"]


(* ::Section:: *)
(*Usage messages*)


(* ::Subsubsection::Closed:: *)
(*Internal*)


BuildDocumentation::usage="BuildDocumentation[] builds the documentation of Matchete from its source and links it. Takes the Option \"HTML\" which can be True or False and determines whether to also build the HTML documentation.";


CopyDocumentationToSourceDirectory::usage="CopyDocumentationToSourceDirectory[] copies newly generated documentation notebooks to the source directory if it does not yet exsit there.
CopyDocumentationToSourceDirectory[\"func\"] copies the documentation notebooks for the function \"func\" to the source directory. If the file already exists, it is asked if the file should be overwritten.";


CreateTemplateDocumentation::usage= "CreateTemplateDocumentation[func] generates a template documentation notebook for the function func.";


LinkDocumentation::usage="LinkDocumentation[] links the documentation of Matchete from its build.";


UpdatePreBuiltDocumentation::usage="UpdatePreBuiltDocumentation[] builds the documentation from source and copies the result to the DocumentationPreBuilt directory for distribution.";


(* ::Chapter:: *)
(*Private:*)


(* ::Section:: *)
(*Documentation*)


(* ::Subsubsection::Closed:: *)
(*Names  and  Paths*)


(* ::Text:: *)
(*Fix name and path of the paclet:*)


$pacletName= "Matchete"
$pacletPath= $MatchetePath


(* ::Text:: *)
(*Path to documentation of the paclet:*)


$pacletDocumentationPath= FileNameJoin[{$pacletPath, "Documentation"}]


(* ::Text:: *)
(*Path to where the source of the documentation will be stored:*)


$pacletDocumentationSourcePath= FileNameJoin[{$pacletPath, "DocumentationSource", "Documentation"}]


(* ::Text:: *)
(*Path to where the HTML version of the documentation will be stored:*)


$pacletDocumentationHTMLPath= FileNameJoin[{$pacletPath, "DocumentationHTML", "Documentation"}]


(* ::Subsubsection::Closed:: *)
(*Create Template Documentation Notebook*)


CreateTemplateDocumentation[function_String]:=Module[{create=True},
	(* Load DocumentationTools` *)
	Needs["DocumentationTools`"];
	DocumentationTools`DocumentationToolsLoader[];
	
	If[("CurrentPaclet"/.DocumentationTools`SetDocumentationToolsParameters[])=!="Matchete",
		Print["Please first add the Matchete paclet to the DocumentationTools. For details see ", Hyperlink["this link","https://reference.wolfram.com/language/DocumentationTools/workflow/ConfigureAPacletForUseWithDocumentationTools.html"]];
		DocumentationTools`OpenDocumentationToolsPalette[];
		Print["Then run this command again"];
		,
		(* Check if documentation for the given function is already present *)
		If[FileExistsQ@FileNameJoin[{$pacletDocumentationPath,"English","ReferencePages","Symbols",function<>".nb"}],
			DialogInput@DialogNotebook[{
				TextCell["The function "<>function<>" is already documented. Do you want to overwrite the documentation?",16],
				ChoiceButtons[{"Overwrite","Cancel"},{DialogReturn@Nothing,DialogReturn[create=False;NotebookClose[];]}]
			}]
		];
		
		(* create interactive window to create new documentation template *)
		If[create,
			DocumentationTools`CreateNewPageDialog[$pacletName,$pacletPath,"Reference",function]
			,
			Print["No documentation was generated."];
			Return[];
		];
		
		Print["Please click ok on all notebooks that are opened and then close the template documentation notebook."];
		Print["This will generate a template documentation notebook for the function "<>function<>" in the directory "<>FileNameJoin[{$pacletPath,"Documentation","English","ReferencePages","Symbols",function<>".nb"}]];
		Print["Please use the function CopyDocumentationToSourceDirectory[] next to copy the file to the source directory."];
	];
]


(* ::Subsubsection::Closed:: *)
(*Copy documentation to source directory*)


CopyDocumentationToSourceDirectory[]:=Module[{existingDocs, copiedDocs={}},
	(* Check for existing documentation files *)
	existingDocs= FileNameTake/@FileNames@FileNameJoin[
		{$pacletDocumentationSourcePath,"English","ReferencePages","Symbols","*.nb"}
	];
	
	(* copy all non existing documentation files to the source directory *)
	Do[
		If[FreeQ[existingDocs,FileNameTake[file]],
			AppendTo[copiedDocs, FileNameTake[file]];
			CopyFile[
				file,
				FileNameJoin[{$pacletDocumentationSourcePath,"English","ReferencePages","Symbols",FileNameTake[file]}]
			]
		]
		,
		{file,FileNames@FileNameJoin[{$pacletDocumentationPath,"English","ReferencePages","Symbols","*.nb"}]}
	];
	
	Print["The following files were copied to the documentation source diractory at "<>$pacletDocumentationSourcePath<>":"];
	Print[copiedDocs];
	Print["You can now complete the information in this file in the source directory."];
	Print["Afterwards please call the function BuildDocumentation[] to rebuild the Matchete documentation."];
]


CopyDocumentationToSourceDirectory[func_String]:=Module[
	{
		existing, 
		overwrite = False, 
		fileStart = FileNameJoin[{$pacletDocumentationPath, "English", "ReferencePages", "Symbols", func <> ".nb"}],
		fileEnd   = FileNameJoin[{$pacletDocumentationSourcePath, "English", "ReferencePages", "Symbols", func <> ".nb"}]
	}
	,
	(* Check for existing documentation files *)
	existing= FileExistsQ@ fileEnd;
	
	If[existing,
		DialogInput@DialogNotebook[{
			TextCell["A documentation source file for the function "<>func<>" already exists. Do you want to overwrite the source documentation?",16],
			ChoiceButtons[
				{"Overwrite","Cancel"},
				{DialogReturn[overwrite=True; NotebookClose[];], DialogReturn[overwrite=False; NotebookClose[]; ]}
			]
		}];
		If[overwrite,
			DeleteFile[fileEnd];
			CopyFile[fileStart, fileEnd];
			Print["Overwriting existing documentation."];
			,
			Print["Existing documentation was not overwritten."];
			Return[]
		];
		,
		CopyFile[fileStart, fileEnd];
	];
	Print["You can now complete the information in the documentation notebook in the source directory."];
	Print["Afterwards please call the function BuildDocumentation[] to rebuild the Matchete documentation."];
]


(* ::Subsubsection::Closed:: *)
(*Build documentation*)


Options[BuildDocumentation] = {"HTML" -> False};


BuildDocumentation[OptionsPattern[]]:=Module[{builtPath=FileNameJoin[{$pacletPath,"built"}]},
	(* load PacletTools` *)
	Needs["PacletTools`"];
	
	(* delete old documentation and copy the new source of the documentation*)
	Quiet@DeleteDirectory[$pacletDocumentationPath,DeleteContents->True];
	CopyDirectory[$pacletDocumentationSourcePath,$pacletDocumentationPath];
	
	(* build documentation *)
	PacletTools`PacletDocumentationBuild[$pacletPath,builtPath];
	(* loop over all created notebooks and fix the references to style sheets *)
	
	(* build HTML documentation if required*)
	If[OptionValue["HTML"],
		PacletTools`PacletDocumentationBuild[$pacletPath,$pacletDocumentationHTMLPath,"HTML"];
	];
	
	(* 
	copy newly built documentation: 
		1)  delete old directory again
		2)  copy the built
		3)  delete old directory of built
	*)
	DeleteDirectory[$pacletDocumentationPath,DeleteContents->True];
	CopyDirectory[FileNameJoin[{builtPath,$pacletName,"Documentation"}],$pacletDocumentationPath];
	DeleteDirectory[builtPath,DeleteContents->True];
	
	FixStyleSheets/@FileNames["*.nb",$pacletDocumentationPath,Infinity];
	
	LinkDocumentation[];
]


(* This function fiyes the style sheet references for the documentation notebook at the given path *)
FixStyleSheets[path_]:=Module[
	{nb=NotebookOpen[path,Visible->False],opt}
	,
	(* get option value of StyleDefinitions and overwrite StyleSheet *)
	opt=(Options[nb,StyleDefinitions][[1,-1]])/.x_FrontEnd`FileName/;!FreeQ[x,HoldPattern@$RootDirectory,All]->"Default.nb";
	SetOptions[nb,StyleDefinitions->opt];
	(* save and close notebook *)
	NotebookSave[nb];
	NotebookClose[nb];
]


(* ::Subsubsection::Closed:: *)
(*Link documentation*)


LinkDocumentation[]:=Module[{},
	(* expose Matchete to Mathematica *)
	If[Length@ PacletFind["Matchete"] === 0, PacletDirectoryLoad[$pacletPath]];
	
	(* link documentation *)
	PacletManager`Package`createPacletsFromParentDirs[$pacletPath, 1];
	(*PacletDataRebuild[];*) (* this links again the documentation of all paclets that can be found by Matchete *)
]


(* ::Subsubsection::Closed:: *)
(*Create pre-build documentation*)


Options[UpdatePreBuiltDocumentation] = {"HTML" -> False, "Rebuilt" -> True};


UpdatePreBuiltDocumentation::noDocu= "No built documentation found: please use the Option \"Rebuilt\"\[Rule]True!";
UpdatePreBuiltDocumentation::noHTML= "Building HTML documentation requires a rebuilding of the documentation. To do so, please set the Option \"Rebuilt\"\[Rule]True.";


UpdatePreBuiltDocumentation[OptionsPattern[]]:= Module[{},
	(* rebuilt documentation if required *)
	If[OptionValue["Rebuilt"],
		BuildDocumentation["HTML" -> OptionValue["HTML"]]
		,
		If[!DirectoryQ[FileNameJoin@{$MatchetePath,"Documentation"}],
			Message[UpdatePreBuiltDocumentation::noDocu];
			Abort[]
			,
			If[OptionValue["HTML"],
				Message[UpdatePreBuiltDocumentation::noHTML]
			]
		];
	];
	
	(* delete pre-built documentation *)
	Quiet[
		DeleteDirectory[FileNameJoin@{$MatchetePath,"DocumentationPreBuilt"}, DeleteContents-> True]
		,{DeleteDirectory::nodir}
	];
	
	(* copy new documentation *)
	CopyDirectory[
		FileNameJoin@{$MatchetePath,"Documentation"},
		FileNameJoin@{$MatchetePath,"DocumentationPreBuilt"}
	]
]
