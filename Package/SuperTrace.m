(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`SuperTrace`*)


(* ::Subtitle:: *)
(*Paclet for calculating the covariant derivative expansion (CDE) for use in functional matching methods.*)


(* ::Chapter:: *)
(*Public:*)


(* ::Section:: *)
(*Scoping*)


PackageImport["GroupMagic`"]


(* ::Subsubsection:: *)
(*Exported*)


(* ::Subsubsection::Closed:: *)
(*Internal*)


PackageScope["PowerTypeSTr"]
PackageScope["LogTypeSTr"]
PackageScope["LoopMatch"]


PackageScope["EvanescentSTr"]


PackageScope["hScalar"]
PackageScope["lScalar"]
PackageScope["hFermion"]
PackageScope["lFermion"]
PackageScope["hVector"]
PackageScope["lVector"]
PackageScope["hGhost"]
PackageScope["lGhost"]
PackageScope["$FieldTypes"]


PackageScope["Gop"]
PackageScope["Xop"]
PackageScope["MassOp"]
PackageScope["GenericIndex"]
PackageScope["XOrders"]


PackageScope["HoldPart"]


PackageScope["LagrangianDofs"]


PackageScope["PowerTypeTraces"]


PackageScope["DeriveSubstitutions"]


PackageScope["FieldType"]
PackageScope["Fields"]


PackageScope["mIR"]


(* ::Section::Closed:: *)
(*Usage messages*)


PowerTypeTraces::usage= "PowerTypeTrace[lag, order] returns a list of all the propagator set that can contribute in the supertraces up to a given order and given a Lagrangian.";
PowerTypeSTr::usage= "PowerTypeSTr[lag, props, order] returns the Super trace term of \!\(\*SubscriptBox[\(L\), \(EFT\)]\) with the specified propagator types."; 


LoopMatch::usage=
	"LoopMatch[Lag] returns \!\(\*SubsuperscriptBox[\(L\), \(EFT\), \((1)\)]\) given a UV Lagrangian as input.";


(* ::Chapter:: *)
(*SuperTrace*)


(* ::Section:: *)
(*Internal functions*)


(* ::Subsubsection::Closed:: *)
(*Field type info*)


$FieldTypes= <|
	hScalar-> <|Type-> Scalar, Heavy-> True|>,
	lScalar-> <|Type-> Scalar, Heavy-> False|>,
	hFermion-> <|Type-> Fermion, Heavy-> True|>,
	lFermion-> <|Type-> Fermion, Heavy-> False|>,
	hVector-> <|Type-> Vector, Heavy-> True|>,
	lVector-> <|Type-> Vector, Heavy-> False|>,
	hGhost-> <|Type-> Ghost, Heavy-> True|>,
	lGhost-> <|Type-> Ghost, Heavy-> False|>
|>;


FieldType[f_]:= Switch[Lookup[GetFields[f], {Type, Heavy}]
	,{Scalar, True}, hScalar
	,{Scalar, False}, lScalar
	,{Fermion, True}, hFermion
	,{Fermion, False}, lFermion
	,{Vector, True}, hVector
	,{Vector, False}, lVector
	,{Ghost, True}, hGhost
	,{Ghost, False}, lGhost
]; 


(* ::Subsection::Closed:: *)
(*CDE expansion of propagators and X operators *)


(* ::Text:: *)
(*Assorted functions for the CDE expansion of propagators and X-terms.*)


(* ::Subsubsection::Closed:: *)
(*G operators from propagators*)


(* ::Text:: *)
(*G operators: Gop[\[Phi], {i1, i2}, {\[Mu],\[Nu]}, {\[Rho],...} ] is interpreted as D_{\[Rho],... } (G_\[Phi])_{i1,i2}^{\[Mu],\[Nu]}*)


Gop[_, _, {a_, a_}, _]:= 0;
Gop[_, _, {a_, b_}, List@ OrderlessPatternSequence[a_, b_, ___]]:= 0;


(* ::Text:: *)
(*Building the Subscript[Overscript[G, ~], \[Mu]\[Nu]]*)


