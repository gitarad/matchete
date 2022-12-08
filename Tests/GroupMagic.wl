(* ::Package:: *)

(* ::Title:: *)
(*GroupMagic test unit*)


(* ::Section:: *)
(* Group Magic Tests*)


ResetAll[]


(* ::Subsection:: *)
(*Define Groups *)


(* ::Subsubsection::Closed:: *)
(*Setup groups and representations *)


VerificationTest[
	DefineGroup[SU2, SU@2];
	DefineRepresentation[SU2@ fund, SU2, {1}];
	DefineRepresentation[SU2@ adj, SU2, {2}]
,
	Null
,
	TestID-> "Define SU(2) group"
]


VerificationTest[
	DefineGroup[SU3, SU@ 3];
	DefineRepresentation[SU3@ fund, SU3, {1, 0}];
	DefineRepresentation[SU3@ adj, SU3, {1, 1}];
	DefineRepresentation[SU3@ S2, SU3, {2, 0}]
,
	Null
,
	TestID-> "Define SU(3) group"
]


(* ::Text:: *)
(*No error on duplicate input*)


VerificationTest[
	DefineRepresentation[SU3@ fund, SU3, {1, 0}]
,
	Null
,
	TestID-> "DuplicateRepresentation"
]


(* ::Text:: *)
(*Error on reuse of representation name*)


VerificationTest[
	CheckAbort[DefineRepresentation[SU3@ fund, SU3, {2, 1}], True]
,
	True
,
	DefineRepresentation::repinuse
,
	TestID-> "Representation name already in use"
]


(* ::Subsubsection::Closed:: *)
(*Add CGs*)


VerificationTest[
	DefineCG[\[Delta]@ SU2@ adj, {SU2@ adj, SU2@ adj}, First@InvariantTensors[SU@2, {{2},{2}}]];
	DefineCG[\[Delta]@ SU2@ fund, {SU2@ fund, Bar@ SU2@ fund}, First@InvariantTensors[SU@2, {CRep@{1},{1}}]];
	DefineCG[t@ SU2@ fund, {SU2@ adj, SU2@ fund, Bar@ SU2@ fund}, Generators[SU@ 2, {1}]];
	DefineCG[t@ SU2@ adj, {SU2@ adj, SU2@ adj, SU2@ adj}, Generators[SU@ 2, {2}]]
,
	Null
,
	TestID-> "Define SU(2) CGs"
]


VerificationTest[
	DefineCG[\[Delta]@ SU3@ adj, {SU3@ adj, SU3@ adj}, First@ InvariantTensors[SU@ 3, {{1,1}, {1,1}}]];
	DefineCG[f3, {SU3@ adj, SU3@ adj, SU3@ adj}, StructureConstants@ SU@ 3];
	DefineCG[d3, {SU3@ adj, SU3@ adj, SU3@ adj}, First@ 
		InvariantTensors[SU@ 3, {{1, 1}, {1, 1}, {1, 1}}, SymmetricIndices-> {1, 2, 3}]];
	DefineCG[\[Delta]@ SU3@ fund, {SU3@ fund, Bar@ SU3@ fund}, First@ InvariantTensors[SU@ 3, {CRep@ {1, 0}, {1, 0}}]];
	DefineCG[t@ SU3@ fund, {SU3@ adj, SU3@ fund, Bar@ SU3@ fund}, Generators[SU@ 3, {1, 0}]];
	DefineCG[cS2, {SU3@ S2, Bar@ SU3@ fund, Bar@ SU3@ fund}, 
		First@ InvariantTensors[SU@ 3, {CRep@ {2, 0}, {1, 0}, {1, 0}}, Normalization-> 6]]
,
	Null
,
	TestID-> "Define SU(3) CGs"
]


(* ::Text:: *)
(*Error on reuse of representation name*)


VerificationTest[
	CheckAbort[
		DefineCG[\[Delta]@ SU2@ adj, {SU3@ adj, SU3@ adj}, First@ InvariantTensors[SU@ 3, {{1,1}, {1,1}}]];
	, True]
,
	True
,
	DefineCG::cginuse
,
	TestID-> "CG name already in use"
]


(* ::Text:: *)
(*Error when the tensor is not invariant under the group*)


