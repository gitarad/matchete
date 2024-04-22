(* ::Package:: *)

(* ::Title:: *)
(*Singlet Scalar Extension model file*)


(* ::Subtitle:: *)
(*SM extension with a singlet scalar ~ (1,1,0)*)


(* ::Section:: *)
(*Lagrangian*)


MatcheteLagrangianParameters["Singlet_Scalar_Extension"] = 
{
	"SU3c", "gs", "G", "SU2L", "gL", "W", "U1Y", "gY", "B", "Flavor", 
	"q", "u", "d", "l", "e", "H",
	"Yu", "Yd", "Ye", "\[Lambda]", "\[Mu]",
	"\[Phi]", "M", "A", "\[Kappa]", "\[Mu]\[Phi]", "\[Lambda]\[Phi]"
};


MatcheteLagrangianAlphabets["Singlet_Scalar_Extension"] = 
{
	"SU3cFundAlphabet" -> {"a","b","c","d","e","f"}, "SU3cAdjAlphabet" -> {"A","B","C","D","E","F"},
	"SU2LFundAlphabet" -> {"i","j","k","l","m","n"}, "SU2LAdjAlphabet" -> {"I","J","K","L","M","N"},
	"FlavorAlphabet"   -> {"p","r","s","t","u","v"}
};


MatcheteLagrangian["Singlet_Scalar_Extension",ModParam_,IndAlphabet_]:= MatcheteLagrangian["Singlet_Scalar_Extension",ModParam,IndAlphabet]=
Module[{SMLag},
	SMLag=LoadModel["SM",ModelParameters->ModParam[[1;;21]],IndexAlphabet->IndAlphabet];
	Hold[	
	Module[{i,Lint},	

		DefineField["\[Phi]", Scalar, SelfConjugate->True, Mass->{Heavy,"M"}];
		
		DefineCoupling["A", SelfConjugate->True];
		DefineCoupling["\[Kappa]", SelfConjugate->True];
		DefineCoupling["\[Mu]\[Phi]", SelfConjugate->True];
		DefineCoupling["\[Lambda]\[Phi]", SelfConjugate->True];
		 
		Lint = (-"A"[]Bar@"H"[i]"H"[i]"\[Phi]"[]-1/2 "\[Kappa]"[]Bar@"H"[i]"H"[i]"\[Phi]"[]"\[Phi]"[]-1/3! "\[Mu]\[Phi]"[]"\[Phi]"[]^3-1/4! "\[Lambda]\[Phi]"[]"\[Phi]"[]^4);
		
		SMLag + FreeLag["\[Phi]"] + Lint //RelabelIndices
	]
	]/.Join[ModParam,IndAlphabet]//ReleaseHold
]
