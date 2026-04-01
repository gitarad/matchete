(* ::Package:: *)

(* ::Chapter:: *)
(*Groups tests*)


(* ::Text:: *)
(*The algebra capacity *)


If[!MemberQ[$ContextPath, "Matchete`PackageScope`"], PrependTo[$ContextPath,"Matchete`PackageScope`"];]


(* ::Section:: *)
(*Tests*)


(* ::Subsection:: *)
(*Input algebras and representations*)


(* ::Subsubsection::Closed:: *)
(*Groups to algebras*)


VerificationTest[
	{SO@ 3, SO@ 5, SO@ 6, SO@ 7,
	Sp@ 2, Sp@ 4, Sp@ 6,
	SU@ 2, SU@ 3}
,
	{Alg["B", 1], Alg["B", 2], Alg["D", 3], Alg["B", 3],
	Alg["A", 1], Alg["C", 2], Alg["C", 3],
	Alg["A", 1], Alg["A", 2]}
, TestID-> "Valid groups to algebras"]


VerificationTest[
	CheckAbort[SO@ 2; False, True] &&
	CheckAbort[SO@ 4; False, True] &&
	CheckAbort[Sp@ 3; False, True] &&
	CheckAbort[SU@ -1; False, True] &&
	CheckAbort[Sp@ 0; False, True]
,
	True
,
	{General::unkwnGroup, General::notsimpleSO4, General::unkwnGroup, General::unkwnGroup, _}
, TestID-> "Invalid groups"]


(* ::Subsubsection::Closed:: *)
(*Representation Checks*)


VerificationTest[
	RepresentationCheck[SU@ 3, {1, 0}]; RepresentationCheck[SU@ 3, {1, 1}];
	RepresentationCheck[SU@ 3, CRep@ {1, 0}];
	RepresentationCheck[Sp@ 8, {1, 1, 0, 0}]; 
,
	Null
, TestID-> "Valid representations, ordinary"]


VerificationTest[
	CheckAbort[RepresentationCheck[SU@ 3, {1}]; False, True]&&
	CheckAbort[RepresentationCheck[SU@ 3, {-1, 1}]; False, True]&&
	CheckAbort[RepresentationCheck[SU@ 3, CRep@ {1, 1}]; False, True]&&  
	CheckAbort[RepresentationCheck[SU@ 2, 1]; False, True] 	
,
	True
,
	{General::rankLab, General::dynkCoef, General::realRep, General::dynkCoef}	
, TestID-> "Invalid representations, ordinary"]


VerificationTest[
	RepresentationCheck[SO@ 3, {2}]; RepresentationCheck[SO@ 3, {4}];
	RepresentationCheck[SO@ 5, {1, 0}]; RepresentationCheck[SO@ 5, {1, 2}]; RepresentationCheck[SO@ 5, {0, 2}];
	RepresentationCheck[SO@ 6, {1, 0, 1}]; RepresentationCheck[SO@ 6, {0, 1, 0}]; RepresentationCheck[SO@ 6, {2, 1, 0}];
, 
	Null
, TestID-> "Valid representations, double covers"]


VerificationTest[
	CheckAbort[RepresentationCheck[SO@ 3, {1}]; False, True] &&
	CheckAbort[RepresentationCheck[SO@ 5, {1, 1}]; False, True] &&
	CheckAbort[RepresentationCheck[SO@ 6, {1, 1, 0}]; False, True]
, 
	True
,
	{General::doublecover.., _}
, TestID-> "Invalid representations, double covers"]


(* ::Subsection:: *)
(*Representation information*)


(* ::Subsubsection::Closed:: *)
(*FSIndicator*)


VerificationTest[{
	FSIndicator[SU@ 3, {1, 0}],
	FSIndicator[SU@ 3, {1, 1}],
	FSIndicator[SU@ 3, {0, 1}],
	FSIndicator[Sp@ 4, {1, 0}]
}, {
	0, 1, 0, -1
}, TestID-> "FSIndicator, ordinary groups"]


VerificationTest[{
	FSIndicator[SO@ 3, {4}],
	FSIndicator[SO@ 5, {1, 0}],
	FSIndicator[SO@ 5, {0, 2}]
}, {
	1, 1, 1
}, TestID-> "FSIndicator, isomorphic groups"]


(* ::Subsection:: *)
(*CG tensors*)


(* ::Subsubsection::Closed:: *)
(*Invariant tensors *)


VerificationTest[
	Normal/@ InvariantTensors[SU@ 3, {{1, 1}, {1, 1}}, Normalization-> 8]
,
	{IdentityMatrix@ 8}
, TestID-> "InvariantTensors: SU(3), 2-index adjoint"]


VerificationTest[
	Normal/@ InvariantTensors[SU@ 3, {{1, 0}, CRep@ {1, 0}}, Normalization-> 3]
,
	{IdentityMatrix@ 3}
, TestID-> "InvariantTensors: SU(3), fundamental delta"]


VerificationTest[
	Normal/@ InvariantTensors[SO@ 3, {{2}, {2}}, Normalization-> 3]
,
	{IdentityMatrix@ 3}
, TestID-> "InvariantTensors: SO(3), 2-index adjoint"]


VerificationTest[
	InvariantTensors[SU@ 3, {{1, 0}, {1, 1}}]
,
	{}
,
	InvariantTensors::nosing
, TestID-> "InvariantTensors: SU(3), non-invariant combination"]