VerificationTest[
	CheckAbort[
		DefineCG[eps@ SU2L, {SU2@ fund, SU2@ fund}, First@ InvariantTensors[SU@2, {CRep@{1}, {1}}]];
	, True]
,
	True
,
	DefineCG::notInvariant
,
	TestID-> "CG not invariant 1"
]


VerificationTest[
	CheckAbort[
		Block[{temp, new},
			temp= Generators[SU@3, {1,1}]; temp[[1, 1, 1]]= 1;
			DefineCG[new, {SU3@ adj, SU3@ adj, SU3@ adj}, temp];
		]
	, True]
,
	True
,
	DefineCG::notInvariant
,
	TestID-> "CG not invariant 2"
]


(* ::Text:: *)
(*Add composite CGs *)


VerificationTest[
	DefineCompositeCG[Tr4, {t@ SU3@ fund, t@ SU3@ fund, t@ SU3@ fund, t@ SU3@ fund}, 
		{{a, i, j}, {b, j, k}, {c, k, l}, {d, l, i}}];
	DefineCompositeCG[t2asym, {t@ SU2@ fund, t@ SU2@ adj}, 
		{{a, i, j}, {a, b, c}}]
,
	Null
,
	TestID-> "Define composite CGs"
]


(* ::Subsection:: *)
(*CG contractions*)


(* ::Subsubsection::Closed:: *)
(*SU(2) contractions*)


VerificationTest[
	CG[\[Delta]@ SU2@ fund, {i, j}] CG[\[Delta]@ SU2@ fund, {j, k}]//Echo // ContractCGs
,
	CG[\[Delta]@ SU2@ fund, {i, k}]
,
	TestID-> "CGContractions: SU(2) \[Delta] contractions 1"
]


VerificationTest[
	CG[\[Delta]@ SU2@ adj, {i, j}] CG[\[Delta]@ SU2@ adj, {j, i}]// ContractCGs
,
	3
,
	TestID-> "CGContractions: SU(2) \[Delta] contractions 3"
]


VerificationTest[
	CG[\[Delta]@ SU2@ fund, {i, j}] CG[\[Delta]@ SU2@ fund, {j, k}] CG[\[Delta]@ SU2@ adj, {i, j}]// ContractCGs
,
	CG[\[Delta]@ SU2@ fund, {i, k}] CG[\[Delta]@ SU2@ adj, {i, j}]
,
	TestID-> "CGContractions: SU(2) disjoint contractions"
]


VerificationTest[
	CG[t@ SU2@ adj, {a, b, c}] CG[t@ SU2@ adj, {a, c, d}]// ContractCGs
,
	2 CG[\[Delta]@ SU2@ adj, {b, d}]
,
	TestID-> "CGContractions: SU(2) adjoint quadratic Casimir "
]


VerificationTest[
	CG[t@ SU2@ fund, {a, i, j}] CG[t@ SU2@ fund, {b, j, i}]// ContractCGs
,
	1/2 CG[\[Delta]@ SU2@ adj, {a, b}]
,
	TestID-> "CGContractions: SU(2) fundamental Dynkin index"
]


VerificationTest[
	CG[t@ SU2@ fund, {a, i, j}] CG[t@ SU2@ fund, {a, k, l}]// ContractCGs
,
	1/2 CG[\[Delta]@ SU2@ fund, {i, l}] CG[\[Delta]@ SU2@ fund, {k, j}] - 
		1/4 CG[\[Delta]@ SU2@ fund, {i, j}] CG[\[Delta]@ SU2@ fund, {k, l}]
,
	TestID-> "CGContractions: SU(2) fundamental Fierz identity"
]


(* ::Subsubsection::Closed:: *)
(*SU(3) contractions*)


VerificationTest[
	CG[f3, {a, b, c}] CG[f3, {d, b, c}]// ContractCGs
,
	3 CG[\[Delta]@ SU3@ adj, {a, d}]
,
	TestID-> "CGContractions: SU(3) adjoint quadratic Casimir "
]


VerificationTest[
	CG[t@ SU3@ fund, {a, i, j}] CG[t@ SU3@ fund, {b, j, i}]// ContractCGs
,
	1/2 CG[\[Delta]@ SU3@ adj, {a, b}]
,
	TestID-> "CGContractions: SU(3) fundamental Dynkin index"
]


