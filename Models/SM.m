(* ::Package:: *)

(* ::Title:: *)
(*SM model file*)


(* ::Section:: *)
(*Lagrangian*)


MatcheteLagrangianParameters["SM"] = 
{
	"SU3c", "gs", "G", "SU2L", "gL", "W", "U1Y", "gY", "B", "Flavor", 
	"q", "u", "d", "l", "e", "H",
	"Yd", "Yu", "Ye", "\[Lambda]", "\[Mu]"
};


MatcheteLagrangianAlphabets["SM"] = 
{
	"SU3cFundAlphabet" -> {"a","b","c","d","e","f"}, "SU3cAdjAlphabet" -> {"A","B","C","D","E","F"},
	"SU2LFundAlphabet" -> {"i","j","k","l","m","n"}, "SU2LAdjAlphabet" -> {"I","J","K","L","M","N"},
	"FlavorAlphabet"   -> {"p","r","s","t","u","v"}
};


MatcheteLagrangian["SM",ModParam_,IndAlphabet_]:= MatcheteLagrangian["SM",ModParam,IndAlphabet]=
Hold[	
	Module[{p,r,s,i,j,\[Alpha],\[Beta],YukawaL,HiggsPotential},
		DefineGaugeGroup["SU3c", SU@3, "gs", "G", FundAlphabet -> "SU3cFundAlphabet", AdjAlphabet -> "SU3cAdjAlphabet"];
		DefineGaugeGroup["SU2L", SU@2, "gL", "W", FundAlphabet -> "SU2LFundAlphabet", AdjAlphabet -> "SU2LAdjAlphabet"];
		DefineGaugeGroup["U1Y",   U1, "gY", "B"];
		
		DefineFlavorIndex["Flavor",3,IndexAlphabet-> "FlavorAlphabet"];
		
		DefineField["q",Fermion,Indices->{"SU3c"[fund],"SU2L"[fund],"Flavor"},Charges->{"U1Y"[1/6]},Chiral-> LeftHanded,Mass->0];
		DefineField["u",Fermion,Indices->{"SU3c"[fund],"Flavor"},Charges->{"U1Y"[2/3]},Chiral-> RightHanded,Mass->0];
		DefineField["d",Fermion,Indices->{"SU3c"[fund],"Flavor"},Charges->{"U1Y"[-1/3]},Chiral-> RightHanded,Mass->0];
		DefineField["l",Fermion,Indices->{"SU2L"[fund],"Flavor"},Charges->{"U1Y"[-1/2]},Chiral-> LeftHanded,Mass->0];
		DefineField["e",Fermion,Indices->{"Flavor"},Charges->{"U1Y"[-1]},Chiral-> RightHanded,Mass->0];

		(* Mass added as an interaction because it is tachyonic *)
		DefineField["H",Scalar,Indices->{"SU2L"[fund]}, Charges->{"U1Y"[1/2]},Mass->0];

		DefineCoupling["Yu",Indices->{"Flavor","Flavor"}];
		DefineCoupling["Yd",Indices->{"Flavor","Flavor"}];
		DefineCoupling["Ye",Indices->{"Flavor","Flavor"}];
		DefineCoupling["\[Mu]",SelfConjugate->True,EFTOrder->1];
		DefineCoupling["\[Lambda]",SelfConjugate->True,EFTOrder->0];
			
		YukawaL =  "Yu"[p,r] Bar@"q"[\[Alpha],i,p]**"u"[\[Alpha],r] CG[eps["SU2L"],{i,j}]Bar@"H"[j] + "Yd"[p,r] Bar@"q"[\[Alpha],i,p]**"d"[\[Alpha],r]"H"[i] + "Ye"[p,r] Bar@"l"[i,p]**"e"[r]"H"[i];
		HiggsPotential = -"\[Mu]"[]^2 Bar@"H"[i]"H"[i] + "\[Lambda]"[]/2 Bar@"H"[i]"H"[i]Bar@"H"[j]"H"[j];
		
		FreeLag["q", "u", "d", "l", "e", "H", "G", "W", "B"] - PlusHc[YukawaL] - HiggsPotential //RelabelIndices
	]
]/.Join[ModParam,IndAlphabet]//ReleaseHold
