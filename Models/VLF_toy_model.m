(* ::Package:: *)

(* ::Title:: *)
(*Vector-like fermions toy model file*)


(* ::Subtitle:: *)
(*Toy model with a heavy vectorlike fermion*)


(* ::Section:: *)
(*Lagrangian*)


MatcheteLagrangianParameters["VLF_toy_model"] = 
{
	"U1e", "e", "A",
	"\[CapitalPsi]", "\[Psi]", "\[Phi]",
	"M", "m", "y"
};


MatcheteLagrangianAlphabets["VLF_toy_model"] = 
{
};


MatcheteLagrangian["VLF_toy_model",ModParam_,IndAlphabet_]:= MatcheteLagrangian["VLF_toy_model",ModParam,IndAlphabet]=
Module[{},
	Hold[	
	Module[{Lint},	
		
		DefineGaugeGroup["U1e", U1, "e", "A"];
		
		DefineField["\[CapitalPsi]", Fermion, Charges->{"U1e"[1]}, Mass->{Heavy,"M"}];
		DefineField["\[Psi]", Fermion, Charges->{"U1e"[1]}, Mass->0];
		DefineField["\[Phi]", Scalar, Mass->{Light,"m"}, SelfConjugate->True];
		
		DefineCoupling["y"];
		 
		Lint = -"y"[] Bar@"\[Psi]"[]**PR**"\[CapitalPsi]"[] "\[Phi]"[];
		
		FreeLag[] + PlusHc[Lint] //RelabelIndices
	]
	]/.Join[ModParam,IndAlphabet]//ReleaseHold
]