VerificationTest[
	CG[t@ SU3@ fund, {a, i, j}] CG[t@ SU3@ fund, {a, k, l}]// ContractCGs
,
	1/2 CG[\[Delta]@ SU3@ fund, {i, l}] CG[\[Delta]@ SU3@ fund, {k, j}] - 
		1/6 CG[\[Delta]@ SU3@ fund, {i, j}] CG[\[Delta]@ SU3@ fund, {k, l}]
,
	TestID-> "CGContractions: SU(3) fundamental Fierz identity"
]


(* ::Text:: *)
(*Test for decomposing adjoint generator *)


VerificationTest[
	DefineCG[t@ SU3@ adj, {SU3@ adj, SU3@ adj, SU3@ adj}, Generators[SU@3, {1, 1}]];
	CG[\[Delta]@ SU3@ adj, {a, d}]CG[t@ SU3@ adj, {d, b, c}]// ContractCGs
,
	-I CG[f3, {b, c, a}]
,
	TestID-> "CGContractions: SU(3) adjoint generator to structure constant" 	 
]


(* ::Subsubsection::Closed:: *)
(*Mixed contractions*)


(* ::Text:: *)
(*Sum of CGs *)


VerificationTest[
	Log@ 3 a CG[t@ SU3@ fund, {a, i, j}] CG[t@ SU3@ fund, {b, j, i}] + 
		5 CG[\[Delta]@ SU3@ adj, {a, d}] CG[\[Delta]@ SU3@ adj, {b, d}]// ContractCGs
,
	Log@ 3 a/2 CG[\[Delta]@ SU3@ adj, {a, b}] + 5 CG[\[Delta]@ SU3@ adj, {a, b}]
,
	TestID-> "CGContractions: Expression with a sum of weighted CG contractions" 	 
]


(* ::Text:: *)
(*Multiple groups in a single term*)


VerificationTest[
	Log@3 CG[\[Delta]@ SU2@ fund, {i, j}] CG[\[Delta]@ SU2@ fund, {j, k}] CG[f3, {a, c, d}] CG[f3, {b, c, d}]// ContractCGs
,
	3 Log@ 3 CG[\[Delta]@ SU2@ fund, {i, k}]CG[\[Delta]@ SU3@ adj, {a, b}]
,
	TestID-> "CGContractions: Mixed group contraction"
]


(* ::Subsubsection::Closed:: *)
(*More advanced contractions*)


VerificationTest[
	CG[t@ SU2@ fund, {a, i, k}] CG[t@ SU2@ fund, {b, k, j}]// ContractCGs
,
	-1/2 CG[t2asym, {i, j, a, b}] + 1/4 CG[\[Delta]@ SU2@ adj, {a ,b}] CG[\[Delta]@ SU2@ fund, {i, j}] 
,
	TestID-> "CGContractions: Contraction of 2 fundamental SU2 generators"
]


VerificationTest[
	CG[t@ SU2@ fund, {a, i, k}] CG[t@ SU2@ fund, {b, k, l}]CG[t@ SU2@ fund, {c, l, j}]// ContractCGs
,
	1/8 CG[t@ SU2@ adj, {c, b, a}] CG[\[Delta]@ SU2@ fund, {i, j}] + 
	1/4 (CG[\[Delta]@ SU2@ adj, {b, a}] CG[t@ SU2@ fund, {c, i, j}] - 
		CG[\[Delta]@ SU2@ adj, {c, a}] CG[t@ SU2@ fund, {b, i, j}] + 
		CG[\[Delta]@ SU2@ adj, {c, b}] CG[t@ SU2@ fund, {a, i, j}]) //Expand
,
	TestID-> "CGContractions: Contraction of 3 fundamental SU2 generators"
]


(* ::Subsection:: *)
(*Remove group definitions*)


ClearGroups[];


(* ::Section:: *)
(*Loading the package*)


(* ::Text:: *)
(*Un-comment and run first to see the tests directly in this file. *)
(*Comment when finished and add file name to the list testfiles in  the script "RunTests.wls" .*)


(*	PrependTo[$Path, ParentDirectory[NotebookDirectory[]]];
	<< Matchete`*)
