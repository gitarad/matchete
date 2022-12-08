(* ::Package:: *)

(* ::Title:: *)
(*S1-S3 LQ model file*)


(* ::Subtitle:: *)
(*SM extension with two scalar leptoquarks: S1~(3bar,1,1/3) and S1~(3bar,3,1/3)*)


(* ::Section:: *)
(*Lagrangian*)


MatcheteLagrangianParameters["S1S3LQs"] = 
{
	"SU3c", "gs", "G", "SU2L", "gL", "W", "U1Y", "gY", "B", "Flavor", 
	"q", "u", "d", "l", "e", "H",
	"Yd", "Yu", "Ye", "\[Lambda]", "\[Mu]",
	"S1", "M1", "y1L", "y1R", "\[Lambda]H1",
	"S3", "M3", "y3L", "\[Lambda]H3", "\[Lambda]H3p",
	"\[Lambda]H13"
};


MatcheteLagrangianAlphabets["S1S3LQs"] = 
{
	"SU3cFundAlphabet" -> {"a","b","c","d","e","f"}, "SU3cAdjAlphabet" -> {"A","B","C","D","E","F"},
	"SU2LFundAlphabet" -> {"i","j","k","l","m","n"}, "SU2LAdjAlphabet" -> {"I","J","K","L","M","N"},
	"FlavorAlphabet"   -> {"p","r","s","t","u","v"}
};


MatcheteLagrangian["S1S3LQs",ModParam_,IndAlphabet_]:= MatcheteLagrangian["S1S3LQs",ModParam,IndAlphabet]=
Module[{SMLag},
	SMLag=LoadModel["SM",ModelParameters->ModParam[[1;;21]],IndexAlphabet->IndAlphabet];
	Hold[	
	Module[{p,r,i,j,k,J,K,L,\[Alpha],\[Tau]SU2L,fSU2L,\[Epsilon]SU2L,S1Lag,S3Lag,S1S3Lag},
			
		DefineField["S1",Scalar,Indices->{Bar@"SU3c"[fund]},Charges->{"U1Y"[1/3]},Mass->{Heavy,"M1"}];
		DefineField["S3",Scalar,Indices->{Bar@"SU3c"[fund],"SU2L"[adj]},Charges->{"U1Y"[1/3]},Mass->{Heavy,"M3"}];
		
		DefineCoupling["y1L",Indices->{"Flavor","Flavor"}];
		DefineCoupling["y1R",Indices->{"Flavor","Flavor"}];
		DefineCoupling["y3L",Indices->{"Flavor","Flavor"}];

		DefineCoupling["\[Lambda]H1",SelfConjugate->True];
		DefineCoupling["\[Lambda]H3",SelfConjugate->True];
		DefineCoupling["\[Lambda]H13"];
		DefineCoupling["\[Lambda]H3p",SelfConjugate->True];
		
		\[Tau]SU2L[Jadj_,ifund_,jfund_]:= 2 CG[gen["SU2L"[fund]],{Jadj,ifund,jfund}];
		fSU2L[Iadj_,Jadj_,Kadj_]:=CG[fStruct["SU2L"],{Iadj,Jadj,Kadj}];
		\[Epsilon]SU2L[ifund_,jfund_]:= CG[eps["SU2L"],{ifund,jfund}];
		
		S1Lag = FreeLag["S1"] + PlusHc["y1L"[p,r] "S1"[\[Alpha]] Bar@\[Epsilon]SU2L[i,j] Bar@CConj@"q"[\[Alpha],i,p]**"l"[j,r] + "y1R"[p,r] "S1"[\[Alpha]] Bar@CConj@"u"[\[Alpha],p]**"e"[r]] - "\[Lambda]H1"[] Bar@"H"[i] "H"[i] Bar@"S1"[\[Alpha]] "S1"[\[Alpha]];
		S3Lag = FreeLag["S3"] + PlusHc["y3L"[p,r] Bar@\[Epsilon]SU2L[i,j] \[Tau]SU2L[J,j,k] "S3"[\[Alpha],J] Bar@CConj@"q"[\[Alpha],i,p]**"l"[k,r]] - "\[Lambda]H3"[] Bar@"H"[i] "H"[i] Bar@"S3"[\[Alpha],J] "S3"[\[Alpha],J] - I "\[Lambda]H3p"[] fSU2L[J,K,L] Bar@"H"[i] \[Tau]SU2L[J,i,j] "H"[j] Bar@"S3"[\[Alpha],K] "S3"[\[Alpha],L];
		S1S3Lag = - PlusHc["\[Lambda]H13"[] Bar@"H"[i] \[Tau]SU2L[J,i,j] "H"[j] Bar@"S3"[\[Alpha],J] "S1"[\[Alpha]]];
	
		SMLag + S1Lag + S3Lag + S1S3Lag//RelabelIndices
	]
	]/.Join[ModParam,IndAlphabet]//ReleaseHold
]
