(* ::Package:: *)

(* ::Title:: *)
(*SMEFT model file*)


(* ::Section:: *)
(*Lagrangian*)


MatcheteLagrangianParameters["SMEFT"] = 
{
	"SU3c", "gs", "G", "SU2L", "gL", "W", "U1Y", "gY", "B", "Flavor", 
	"q", "u", "d", "l", "e", "H",
	"Yu", "Yd", "Ye", "\[Lambda]", "\[Mu]",
	"cllHH",
	"cG","cGt","cW","cWt",
	"cH","cHBox","cHD",
	"ceH","cuH","cdH",
	"cHG","cHGt","cHW","cHWt","cHB","cHBt","cHWB","cHWtB",
	"ceW","ceB","cuG","cuW","cuB","cdG","cdW","cdB",
	"cHl1","cHl3","cHe","cHq1","cHq3","cHu","cHd","cHud",
	"cll","cqq1","cqq3","clq1","clq3",
	"cee","cuu","cdd","ceu","ced","cud1","cud8",
	"cle","clu","cld","cqe","cqu1","cqu8","cqd1","cqd8",
	"cledq","cquqd1","cquqd8","clequ1","clequ3",
	"cduq","cqqu","cqqq","cduu"
};


MatcheteLagrangianAlphabets["SMEFT"] = 
{
	"SU3cFundAlphabet" -> {"a","b","c","d","e","f"}, "SU3cAdjAlphabet" -> {"A","B","C","D","E","F"},
	"SU2LFundAlphabet" -> {"i","j","k","l","m","n"}, "SU2LAdjAlphabet" -> {"I","J","K","L","M","N"},
	"FlavorAlphabet"   -> {"p","r","s","t","u","v"}
};


