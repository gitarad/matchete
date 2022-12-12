(* ::Package:: *)

(* ::Title:: *)
(*E VLL model file*)


(* ::Subtitle:: *)
(*SM extension with a a vector-like lepton EE ~ (1,1,-1)*)


(* ::Section:: *)
(*Lagrangian*)


MatcheteLagrangianParameters["E_VLL"] = 
{
	"SU3c", "gs", "G", "SU2L", "gL", "W", "U1Y", "gY", "B", "Flavor", 
	"q", "u", "d", "l", "e", "H",
	"Yu", "Yd", "Ye", "\[Lambda]", "\[Mu]",
	"EE", "ME", "yE"
};


MatcheteLagrangianAlphabets["E_VLL"] = 
{
	"SU3cFundAlphabet" -> {"a","b","c","d","e","f"}, "SU3cAdjAlphabet" -> {"A","B","C","D","E","F"},
	"SU2LFundAlphabet" -> {"i","j","k","l","m","n"}, "SU2LAdjAlphabet" -> {"I","J","K","L","M","N"},
	"FlavorAlphabet"   -> {"p","r","s","t","u","v"}
};


MatcheteLagrangian["E_VLL",ModParam_,IndAlphabet_]:= MatcheteLagrangian["E_VLL",ModParam,IndAlphabet]=
Module[{SMLag},
	SMLag=LoadModel["SM",ModelParameters->ModParam[[1;;21]],IndexAlphabet->IndAlphabet];
	Hold[	
	Module[{p,i,Lint},	

		DefineField["EE", Fermion, Charges->{"U1Y"[-1]},Mass->{Heavy,"ME"}];
		
		DefineCoupling["yE",EFTOrder->0,Indices->{"Flavor"}];
		 
		Lint = -"yE"[p] Bar@"l"[i,p]**PR**"EE"[] "H"[i];
		
		SMLag +FreeLag["EE"] + PlusHc[Lint] //RelabelIndices
	]
	]/.Join[ModParam,IndAlphabet]//ReleaseHold
]