GTilde[f_, inds_, \[Mu]_, \[Nu]_, ord_/; ord >= 2]:= Module[{cofs, n},
	cofs= Index[#, Lorentz]&/@ Unique@ Table[Symbol["\[Beta]"<> ToString@ n], {n, 1, ord-2}];
	(-1)(-I)^ord/(ord (ord -2)!) MomNCM[
		Gop[f, inds, {Index[\[Mu], Lorentz], Index[\[Nu], Lorentz]}, cofs], 
		MomNCM@@ (MomDev/@ cofs) ]
];
GTilde[f_, inds_, \[Mu]_, \[Nu]_, ord_/; ord < 2]= 0;


(* ::Text:: *)
(*Build the \[ScriptCapitalG]_\[Eta] for the tilde propagators Subscript[Overscript[\[CapitalDelta], ~], \[Eta]]=Subscript[\[CapitalDelta], \[Eta]]-Subscript[\[ScriptCapitalG], \[Eta]] *)


GopBos[f_, inds_, ord_]:= Module[{\[Alpha], \[Beta], \[Rho], n, generator, ind},
	ind= Index[generator, GenericIndex];
	-I MomNCM[MomAntiCommutator[LoopMom@ Index[\[Alpha], Lorentz], GTilde[f, inds, \[Alpha], \[Beta], ord]], MomDev@ Index[\[Beta], Lorentz] ] +
		Sum[MomNCM[GTilde[f, {inds[[1]], ind}, \[Alpha], \[Beta], n], GTilde[f, {ind, inds[[2]]}, \[Alpha], \[Rho], ord-n], 
			MomDev@ Index[\[Beta], Lorentz], MomDev@ Index[\[Rho], Lorentz] ], {n, 2, ord- 2}]
];
GopFerm[f_, inds_, ord_]:= Module[{\[Alpha], \[Beta]}, -I MomNCM[\[Gamma]@ \[Alpha], GTilde[f, inds, \[Alpha], \[Beta], ord], MomDev@ Index[\[Beta], Lorentz] ] ];


(* ::Subsubsection::Closed:: *)
(*Tilde expand propagators*)


PropTilde[f_, inds_, ord_]:= Module[{mass},
	mass= If[$FieldTypes[f, Heavy], MassOp[f, inds[[1]] ], 0]; 
	Switch[$FieldTypes[f, Type]
	,Fermion,
		PropTildeDirac[f, inds, mass, ord]
	,Vector,
		-PropTildeBos[f, inds, mass, ord]
	,_,
		PropTildeBos[f, inds, mass, ord]
	]
];


(* ::Text:: *)
(*Extracts Subscript[\!\(\*OverscriptBox[\(\[CapitalDelta]\), \(~\)]\), \[Eta]]=(Subscript[\[CapitalSigma], m=1] (1/Subscript[\[CapitalDelta], \[Eta]] Subscript[\[ScriptCapitalG], \[Eta]])^m) 1/Subscript[\[CapitalDelta], \[Eta]]  to a given order*)


(*Scalar propagator: 1/(P^2 -M^2)*)
PropTildeBos[f_, inds_, mass_, 0]:= Delta@@ inds InvProp[mass]^(-1);
PropTildeBos[f_, inds_, mass_, ord_]:= Module[{j, m, extraOrd, ords, count, indices, indNames},
	indNames= Index[#, GenericIndex]&/@ Unique@ Table[Symbol["$k"<> ToString@ m], {m, 1, ord/2 -1}];
	Sum[
		extraOrd= IntegerSets[ord -2m, m]+ 2;
		indices= Join[inds[[{1}]], indNames[[;; m-1]], inds[[{2}]]];
		Sum[
			count= 1;
			MomNCM[
				MomNCM@@ Table[
					MomNCM[InvProp[mass]^(-1), GopBos[f, indices[[{j, j+1}]], ords[[count++ ]] ] ]
					, {j, m}], 
				InvProp[mass]^(-1)]
		,{ords, extraOrd}]
	,{m, 1, ord/2}]
];


(*Dirac type propagator: 1/(\salshed P -M)*)
PropTildeDirac[f_, inds_, mass_, 0]:= 
	MomNCM[Delta@@ inds InvProp[mass]^(-1), (DiracProduct@ GammaM@ LoopMom+ mass)];
PropTildeDirac[f_, inds_, mass_, ord_]:= Module[{j, m, orders, ords, indices, indNames},
	indNames= Index[#, GenericIndex]&/@ Unique@ Table[Symbol["$k"<> ToString@ m], {m, 1, ord/2 -1}];
	Sum[
		orders= IntegerSets[ord -2m, m]+ 2;
		indices= Join[inds[[{1}]], indNames[[;; m-1]], inds[[{2}]]];
		Sum[MomNCM[
				MomNCM@@ Table[
					MomNCM[InvProp[mass]^(-1), (DiracProduct@ GammaM@ LoopMom+ mass), 
						GopFerm[f, indices[[{j, j+1}]], ords[[j]] ] ]
					, {j, m}],
				InvProp[mass]^(-1),
				(DiracProduct@ GammaM@ LoopMom+ mass)]
		,{ords, orders}]
	,{m, 1, ord/2}]
];


(* ::Subsubsection::Closed:: *)
(*Tilde Expand X*)


(* ::Text:: *)
(*X operators: Xop[{\[Phi]1, \[Phi]2}, {i1, i2}, {\[Mu],...}, {\[Nu],...} ] is interpreted as D_{\[Nu],... } X_{\[Phi]1_i1, \[Phi]2_i2}^{\[Mu],...}*)


XTilde[fields_, inds_, openDevs_, extraOrd_]:= Module[{expCofs, devCofs, indices, ords, n, m, xord},
	expCofs= Index[#, Lorentz]&/@ Unique@ Table[Symbol["\[Beta]"<> ToString@ n], {n, extraOrd}];
	devCofs= Index[#, Lorentz]&/@ Unique@ Table[Symbol["\[Rho]"<> ToString@ n], {n, openDevs}];
	indices= Index[#, GenericIndex]&/@ Unique@ Table[Symbol["$k"<> ToString@ n], {n, openDevs}];
	indices= Partition[Join[inds[[{1}]], indices, inds[[{2}]]], 2, 1];
	ContractDelta@ Sum[
		xord= First@ ords;
		(-I)^xord/ xord!  MomNCM[Xop[fields, First@ indices, devCofs, expCofs[[;;xord]] ],
			MomNCM@@ (MomDev/@ expCofs[[;; xord]]),
			MomNCM@@ Thread@ XTildeAux[Last@ fields, indices[[2;;]], devCofs, ords[[2;;]] ]
		]
	,{ords, IntegerSets[extraOrd, openDevs+ 1]} ]
];

XTildeAux[f_, inds_, \[Mu]_, 0]:= LoopMom@ \[Mu] Delta@@ inds;
XTildeAux[f_, inds_, Index[\[Mu]_Symbol, Lorentz], ord_Integer]:= Module[{\[Delta]}, 
	I MomNCM[GTilde[f, inds, \[Mu], \[Delta], ord], MomDev@ Index[\[Delta], Lorentz] ] 
];


(* ::Subsubsection::Closed:: *)
(*Tilde expand Function*)


(* ::Text:: *)
(*Apply tilde operation (CDE) on propagators and X operators [2012.08506, (2.15, 2.16, 2.26)]*)


TildeExpand@ expr_:= expr/. {
		PropTil:> PropTilde,
		XTil:> XTilde
	}


(* ::Subsection:: *)
(*Extract information from the Lagrangian *)


(* ::Text:: *)
(*Functions for deriving the X-term, mass, and FS tensor substitutions from a given Lagrangian.*)


(* ::Subsubsection::Closed:: *)
(*Lagrangian DoFs*)


(* ::Text:: *)
(*Gives an association with the DoFs of a Lagrangian for each field type .*)


LagrangianDofs[lag_]:= LagrangianDofs[lag]= Module[{fields}, 
	(*Get all fields from Lagrangian*)
	fields= DeleteDuplicates@ Cases[lag, (Field|FieldStrength)[f_, __]:> f, Infinity];
	(*Create association by field type*)
	fields= Association@@ 
		KeyValueMap[(#1-> Intersection[GetFieldsByProperty[#2], fields]&), $FieldTypes];
	(*Add conjugate DoFs*)
	LagrangianDofsAux/@ fields
 ]; 


(* ::Text:: *)
(*Extends list of fields with conjugate DoFs if they are not selfconjugate *)


LagrangianDofsAux@ fieldList_List:= LagrangianDofsAux/@ fieldList// Flatten;
LagrangianDofsAux@ field_Symbol:= If[GetFields[field, SelfConjugate], field, {field, Conj@ field}];


(* ::Text:: *)
(*"Conj" is used to describe the conjugated DoF.*)


(* ::Subsubsection::Closed:: *)
(*Substitution rules*)


Options[DeriveSubstitutions] = {EFTOrder -> 6};


DeriveSubstitutions[lag_, OptionsPattern[]]:= Module[
		{abelianVectors, fields, fieldDofs, effLag, Xords, sub, 
			f1, f2, ftype1, ftype2, i, j,k, temp, devs, lIndices, n, Xsub, Msub, Gsub, conj,\[Alpha],\[Beta],group,fluctuation},
	(*List of groups associated to vector fields*)
	abelianVectors= If[Length@GetGaugeGroups[]> 0,
			GetGaugeGroups[#,Abelian]&/@ Association@@ Reverse/@ Normal@ 
				Query[Transpose][GetGaugeGroups[]]@ Field,
			<||>
		];
	
	lIndices= Table[Symbol["$\[Mu]"<> ToString@ n], {n, 10}];
	
	(*Determine fields to accounting for complex dofs, see [2012.08506, (2.33)] *)
	fields= LagrangianDofs@ lag; 
	(*Association with field variable functions*)
	fieldDofs= FieldDoFs/@ fields;
	
	(*Default EFT order of empty X term is 100 (infinity) *)
	Xords= Association@@ Table[{f1, f2}-> 100, {f1, Keys@ $FieldTypes}, {f2, Keys@ $FieldTypes}];
	
	(*Determine X operator substitution rules*)
	Xsub= Flatten@ Table[
		(*To avoid the LO kinetic from the fluctuation operator*)
		(*NB. for the gauge field this does not work... nor for light fields*)
		effLag= lag - If[ftype1 === ftype2, KinOpLagrangian@@ DeleteCases[fields@ ftype1, _Conj], 0];
		(*If[ftype1 === ftype2 && ftype1 === lVector, effLag= lag- FreeLag@@ fields@ ftype1];*)
		sub= Table[
			(*temp= FluctuationOperator[effLag, Bar@ f1@ i, f2@ j, EFTOrder->OptionValue[EFTOrder]];*)
			(*Temporary fix*)
			If[ftype1 === lVector && ftype2 === lVector, 
				(*temp = If[!abelianVectors@ f1[i][[1]] && f1[i][[1]] === f2[j][[1]],
					(*Check sign!*)(*sign wrong*) 
						- 2 I $GaugeGroups[GroupFromRep[f1[i][[3, 1, 2]] ], Coupling][] *
							FieldStrength[f1[i][[1]], {Index[i, Lorentz], Index[j, Lorentz]}, 
								{f1[i][[3,1]], f2[j][[3,1]]}, {}]
						
					,
						0
					];*)
					
				(*Add gauge fixing in Feynman gauge, i.e. \[Xi]=1    -> add it in the step before in the future*)
				(*Print[{First@f1@i,First@f2@j}];*)
				If[First@f1@i===First@f2@j, effLag+= GaugeFixing@GreensSimplify[-(1/2)CD[\[Alpha], Bar@ (f1@i/.Index[_,Lorentz]->Index[\[Alpha],Lorentz])] CD[\[Beta], f2@i/.Index[_,Lorentz]->Index[\[Beta],Lorentz]]]];
				temp= -FluctuationOperator[effLag, Bar@ f1@ i, f2@ j, EFTOrder->OptionValue[EFTOrder]];
				(*Print[temp //NiceForm]*)
				
				(*temp+= -FluctuationOperator[effLag, Bar@ f1@ i, f2@ j];*)
			,	
				temp= -FluctuationOperator[effLag, Bar@ f1@ i, f2@ j, EFTOrder->OptionValue[EFTOrder]];
			];
			(*Put OpenCDs into vector form:*)
			temp= Expand[OpenCD@ {} temp]/. (OpenCD@ {} x_OpenCD-> x);
			devs= Max@ Cases[temp, OpenCD@ inds_:> Length@ inds, Infinity];
			temp= temp/. OpenCD@ inds_:> 
				UnitVector[devs +1, Length@ inds +1] Times@@ MapThread[Metric, {inds, lIndices[[;;Length@ inds]]}]
		, {f1, fieldDofs@ ftype1}, {f2, fieldDofs@ ftype2}];

		(*Organize one X substitution for every number of open devs*)
		If[!MatchQ[sub, {}| {{}..}],
			sub= Replace[sub, 0-> {0}, {2}];
			sub= Transpose[PadRight@ sub, {2, 3, 1}];
			Xords@ {ftype1, ftype2}= OperatorDimension/@ sub; 
			Table[
				(*The X terms with open derivatives are defined in terms of P= iD, and hence must compensate 
				with factors of (-i)*)
				temp= {Xop[{ftype1, ftype2}, {i_, j_}, Pattern[#, Blank[]]&/@ lIndices[[;;n-1]], devIndices_], 
					Power[-I, n-1] SymmetrizedCD[devIndices, sub[[n]]]};
				MapAt[(RelabelIndices[#, Unique-> True] &), RuleDelayed@@ temp, 2]
			, {n, Length@ sub}]
		, (*If operator does not occur in lag*)
			{Xop[{ftype1, ftype2}, __]-> 0}
		]
	, {ftype1, Keys@ $FieldTypes}, {ftype2, Keys@ $FieldTypes}];
	
	(*Determine mass substitutions*)
	Msub= Flatten@ Table[
		sub= Table[ 
			temp= GetFields[f, Mass];
			If[Length@ GetCouplings[temp][Indices]=== 1,
				temp@ i
			,
				temp[]
			]
		, {f, fields@ ftype1/. Conj@ x_-> x}];
		If[Length@ sub > 0, 
			temp= Pattern[i, Blank[]]; (*Indirect use of pattern required to prevent local renaming... Just great.*)
			{
				MassOp[ftype1, temp] Power[InvProp@ MassOp[ftype1, temp ], n_]-> 
					DiagonalMatrix[sub Power[InvProp/@sub ,n]],
				Power[MassOp[ftype1, temp], m_] Power[InvProp@ MassOp[ftype1, temp ], n_]-> 
					DiagonalMatrix[Power[sub, m] Power[InvProp/@sub ,n]],
				Power[InvProp@ MassOp[ftype1, temp ], n_]-> 
					DiagonalMatrix[Power[InvProp/@sub ,n]],
				MassOp[ftype1, temp] -> 
					DiagonalMatrix@ sub,
				Power[MassOp[ftype1, temp], m_] -> 
					DiagonalMatrix@ Power[sub, m]
			}
		, (*If operator does not occur in lag*)
			{}
		]
	, {ftype1, {hScalar, hFermion, hVector, hGhost}}]; (*NB. Loop only over heavy DoFs*)
	
	(*Determine G substitutions (field-strength)*)
	Gsub= Flatten@ Table[
		(*Construct the field strength tensors of the field representation.*)
		sub= Table[ 
			If[MatchQ[f, _Conj],
				f= First@ f;
				CreateGTensor[GetFields[f, Indices], GetFields[f, Charges], True][lIndices[[1]], lIndices[[2]], i, j]
			,
				CreateGTensor[GetFields[f, Indices], GetFields[f, Charges], False][lIndices[[1]], lIndices[[2]], i, j] 
			]
		, {f, fields@ ftype1}];
		
		(*Include Lorenz index for vectors*)
		If[MatchQ[ftype1, lVector|hVector], 
			sub *= Metric[i, j];
		];

		(*Again with some indirect use of patterns. This is straight-forward and intuitive.*)
		If[Length@ sub > 0,
			Gop[ftype1, Pattern[#, Blank[]]&/@ {i, j}, Pattern[#, Blank[]]&/@ lIndices[[;;2]], devIndices_]-> 
				DiagonalMatrix@ SymmetrizedCD[devIndices, sub]
		, (*If operator does not occur in lag*)
			{Gop[ftype1, __]-> 0}
		]
	, {ftype1, Keys@ $FieldTypes}];
	
	{Xords, (*Dispatch@*) Join[Xsub, Msub, Gsub]}
];


(* ::Text:: *)
(*Auxiliary function for constructing the relevant DoFs of a field with indices to go in functional derivatives*)


FieldDoFs[fields_List]:= FieldDoFs/@ fields;
FieldDoFs[Conj@ f_Symbol]:= FieldDoFs[f, True];
FieldDoFs[f_Symbol]:= FieldDoFs[f, False];
FieldDoFs[f_Symbol, conj_]:= Block[{props= GetFields[f], inds, i},
	inds= Sequence@@ ConstantArray[i, Length@ props@ Indices + If[GetFields[f, Type]=== Vector, 1, 0]];
	ReplacePart[Switch[{props@ Type, conj}
		,{Fermion, False},
			Function[i, Evaluate@ f@ inds]
		,{Fermion, True},
			Function[i, Evaluate@ CConj@ f@ inds]
		,{_, False},
			Function[i, Evaluate@ f@ inds]
		,{_, True},
			Function[i, Evaluate@ Bar@ f@ inds]
	], {1}-> i]
];


(* ::Subsubsection::Closed:: *)
(*Make field-strength associated to field*)


(* ::Text:: *)
(*Constructs the field strength tensor associated with a set of index representations and charges*)


CreateGTensor[reps_List, charges_List, conj_]:= Module[{i, j, \[Mu], \[Nu], gaugeInds, 
		flavorInds, flavorDeltas, rep, rep2, abelFS, nonAbelFS, gaugeCharges, charge, group},
	(*Global*)
	gaugeInds= Cases[reps, _? (MemberQ[Keys@$GaugeGroups,GroupFromRep@ #] &)];
	gaugeCharges= Cases[charges, _? (MemberQ[Keys@$GaugeGroups,Head@ #] &)];
	flavorInds= Complement[Join[reps, charges], gaugeInds, gaugeCharges];
	flavorDeltas= Product[Delta[Index[i, rep], Index[j, rep]], {rep, flavorInds}];
	
	(*Abelian*)
	abelFS= Product[Delta[Index[i, rep], Index[j, rep]], {rep, gaugeInds}]*
		Sum[
			{group, charge}= {Head@ charge, First@ charge};
			If[conj, -1, 1] 
			$GaugeGroups[group, Coupling][]
			charge FieldStrength[$GaugeGroups[group, Field], {\[Mu], \[Nu]}, {}, {}]
		, {charge, gaugeCharges}];
	
	(*Non-Abelian*)
	nonAbelFS= Sum[
		group= GroupFromRep@ rep;
		$GaugeGroups[group, Coupling][] 
		Product[Delta[Index[i, rep2], Index[j, rep2]], {rep2, DeleteCases[gaugeInds, rep]}]*
			FieldStrength[$GaugeGroups[group, Field], {\[Mu], \[Nu]}, 
				If[conj, 
					{Bar@ Index[i, rep], Index[j, rep]}
				,
					{Index[i, rep], Bar@ Index[j, rep]}
				]
			, {}]
	, {rep, gaugeInds}];
	
	Function@@ {{\[Mu], \[Nu], i, j}, flavorDeltas(nonAbelFS+ abelFS)}
];


(* ::Section:: *)
(*SuperTrace functions *)


(* ::Subsection::Closed:: *)
(*Determine power type traces*)


(* ::Text:: *)
(*To determine all the kinds of power type tracers labelled by their propagators*)


PowerTypeTraces[{order_Integer}, opt___]:= PowerTypeTraces[order, opt];


PowerTypeTraces[order_Integer, lightOnly_:False]:= Module[{possibilities, seed, temp, Xords},
	Xords= $currentXdims;
	
	(*Recursively determines candidates for traces with order \[LessEqual] order*)
	possibilities= Flatten[Last@ Reap[
		(*Determines whether to only consider light traces or traces with at least one heavy field*)
		If[lightOnly,
			seed= Sow@ {{lScalar}, {lFermion}, {lVector}};
			While[(Length@ seed> 0),
				temp= Flatten/@ Tuples[{seed, {lScalar, lFermion, lVector}}];
				seed= Sow@ DeleteCases[temp, _? (Total[Min/@ BlockMap[Xords, #, 2, 1]]>= order&), {1}];
			];
		,
			seed= Sow@ {{hScalar}, {hFermion}, {hVector}, {hGhost}};
			While[(Length@ seed> 0),
				temp= Flatten/@ Tuples[{seed, {hScalar, lScalar, hFermion, lFermion, hVector, lVector, hGhost, lGhost}}];
				seed= Sow@ DeleteCases[temp, _? (Total[Min/@ BlockMap[Xords, #, 2, 1]]>= order&), {1}];
			];
		];
	], 2];
	
	
	(*Eliminates traces with order > order*)
	possibilities= DeleteCases[possibilities, 
		_? (Total[Min/@ BlockMap[Xords, #, 2, 1]]+ Min@ Xords@ #[[{-1, 1}]] > order&), {1}];
	
	(*Delete duplicates under cyclic permutations*)
	DeleteDuplicatesBy[possibilities, (First@ Sort@ NestList[RotateLeft, #, Length@# - 1] &)]
];


(* ::Subsection::Closed:: *)
(*Ancillary functions*)


(* ::Subsubsection::Closed:: *)
(*Supertrace setup *)


(* ::Text:: *)
(*CDE expansion of a list of propagators and X-terms constituting a supertrace*)


SuperTraceCDE@ expr_List:= ContractMetric[
		ExtractMomenta@ CollectGammaMatrices@ PerformMomDerivatives@ ContractDelta@ (MomNCM@@ TildeExpand@ expr),
		Expand-> False];


(* ::Text:: *)
(*Symmetry factor of power-type supertrace (depends on the type of propagators).*)


PowerTypeSymmetryFactor[props_]:= 
	Length@ DeleteDuplicates@ NestList[RotateRight, props, Length@ props- 1]/ Length@ props;


(* ::Subsubsection::Closed:: *)
(*Matrix handling *)


(* ::Text:: *)
(*To select only submatrices of the X operators, G terms and propagators, corresponding to particular fields. HoldPart (later to be replaced with part) is used to because Part always evaluates.  *)


PickParts[expr_MatrixNCM, parts_]:= Module[{i= 1, len= Length@ parts},
	Replace[expr, {
			op_Xop:> HoldPart[op, parts[[i++]], parts[[Mod[i, len, 1] ]] ],
			op:Except[_DiracProduct]:> HoldPart[op, parts[[i]], parts[[i]]] 
		}, {1}]
];
PickParts[expr_, parts_]:= expr/. x_MatrixNCM:> PickParts[x, parts];


(* ::Subsubsection::Closed:: *)
(*Flavors on heavy masses*)


(* ::Text:: *)
(*Function that takes expression from MatrixNCM to MomNCM form. It first separates out all flavor indices associated with the heavy masses, to ensure there is no conflict from triple-repeated indices*)


MatrixToMomNCM@ ncm_MatrixNCM:= Module[{deltas, indTypes, massInds, out, replacements},
	(*If no mass indices return*)
	massInds= Cases[ncm, InvProp[Coupling[_, {ind_Index}, 0]]:> ind, All];
	If[Length@ massInds === 0, Return[MomNCM@@ ncm]];
	
	(*Find all deltas of the mass index types*)
	indTypes= DeleteDuplicates[massInds/. Index[_, type_]-> type];
	{deltas, out}= SelectAndDelteCases[ncm, 
		delt:Delta[Index[_, Alternatives@@ indTypes], _]:> List@@ delt, All];
	
	(*Determine what delta chains contain the mass indices*)
	deltas= deltas//. {OrderlessPatternSequence[{a___, x_, b___}, {c___, x_, d___}, rest___]}:> 
		{{x, x, a, b, c, d}, rest};
	
	(*The mass chain indices are replaced in output; the others are reinstated as contracted deltas*)
	{replacements, deltas}= SelectAndDelteCases[deltas, 
		inds_?(ContainsAny[massInds])];
	replacements= (Thread@ Rule[#[[2;;]],#[[1]]] &)/@ DeleteDuplicates/@ replacements// Flatten;
	Product[
			delt= Tally@ delt;  
			If[Length[temp= DeleteCases[delt, {_, 2}]] === 0,
				DimRep@ delt[[1, 1, -1]]
			,
				Delta@@ temp[[;;, 1]]
			] 
		,{delt, deltas}]* (MomNCM@@ out/. replacements)
]


MatrixToMomNCM@ expr_:= expr/. ncm_MatrixNCM:> MatrixToMomNCM@ ncm;


(* ::Subsection::Closed:: *)
(*Power-type supertraces*)


(* ::Subsubsection::Closed:: *)
(*CDE setup   *)


(* ::Text:: *)
(*Function for making CDE templates for the power-type traces providing also the overall loop factor and the options for X orders based on the current Lagrangian*)


CDETemplates[propagatorTypes_List]:= Module[{inds, preFact, temp, traceXords, traceTemplate, len= Length@ propagatorTypes},
	(*Determines Supertrace sign and symmetry factor*)
	preFact= -I/2 hbar PowerTypeSymmetryFactor@ propagatorTypes Switch[First@ propagatorTypes,
		hScalar | lScalar | hVector  | lVector,  +1,
		hFermion | lFermion | hGhost | lGhost, -1
	];
	
	(*Construct all combinations of no. of open derivatives on the X operators with min dimension of contribution.
		List with {<set of No. of open devs for the Xs>, <total order of all those Xs>}*)
	temp= Table[$currentXdims@ propagatorTypes[[{n, Mod[n +1, len, 1]}]], {n, len}];
	traceXords= Tuples[Range/@ Length/@ temp];
	traceXords= Table[
			{openDevs- 1, Sum[temp[[n, openDevs[[n]]]], {n, len}]}
		,{openDevs, traceXords}];
	
	(*Defines an index label for every propagator*)
	inds= Index[#, GenericIndex]&/@ Table[Symbol["$i"<> ToString@ n], {n, 2 len}];
	(*Make template for the trace*)
	traceTemplate= Flatten@ Table[
			{PropTil[propagatorTypes[[n]], inds[[{2n-1, 2n}]], 0],
			XTil[propagatorTypes[[{n, Mod[n +1, len, 1]}]], inds[[{2n, Mod[2n +1, 2len, 1]}]], 0, 0]}
		, {n, len}];
	{preFact, traceXords, traceTemplate}
]


(* ::Text:: *)
(*Traces fermion line if necessary and performs Dirac product simplifications.*)


CloseFermionLoop[propagators_, expr_]:= Module[{out= ReleaseMomNCM@ expr},
	out= If[MatchQ[First@ propagators, hFermion| lFermion],
			FermionTrace@ out,
			out
		];
	ContractMetric@ RefineDiracProducts@ CanonizeSpinorLines@ out
]


(* ::Subsubsection::Closed:: *)
(*Power-type matching function*)


(* ::Text:: *)
(*This is the core function that computes a specific power-type super trace given Lagrangian and a list of propagator types. Option pattern can be used to restrict loop to certain field DoFs. *)


Options[PowerTypeSTr]= {
	Fields-> All,
	Pattern-> _List
	};


PowerTypeSTr[propagatorTypes_List, eftOrder:(_Integer|{_Integer}), OptionsPattern[]]:= Module[{expr, extraOrds, inds, len, maxOrd, n, openDevs, 
	preFact, temp, traceTemplate, Xs, traceXords},
	
	maxOrd= If[Head@ eftOrder === List, 
			First@ eftOrder,
			eftOrder
		];
	len= Length@ propagatorTypes;
	
	{preFact, traceXords, traceTemplate}= CDETemplates@ propagatorTypes;

	(*Sum over the number of open derivatives*)
	Sum[
		expr= traceTemplate;
		expr[[2;; ;;2, 3]]= First@ openDevs;
		(*Sum over the ways of distributing the CDE orders*)
		expr= Sum[Catch[
			(*For debugging. Remove all CDs not compatible with Pattern*)
			If[!MatchQ[OptionValue@ Pattern]@ extraOrds, Throw@ 0;]; 
			(*CDE expansion of the term*)
			temp= expr; temp[[;;-2, -1]]+= extraOrds;
			temp= SuperTraceCDE@ temp/. MomNCM-> MatrixNCM;
			(*Substitute in the model specific terms*)
			temp= If[OptionValue@ Fields === All, 
				Tr[temp/. Index[a_, GenericIndex]-> a/. $currentXsubs]
			, (*$currentXsubs \[Rule] FS in Gop*)
				Tr[PickParts[temp/. Index[a_, GenericIndex]-> a, OptionValue@ Fields]/. $currentXsubs/. HoldPart-> Part]
			];
			temp= temp// ExpandMatrixNCM// MatrixToMomNCM;
			temp= temp/. Tr@ 0-> 0/. x:Alternatives[_InvProp, Power[_InvProp, _]]:> Commutative@ x/. Commutative@ x_-> x;  
			
			(*Eliminate terms with too high of an eftOrder*)
			temp= SeriesEFT[temp, EFTOrder-> maxOrd];
			(*SplitSymmetrizedCDs@ RelabelIndices@ Contract@ CollectGammaMatrices@ temp *)
			SplitSymmetrizedCDs@ RelabelIndices@ temp 
			]
		, {order, maxOrd}, {extraOrds, IntegerSets[order -openDevs[[-1]], 2 len -1]}];
		
		expr= CloseFermionLoop[propagatorTypes, expr];
				
		(*Loop integrate*)
		expr= EpsExpand@ LoopIntegrate@ expr;
		expr= CollectGammaMatrices@ Contract@ ReplaceHeavyEOM[expr, EFTOrder-> eftOrder];
		expr= ContractDelta@ ContractCGs@ SeparateGeneratorsFromFS@ expr; 
		RelabelIndices[preFact expr]
		 
	,{openDevs, traceXords}]
];


(* ::Subsubsection::Closed:: *)
(*Evanescent supertrace*)


(* ::Text:: *)
(*This is the core function that computes a specific power-type super trace given Lagrangian and a list of propagator types. Option pattern can be used to restrict loop to certain field DoFs. *)


Options[EvanescentSTr]= {
	Fields-> All,
	Pattern-> _List
	};


EvanescentSTr[propagatorTypes_List, eftOrder:(_Integer|{_Integer}), OptionsPattern[]]:= Module[{expr, extraOrds, inds, len, maxOrd, n, openDevs, 
	preFact, temp, traceTemplate, Xs, traceXords},
	
	maxOrd= If[Head@ eftOrder === List, 
			First@ eftOrder,
			eftOrder
		];
	len= Length@ propagatorTypes;
	
	{preFact, traceXords, traceTemplate}= CDETemplates@ propagatorTypes;
	
	(*Sum over the number of open derivatives*)
	Sum[
		expr= traceTemplate;
		expr[[2;; ;;2, 3]]= First@ openDevs;
		(*Sum over the ways of distributing the CDE orders*)
		expr= Sum[Catch[
			(*For debugging. Remove all CDs not compatible with Pattern*)
			If[!MatchQ[OptionValue@ Pattern]@ extraOrds, Throw@ 0;]; 
			(*CDE expansion of the term*)
			temp= expr; temp[[;;-2, -1]]+= extraOrds;
			temp= SuperTraceCDE@ temp/. MomNCM-> MatrixNCM;
			(*Substitute in the model specific terms*)
			temp= If[OptionValue@ Fields === All, 
				Tr[temp/. Index[a_, GenericIndex]-> a/. $currentXsubs]
			, (*$currentXsubs \[Rule] FS in Gop*)
				Tr[PickParts[temp/. Index[a_, GenericIndex]-> a, OptionValue@ Fields]/. $currentXsubs/. HoldPart-> Part]
			]/. MatrixNCM-> MomNCM;
			temp= temp/. Tr@ 0-> 0/. x:Alternatives[_InvProp, Power[_InvProp, _]]:> Commutative@ x/. Commutative@ x_-> x;  
			
			(*Eliminate terms with too high of an eftOrder*)
			temp= SeriesEFT[temp, EFTOrder-> maxOrd];
			
			(*Select evanescent contributions*)
			temp= Coefficient[EvenBetterExpand@ temp, ev];
			
			(*Implement IR mass regulator*)
			temp= Coefficient[temp, InvProp[0]^-2]; 
			(*temp= temp/. InvProp@ 0-> InvProp@ mIR;*)
			
			SplitSymmetrizedCDs@ RelabelIndices@ temp 
			]
		, {order, maxOrd}, {extraOrds, IntegerSets[order -openDevs[[-1]], 2 len -1]}];
		
		expr= CloseFermionLoop[propagatorTypes, expr];
		
		(*Loop integrate: epsilon pole from 1/(l^2- mIR)^2*)
		expr= EpsExpand[I/\[Epsilon] expr//Expand];
		
		expr= ContractMetric@ CollectGammaMatrices@ expr;
		expr= ContractDelta@ ContractCGs@ SeparateGeneratorsFromFS@ expr; 
		
		expr= RelabelIndices[preFact expr];
		
		(*Reduce multiple Gamma Products *)
		EpsExpand[expr//Expand//GammaReduction]
		
	,{openDevs, traceXords}]
]


(* ::Subsection::Closed:: *)
(*Log-type supertrace*)


(* ::Text:: *)
(*This is the core function that computes a specific log-type super trace given Lagrangian and a heavy field type. Option pattern can be used to restrict loop to certain field DoFs. *)


(*NB implement test to check if field type is part of Lagrangian: if so return 0.*)


Options[LogTypeSTr]= {Fields-> All};


(*Inclusive*)
LogTypeSTr[propType_, order_Integer, opt:OptionsPattern[]]:= Module[{m}, 
	Sum[LogTypeSTr[propType, {m}, opt], {m, order}]
];

(*Exclusive*)
LogTypeSTr[propType_, {order_Integer}, OptionsPattern[]]:= Module[
		{expr, ind, preFact},
	ind= Index[Symbol@ "$i1", GenericIndex];
	
	(*Overall factor determined by boson/fermion, \[Xi] integral, and Lorentz trace.*)
	(*crosschecked*)
	preFact= I/2 hbar Switch[propType,
		hScalar, 2 MassOp[hScalar, ind]^2,
		hFermion, - MassOp[hFermion, ind],
		hVector, -2 MassOp[hVector, ind]^2,
		hGhost, -2 MassOp[hGhost, ind]^2
	]/ (order- 4+ 2\[Epsilon]);
	
	(*CDE of the propagator*)
	expr= MomNCM[preFact, #]&/@ SuperTraceCDE@ {PropTil[propType, {ind, ind}, order]}/. MomNCM-> MatrixNCM;
	
	(*Substitute in the model specific terms*)
	expr= If[OptionValue@ Fields === All, 
		Tr[expr/. Index[a_, GenericIndex]-> a/. $currentXsubs]
	,
		Tr[PickParts[expr/. Index[a_, GenericIndex]-> a, OptionValue@ Fields]/. $currentXsubs/. HoldPart-> Part]
	];
	expr= expr// ExpandMatrixNCM// MatrixToMomNCM;

	(*Further simplifications and spinor trace*)
	expr= expr/. Tr@ 0-> 0/. x:Alternatives[_InvProp, Power[_InvProp, _]]:> Commutative@ x/. Commutative@ x_-> x;
	
	(*expr= RelabelIndices@ Contract@ CollectGammaMatrices@ expr //Timing;*)
	
	expr = Contract@ expr;
	(*expr= Contract@ CollectGammaMatrices@ expr;*)
(*	If[MatchQ[propType, hFermion],
		expr= Contract@ FermionTrace@ expr; 
	];*)
	
	expr= CloseFermionLoop[{propType}, expr];
	
(*	expr= If[MatchQ[propType, hFermion| lFermion],
			FermionTrace@ expr,
			ReleaseMomNCM@ expr
		];*)
	
	(*Loop integral*)
	expr= EvaluateLoopFunctions@ SplitSymmetrizedCDs@ EpsExpand@ LoopIntegrate[expr, LogTerm-> True];
	expr= ContractDelta@ ContractCGs@ SeparateGeneratorsFromFS@ expr; 
	RelabelIndices@ expr
]


(* ::Section:: *)
(*One-loop matching*)


(* ::Subsubsection::Closed:: *)
(*All one-loop contributions*)


(* ::Text:: *)
(*The full 1-loop matching function evaluating all log- and power-type traces relevant to the Lagrangian.*)


Options[LoopMatch]= {
	EFTOrder -> 6,
	Verbose -> True 
	};


LoopMatch[opt:OptionsPattern[]]? OptionsCheck:= Module[
		{field, fields, out, powerTraces, i=0},
	out= OptionalMonitor[OptionValue@ Verbose,
			Sum[
				If[Length@ GetFieldsByProperty@ $FieldTypes@ field > 0,
					LogTypeSTr[field, OptionValue@ EFTOrder],
					0
				]
			, {field, {hScalar, hFermion, hVector, hGhost}}]
		, StringForm["Evaluating log-type supertrace: `1`", field/. fieldFormat] ];
	
	powerTraces= PowerTypeTraces[OptionValue@ EFTOrder];
	out+= OptionalMonitor[OptionValue@ Verbose,
			Sum[i++;
				PowerTypeSTr[fields, OptionValue@ EFTOrder, 
					Sequence@@ FilterRules[{opt}, Options@ PowerTypeSTr] ]
			, {fields, powerTraces}]
		, StringForm["Evaluating power-type supertrace: `1` \t (`2` / `3`)", 
			fields/. fieldFormat, i, Length@ powerTraces] ];
	
	out
];


fieldFormat= {hScalar-> "\[CapitalPhi]", lScalar-> "\[Phi]", hFermion-> "\[CapitalPsi]", lFermion-> "\[Psi]", hVector-> "V", lVector-> "A", lGhost-> "cA", hGhost-> "cV"};