MatcheteLagrangian["SMEFT",ModParam_,IndAlphabet_]:= MatcheteLagrangian["SMEFT",ModParam,IndAlphabet]=
Module[{SMLag},
	SMLag=LoadModel["SM",ModelParameters->ModParam[[1;;21]],IndexAlphabet->IndAlphabet];
	Hold[	
	Module[{p,r,s,t,i,j,k,m,n,o,J,K,L,\[Alpha],\[Beta],\[Delta],A,C,D,\[Nu],\[Rho],\[Theta],\[Eta],\[Kappa],
			\[Tau]SU2L,fSU2L,\[Epsilon]SU2L,TSU3c,fSU3c,\[Epsilon]SU3c,HermitianCD,
			Lagd5,Lagd60F,Lagd62F, Lagd62FH ,Lagd64F,Lagd64FH, Lagd6BNV},
		
		DefineCoupling["cllHH",Indices->{"Flavor","Flavor"},Symmetries->{SymmetricPermutation[2,1]}];

		DefineCoupling["cG",SelfConjugate->True];
		DefineCoupling["cGt",SelfConjugate->True];
		DefineCoupling["cW",SelfConjugate->True];
		DefineCoupling["cWt",SelfConjugate->True];		
		DefineCoupling["cHG",SelfConjugate->True];
		DefineCoupling["cHGt",SelfConjugate->True];
		DefineCoupling["cHW",SelfConjugate->True];
		DefineCoupling["cHWt",SelfConjugate->True];
		DefineCoupling["cHB",SelfConjugate->True];
		DefineCoupling["cHBt",SelfConjugate->True];
		DefineCoupling["cHWB",SelfConjugate->True];
		DefineCoupling["cHWtB",SelfConjugate->True];
		DefineCoupling["cH",SelfConjugate->True];
		DefineCoupling["cHBox",SelfConjugate->True];
		DefineCoupling["cHD",SelfConjugate->True];
		
		DefineCoupling["ceH",Indices->{"Flavor","Flavor"}];
		DefineCoupling["cuH",Indices->{"Flavor","Flavor"}];
		DefineCoupling["cdH",Indices->{"Flavor","Flavor"}];
		DefineCoupling["ceW",Indices->{"Flavor","Flavor"}];
		DefineCoupling["ceB",Indices->{"Flavor","Flavor"}];
		DefineCoupling["cuG",Indices->{"Flavor","Flavor"}];
		DefineCoupling["cuW",Indices->{"Flavor","Flavor"}];
		DefineCoupling["cuB",Indices->{"Flavor","Flavor"}];
		DefineCoupling["cdG",Indices->{"Flavor","Flavor"}];
		DefineCoupling["cdW",Indices->{"Flavor","Flavor"}];
		DefineCoupling["cdB",Indices->{"Flavor","Flavor"}];
		
		DefineCoupling["cHl1",Indices->{"Flavor","Flavor"},SelfConjugate->{2,1}];
		DefineCoupling["cHl3",Indices->{"Flavor","Flavor"},SelfConjugate->{2,1}];
		DefineCoupling["cHe",Indices->{"Flavor","Flavor"},SelfConjugate->{2,1}];
		DefineCoupling["cHq1",Indices->{"Flavor","Flavor"},SelfConjugate->{2,1}];
		DefineCoupling["cHq3",Indices->{"Flavor","Flavor"},SelfConjugate->{2,1}];
		DefineCoupling["cHu",Indices->{"Flavor","Flavor"},SelfConjugate->{2,1}];
		DefineCoupling["cHd",Indices->{"Flavor","Flavor"},SelfConjugate->{2,1}];
		DefineCoupling["cHud",Indices->{"Flavor","Flavor"}];
			
		DefineCoupling["cll",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3},Symmetries->{SymmetricPermutation[3,4,1,2]}];
		DefineCoupling["cqq1",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3},Symmetries->{SymmetricPermutation[3,4,1,2]}];
		DefineCoupling["cqq3",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3},Symmetries->{SymmetricPermutation[3,4,1,2]}];
		DefineCoupling["clq1",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["clq3",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["cee",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3},Symmetries->{SymmetricPermutation[3,4,1,2],SymmetricPermutation[1,4,3,2]}];
		DefineCoupling["cuu",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3},Symmetries->{SymmetricPermutation[3,4,1,2]}];
		DefineCoupling["cdd",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3},Symmetries->{SymmetricPermutation[3,4,1,2]}];
		DefineCoupling["ceu",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["ced",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["cud1",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["cud8",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["cle",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["clu",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["cld",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["cqe",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["cqu1",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["cqu8",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["cqd1",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		DefineCoupling["cqd8",Indices->{"Flavor","Flavor","Flavor","Flavor"},SelfConjugate->{2,1,4,3}];
		
		DefineCoupling["cledq",Indices->{"Flavor","Flavor","Flavor","Flavor"}];
		DefineCoupling["cquqd1",Indices->{"Flavor","Flavor","Flavor","Flavor"}];
		DefineCoupling["cquqd8",Indices->{"Flavor","Flavor","Flavor","Flavor"}];
		DefineCoupling["clequ1",Indices->{"Flavor","Flavor","Flavor","Flavor"}];
		DefineCoupling["clequ3",Indices->{"Flavor","Flavor","Flavor","Flavor"}];
		
		DefineCoupling["cduq",Indices->{"Flavor","Flavor","Flavor","Flavor"}];
		DefineCoupling["cqqu",Indices->{"Flavor","Flavor","Flavor","Flavor"},Symmetries->{SymmetricPermutation[2,1,3,4]}];
		DefineCoupling["cqqq",Indices->{"Flavor","Flavor","Flavor","Flavor"}];
		DefineCoupling["cduu",Indices->{"Flavor","Flavor","Flavor","Flavor"}];
		
		\[Tau]SU2L[Jadj_,ifund_,jfund_]:= 2 CG[gen["SU2L"[fund]],{Jadj,ifund,jfund}];
		fSU2L[Iadj_,Jadj_,Kadj_]:=CG[fStruct["SU2L"],{Iadj,Jadj,Kadj}];
		\[Epsilon]SU2L[ifund_,jfund_]:= CG[eps["SU2L"],{ifund,jfund}];
		TSU3c[Aadj_,\[Alpha]fund_,\[Beta]fund_]:=CG[gen["SU3c"[fund]],{Aadj,\[Alpha]fund,\[Beta]fund}];
		fSU3c[Aadj_,Badj_,Cadj_]:=CG[fStruct["SU3c"],{Aadj,Badj,Cadj}];
		\[Epsilon]SU3c[\[Alpha]fund_,\[Beta]fund_,\[Gamma]fund_]:= CG[eps["SU3c"],{\[Alpha]fund,\[Beta]fund,\[Gamma]fund}];
		HermitianCD[ind_,term1_,term2_]:= I term1 CD[ind,term2] - I CD[ind,term1] term2;
		 
		Lagd5 = "cllHH"[p,r] Bar@\[Epsilon]SU2L[i,j]Bar@\[Epsilon]SU2L[k,m] "H"[i] "H"[k] Bar@CConj@"l"[j,p]**"l"[m,r];
		
		Lagd60F = "cG"[] fSU3c[A,C,D] FS["G", \[Nu], \[Rho], A] FS["G", \[Rho], \[Theta], C] FS["G", \[Theta], \[Nu], D] + 1/2 "cGt"[] LCTensor[\[Nu],\[Rho],\[Eta],\[Kappa]]fSU3c[A,C,D] FS["G", \[Eta], \[Kappa], A] FS["G", \[Rho], \[Theta], C] FS["G", \[Theta], \[Nu], D]
			    + "cW"[] fSU2L[J,K,L] FS["W", \[Nu], \[Rho], J] FS["W", \[Rho], \[Theta], K] FS["W", \[Theta], \[Nu], L] + 1/2 "cWt"[] LCTensor[\[Nu],\[Rho],\[Eta],\[Kappa]]fSU2L[J,K,L] FS["W", \[Eta], \[Kappa], J] FS["W", \[Rho], \[Theta], K] FS["W", \[Theta], \[Nu], L] 
		        + "cHG"[] Bar@"H"[i] "H"[i] FS["G", \[Nu], \[Rho], A] FS["G", \[Nu], \[Rho], A] + 1/2 "cHGt"[] Bar@"H"[i] "H"[i] LCTensor[\[Nu],\[Rho],\[Eta],\[Kappa]] FS["G", \[Eta], \[Kappa], A] FS["G", \[Nu], \[Rho], A] 
		        + "cHW"[] Bar@"H"[i] "H"[i] FS["W", \[Nu], \[Rho], J] FS["W", \[Nu], \[Rho], J] + 1/2 "cHWt"[] Bar@"H"[i] "H"[i] LCTensor[\[Nu],\[Rho],\[Eta],\[Kappa]] FS["W", \[Eta], \[Kappa], J] FS["W", \[Nu], \[Rho], J]
		        + "cHB"[] Bar@"H"[i] "H"[i] FS["B", \[Nu], \[Rho]] FS["B", \[Nu], \[Rho]] + 1/2 "cHBt"[] Bar@"H"[i] "H"[i] LCTensor[\[Nu],\[Rho],\[Eta],\[Kappa]] FS["B", \[Eta], \[Kappa]] FS["B", \[Nu], \[Rho]]
		        + "cHWB"[] Bar@"H"[i] \[Tau]SU2L[J,i,j] "H"[j] FS["W", \[Nu], \[Rho], J] FS["B", \[Nu], \[Rho]] + 1/2 "cHWtB"[] Bar@"H"[i] \[Tau]SU2L[J,i,j] "H"[j] LCTensor[\[Nu],\[Rho],\[Eta],\[Kappa]] FS["W", \[Eta], \[Kappa], J] FS["B", \[Nu], \[Rho]]
		        + "cH"[] Bar@"H"[i] "H"[i] Bar@"H"[j] "H"[j] Bar@"H"[k] "H"[k] 
		        + "cHBox"[] Bar@"H"[i] "H"[i] CD[{\[Nu],\[Nu]},Bar@"H"[j] "H"[j]] 
		        + "cHD"[] "H"[i] CD[\[Nu], Bar@"H"[i]] Bar@"H"[j] CD[\[Nu],"H"[j]]; 
		Lagd62F = "ceH"[p,r] Bar@"H"[i] "H"[i] "H"[j] Bar@"l"[j,p]**"e"[r]
				+ "cuH"[p,r] Bar@"H"[i] "H"[i] \[Epsilon]SU2L[j,k] Bar@"H"[k] Bar@"q"[\[Alpha],j,p]**"u"[\[Alpha],r]
				+ "cdH"[p,r] Bar@"H"[i] "H"[i] "H"[j] Bar@"q"[\[Alpha],j,p]**"d"[\[Alpha],r]
				+ "ceW"[p,r] Bar@"l"[i,p]**\[Sigma][\[Nu],\[Rho]]**"e"[r] \[Tau]SU2L[J,i,j] "H"[j] FS["W",\[Nu],\[Rho],J]
				+ "ceB"[p,r] Bar@"l"[i,p]**\[Sigma][\[Nu],\[Rho]]**"e"[r] "H"[i] FS["B",\[Nu],\[Rho]]
				+ "cuG"[p,r] Bar@"q"[\[Alpha],i,p]**\[Sigma][\[Nu],\[Rho]]**"u"[\[Beta],r]TSU3c[A,\[Alpha],\[Beta]] \[Epsilon]SU2L[i,j] Bar@"H"[j] FS["G",\[Nu],\[Rho],A]
				+ "cuW"[p,r] Bar@"q"[\[Alpha],i,p]**\[Sigma][\[Nu],\[Rho]]**"u"[\[Alpha],r] \[Tau]SU2L[J,i,j]\[Epsilon]SU2L[j,k]Bar@"H"[k] FS["W",\[Nu],\[Rho],J]
				+ "cuB"[p,r] Bar@"q"[\[Alpha],i,p]**\[Sigma][\[Nu],\[Rho]]**"u"[\[Alpha],r] \[Epsilon]SU2L[i,j] Bar@"H"[j] FS["B",\[Nu],\[Rho]]
				+ "cdG"[p,r] Bar@"q"[\[Alpha],i,p]**\[Sigma][\[Nu],\[Rho]]**"d"[\[Beta],r] "H"[i] TSU3c[A,\[Alpha],\[Beta]]FS["G",\[Nu],\[Rho],A]
				+ "cdW"[p,r] Bar@"q"[\[Alpha],i,p]**\[Sigma][\[Nu],\[Rho]]**"d"[\[Alpha],r] \[Tau]SU2L[J,i,j] "H"[j] FS["W",\[Nu],\[Rho],J]
				+ "cdB"[p,r] Bar@"q"[\[Alpha],i,p]**\[Sigma][\[Nu],\[Rho]]**"d"[\[Alpha],r] "H"[i] FS["B",\[Nu],\[Rho]];
		Lagd62FH = "cHl1"[p,r] HermitianCD[\[Nu],Bar@"H"[i],"H"[i]] Bar@"l"[j,p]**\[Gamma][\[Nu]]**"l"[j,r]
				+ "cHl3"[p,r] HermitianCD[\[Nu],Bar@"H"[i],\[Tau]SU2L[J,i,j] "H"[j]] \[Tau]SU2L[J,k,m] Bar@"l"[k,p]**\[Gamma][\[Nu]]**"l"[m,r]
				+ "cHe"[p,r] HermitianCD[\[Nu],Bar@"H"[i], "H"[i]] Bar@"e"[p]**\[Gamma][\[Nu]]**"e"[r]
				+ "cHq1"[p,r] HermitianCD[\[Nu],Bar@"H"[i],"H"[i]] Bar@"q"[\[Alpha],j,p]**\[Gamma][\[Nu]]**"q"[\[Alpha],j,r]
				+ "cHq3"[p,r] HermitianCD[\[Nu],Bar@"H"[i],\[Tau]SU2L[J,i,j] "H"[j]] \[Tau]SU2L[J,k,m] Bar@"q"[\[Alpha],k,p]**\[Gamma][\[Nu]]**"q"[\[Alpha],m,r]
				+ "cHu"[p,r] HermitianCD[\[Nu],Bar@"H"[i],"H"[i]] Bar@"u"[\[Alpha],p]**\[Gamma][\[Nu]]**"u"[\[Alpha],r]
				+ "cHd"[p,r] HermitianCD[\[Nu],Bar@"H"[i],"H"[i]] Bar@"d"[\[Alpha],p]**\[Gamma][\[Nu]]**"d"[\[Alpha],r]
				+ PlusHc["cHud"[p,r] I Bar@\[Epsilon]SU2L[i,j] "H"[j] CD[\[Nu],"H"[i]] Bar@"u"[\[Alpha],p]**\[Gamma][\[Nu]]**"d"[\[Alpha],r]];   
		Lagd64FH = "cll"[p,r,s,t] Bar@"l"[i,p]**\[Gamma][\[Nu]]**"l"[i,r] Bar@"l"[j,s]**\[Gamma][\[Nu]]**"l"[j,t]
				+ "cqq1"[p,r,s,t] Bar@"q"[\[Alpha],i,p]**\[Gamma][\[Nu]]**"q"[\[Alpha],i,r] Bar@"q"[\[Beta],j,s]**\[Gamma][\[Nu]]**"q"[\[Beta],j,t]
				+ "cqq3"[p,r,s,t] \[Tau]SU2L[J,i,j]Bar@"q"[\[Alpha],i,p]**\[Gamma][\[Nu]]**"q"[\[Alpha],j,r] \[Tau]SU2L[J,k,m]Bar@"q"[\[Beta],k,s]**\[Gamma][\[Nu]]**"q"[\[Beta],m,t]
				+ "clq1"[p,r,s,t] Bar@"l"[i,p]**\[Gamma][\[Nu]]**"l"[i,r] Bar@"q"[\[Alpha],j,s]**\[Gamma][\[Nu]]**"q"[\[Alpha],j,t]
				+ "clq3"[p,r,s,t] \[Tau]SU2L[J,i,j]Bar@"l"[i,p]**\[Gamma][\[Nu]]**"l"[j,r] \[Tau]SU2L[J,k,m]Bar@"q"[\[Alpha],k,s]**\[Gamma][\[Nu]]**"q"[\[Alpha],m,t]
				+ "cee"[p,r,s,t] Bar@"e"[p]**\[Gamma][\[Nu]]**"e"[r] Bar@"e"[s]**\[Gamma][\[Nu]]**"e"[t]
				+ "cuu"[p,r,s,t] Bar@"u"[\[Alpha],p]**\[Gamma][\[Nu]]**"u"[\[Alpha],r] Bar@"u"[\[Beta],s]**\[Gamma][\[Nu]]**"u"[\[Beta],t]
				+ "cdd"[p,r,s,t] Bar@"d"[\[Alpha],p]**\[Gamma][\[Nu]]**"d"[\[Alpha],r] Bar@"d"[\[Beta],s]**\[Gamma][\[Nu]]**"d"[\[Beta],t]
				+ "ceu"[p,r,s,t] Bar@"e"[p]**\[Gamma][\[Nu]]**"e"[r] Bar@"u"[\[Alpha],s]**\[Gamma][\[Nu]]**"u"[\[Alpha],t]
				+ "ced"[p,r,s,t] Bar@"e"[p]**\[Gamma][\[Nu]]**"e"[r] Bar@"d"[\[Alpha],s]**\[Gamma][\[Nu]]**"d"[\[Alpha],t]
				+ "cud1"[p,r,s,t] Bar@"u"[\[Alpha],p]**\[Gamma][\[Nu]]**"u"[\[Alpha],r] Bar@"d"[\[Beta],s]**\[Gamma][\[Nu]]**"d"[\[Beta],t]
				+ "cud8"[p,r,s,t] TSU3c[A,\[Alpha],\[Beta]] Bar@"u"[\[Alpha],p]**\[Gamma][\[Nu]]**"u"[\[Beta],r] TSU3c[A,\[Delta],\[Kappa]] Bar@"d"[\[Delta],s]**\[Gamma][\[Nu]]**"d"[\[Kappa],t]
				+ "cle"[p,r,s,t] Bar@"l"[i,p]**\[Gamma][\[Nu]]**"l"[i,r] Bar@"e"[s]**\[Gamma][\[Nu]]**"e"[t]
				+ "clu"[p,r,s,t] Bar@"l"[i,p]**\[Gamma][\[Nu]]**"l"[i,r] Bar@"u"[\[Alpha],s]**\[Gamma][\[Nu]]**"u"[\[Alpha],t]
				+ "cld"[p,r,s,t] Bar@"l"[i,p]**\[Gamma][\[Nu]]**"l"[i,r] Bar@"d"[\[Alpha],s]**\[Gamma][\[Nu]]**"d"[\[Alpha],t]
				+ "cqe"[p,r,s,t] Bar@"q"[\[Alpha],i,p]**\[Gamma][\[Nu]]**"q"[\[Alpha],i,r] Bar@"e"[s]**\[Gamma][\[Nu]]**"e"[t]
				+ "cqu1"[p,r,s,t] Bar@"q"[\[Alpha],i,p]**\[Gamma][\[Nu]]**"q"[\[Alpha],i,r] Bar@"u"[\[Beta],s]**\[Gamma][\[Nu]]**"u"[\[Beta],t]
				+ "cqu8"[p,r,s,t] TSU3c[A,\[Alpha],\[Beta]] Bar@"q"[\[Alpha],i,p]**\[Gamma][\[Nu]]**"q"[\[Beta],i,r] TSU3c[A,\[Delta],\[Kappa]] Bar@"u"[\[Delta],s]**\[Gamma][\[Nu]]**"u"[\[Kappa],t]
				+ "cqd1"[p,r,s,t] Bar@"q"[\[Alpha],i,p]**\[Gamma][\[Nu]]**"q"[\[Alpha],i,r] Bar@"d"[\[Beta],s]**\[Gamma][\[Nu]]**"d"[\[Beta],t]
				+ "cqd8"[p,r,s,t] TSU3c[A,\[Alpha],\[Beta]] Bar@"q"[\[Alpha],i,p]**\[Gamma][\[Nu]]**"q"[\[Beta],i,r] TSU3c[A,\[Delta],\[Kappa]] Bar@"d"[\[Delta],s]**\[Gamma][\[Nu]]**"d"[\[Kappa],t];
		Lagd64F = "cledq"[p,r,s,t] Bar@"l"[i,p]**"e"[r] Bar@"d"[\[Alpha],s]**"q"[\[Alpha],i,t]
				+ "cquqd1"[p,r,s,t] Bar@"q"[\[Alpha],i,p]**"u"[\[Alpha],r] \[Epsilon]SU2L[i,j] Bar@"q"[\[Beta],j,s]**"d"[\[Beta],t]
				+ "cquqd8"[p,r,s,t] TSU3c[A,\[Alpha],\[Beta]] Bar@"q"[\[Alpha],i,p]**"u"[\[Beta],r] \[Epsilon]SU2L[i,j] TSU3c[A,\[Delta],\[Kappa]] Bar@"q"[\[Delta],j,s]**"d"[\[Kappa],t]
				+ "clequ1"[p,r,s,t] Bar@"l"[i,p]**"e"[r] \[Epsilon]SU2L[i,j] Bar@"q"[\[Alpha],j,s]**"u"[\[Alpha],t]
				+ "clequ3"[p,r,s,t] Bar@"l"[i,p]**\[Sigma][\[Nu],\[Rho]]**"e"[r] \[Epsilon]SU2L[i,j] Bar@"q"[\[Alpha],j,s]**\[Sigma][\[Nu],\[Rho]]**"u"[\[Alpha],t];
		Lagd6BNV = "cduq"[p,r,s,t] Bar@\[Epsilon]SU3c[\[Alpha],\[Beta],\[Delta]]Bar@\[Epsilon]SU2L[i,j] CConj@Bar@"d"[\[Alpha],p]**"u"[\[Beta],r] CConj@Bar@"q"[\[Delta],i,s]**"l"[j,t]
				 + "cqqu"[p,r,s,t] Bar@\[Epsilon]SU3c[\[Alpha],\[Beta],\[Delta]]Bar@\[Epsilon]SU2L[i,j] CConj@Bar@"q"[\[Alpha],i,p]**"q"[\[Beta],j,r] CConj@Bar@"u"[\[Delta],s]**"e"[t]
				 + "cqqq"[p,r,s,t] Bar@\[Epsilon]SU3c[\[Alpha],\[Beta],\[Delta]]Bar@\[Epsilon]SU2L[i,j] Bar@\[Epsilon]SU2L[k,m] CConj@Bar@"q"[\[Alpha],i,p]**"q"[\[Beta],k,r] CConj@Bar@"q"[\[Delta],m,s]**"l"[j,t]
				 + "cduu"[p,r,s,t] Bar@\[Epsilon]SU3c[\[Alpha],\[Beta],\[Delta]] CConj@Bar@"d"[\[Alpha],p]**"u"[\[Beta],r] CConj@Bar@"u"[\[Delta],s]**"e"[t];
		
		SMLag + PlusHc[Lagd5] + Lagd60F + Lagd62FH + Lagd64FH + PlusHc[Lagd62F + Lagd64F + Lagd6BNV]//RelabelIndices
	]
	]/.Join[ModParam,IndAlphabet]//ReleaseHold
]
