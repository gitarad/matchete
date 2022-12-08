(* ::Package:: *)

Package["GroupMagic`"] 


(* ::Title:: *)
(*GroupMagic`OtherDefinitions`*)


(* ::Subtitle:: *)
(*Symbols that may overlap with other packages*)


(* ::Section::Closed:: *)
(*Scoping:*)


(* ::Subsection::Closed:: *)
(*Exported*)


PackageExport["Index"]
PackageExport["Bar"]


(* ::Subsection::Closed:: *)
(*Internal*)


PackageScope["NonBarableQ"]
PackageScope["SetBarable"]
PackageScope["UnsetBarable"]


(* ::Section::Closed:: *)
(*Usage definitions*)


(* ::Subsection::Closed:: *)
(*Exported*)


Index::usage = "Index[label,group[representation]] specifies an index with label 'label' belonging to the representation 'representation' of the group 'group'.";
Bar::usage   = "Bar[field] returns the bar of a fermion field or the conjugate otherwise. Bar can also be applied to conjugate indices and charges.";


(* ::Subsection::Closed:: *)
(*Internal*)


NonBarableQ::usage  = "Specifies whether a term is trivial under bar or not.";
SetBarable::usage   = "Function for setting complex objects.";
UnsetBarable::usage = "Function for unsetting complex objects.";


(* ::Section::Closed:: *)
(*Indices*)


(* ::Subsection::Closed:: *)
(*Bar *)


(* ::Subsubsection::Closed:: *)
(*Set rules for what is trivial under a Bar *)


(* ::Text:: *)
(*Default is no action*)


NonBarableQ[f_?NonBarableQ[x___]]:= And@@ NonBarableQ/@ {x};
NonBarableQ[f_@ x___]:= False;
NonBarableQ[_] := True; 
NonBarableQ@ Alternatives[Pattern, Blank, BlankSequence, BlankNullSequence, Except, Hold]= False;


(* ::Text:: *)
(*Objects of *)


NonBarableQ@ Alternatives[Complex, CG, Index]= False;
NonBarableQ@ _SparseArray= False;


(* ::Subsubsection::Closed:: *)
(*Properties of Bar*)


Bar@ Bar@ x_:= x;


Bar@ x_?NonBarableQ:= x;


Bar[expr:Alternatives[_Plus, _Times, _Power, _Log]]:= Bar/@expr;


Bar@ x_SparseArray:= Conjugate@ x;


Bar@ x_Complex:= Conjugate@ x;


(* ::Subsubsection::Closed:: *)
(*For setting objects complex*)


SetBarable[x_, y__]  := (SetBarable@ x; SetBarable@ y;);
SetBarable[x_] := (NonBarableQ@ x ^= False;);


(* ::Text:: *)
(*And unseting them for removal*)


UnsetBarable[x_Symbol] := (x/: NonBarableQ@ x =.);
UnsetBarable[x:_Symbol@_] := (Evaluate@ Head@ x/: NonBarableQ@ x =.);


(* ::Subsection::Closed:: *)
(*Index*)


Index[lab_, Bar@ rep_]:= Bar@ Index[lab, rep];
Index[Index[a_, f_], f_] := Index[a, f]
