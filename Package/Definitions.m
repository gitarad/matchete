(* ::Package:: *)

Package["Matchete`"]


(* ::Title:: *)
(*Matchete`Definitions`*)


(* ::Subtitle:: *)
(*Field and coupling definitions for Matchete paclet.*)


(* ::Chapter:: *)
(*Public:*)


(* ::Section:: *)
(*Scoping*)


PackageImport["GroupMagic`"]


(* ::Subsection::Closed:: *)
(*Exported*)


PackageExport["Field"]
PackageExport["DefineField"]
PackageExport["RemoveField"]
PackageExport["ResetFields"]
PackageExport["GetFields"]
PackageExport["GetFieldsByProperty"]


PackageExport["Scalar"]
PackageExport["Fermion"]
PackageExport["Vector"]
PackageExport["Ghost"]


PackageExport["Indices"]
PackageExport["Charges"]
PackageExport["SelfConjugate"]
PackageExport["Mass"]
PackageExport["Heavy"]
PackageExport["Light"]
PackageExport["Type"]
PackageExport["Chiral"]
PackageExport["LeftHanded"]
PackageExport["RightHanded"]


PackageExport["Symmetries"]
PackageExport["SymmetricPermutation"]
PackageExport["AntisymmetricPermutation"]


PackageExport["Coupling"]
PackageExport["DefineCoupling"]
PackageExport["RemoveCoupling"]
PackageExport["GetCouplings"]
PackageExport["ResetCouplings"]
PackageExport["DiagonalCoupling"]


PackageExport["GetFlavorIndices"]
PackageExport["IndexDimension"]
PackageExport["DefineFlavorIndex"]
PackageExport["RemoveFlavorIndex"]
PackageExport["ResetFlavorIndices"]


PackageExport["IndexAlphabet"]
PackageExport["DefineGroupRepresentation"]


PackageExport["Group"]
PackageExport["Abelian"]
PackageExport["Representations"]
PackageExport["ClebschGordanCoefficients"]
PackageExport["RepresentationProperties"]
PackageExport["Dimension"]
PackageExport["DynkinCoefficients"]
PackageExport["Reality"]
PackageExport["ClebschGordanIndices"]


PackageExport["U1"]
PackageExport["fund"]
PackageExport["tFundf"]
PackageExport["adj"]
PackageExport["gen"]
PackageExport["fStruct"]
PackageExport["eps"]
PackageExport["dSym"]


PackageExport["FieldStrength"]
PackageExport["FS"]


PackageExport["GetGaugeGroups"]
PackageExport["FundAlphabet"]
PackageExport["AdjAlphabet"]
PackageExport["DefineGaugeGroup"]
PackageExport["RemoveGaugeGroup"]
PackageExport["ResetGaugeGroups"]


PackageExport["GetGlobalGroups"]
PackageExport["DefineGlobalGroup"]
PackageExport["RemoveGlobalGroup"]
PackageExport["ResetGlobalGroups"]


PackageExport["ResetAll"]


PackageExport["PlusHc"]


PackageExport["FreeLag"]
PackageExport["LoadModel"]
PackageExport["GetModels"]
PackageExport["ModelParameters"]


(* ::Subsection::Closed:: *)
(*Internal*)


PackageExport["FieldGenerators"]


PackageScope["SymmetryOverride"]
PackageScope["CouplingAssociationEntry"]


PackageScope["GroupFromRep"]
PackageScope["GroupFromInd"]
PackageScope["FieldsFromGroup"]
PackageScope["CouplingsFromGroup"]


PackageScope["$FieldAssociation"]
PackageScope["$CouplingAssociation"]
PackageScope["$FlavorIndices"]
PackageScope["$GaugeGroups"]
PackageScope["GetGaugeGroupByProperty"]
PackageScope["$GlobalGroups"]


PackageScope["KinOpLagrangian"]


PackageScope["DropDiagonalCouplings"]


(* ::Section:: *)
(*Usage messages*)


(* ::Subsection::Closed:: *)
(*Exported*)


Field::usage               = "Field[label,type,{indices},{CDerivs}] denotes a field with given label, type and list of {indices}. The argument {CDerivs} is the list of Lorentz indices of the covariant derivatives acting on the field.";
DefineField::usage         = "DefineField[label, type] defines a new field of given type and label. The type can be Scalar,Fermion or Vector. The default options for this function are: Indices->{}, Charges->{}, SelfConjugate->False, Chiral -> False, Mass->Heavy.";
RemoveField::usage         = "RemoveField[alias] undefines the field with label alias together with its corresponding mass coupling.";
ResetFields::usage         = "Undefines all fields (excluding gauge fields) and field masses."
GetFields::usage           = "GetFields[] returns an association of all fields that have been defined by DefineField and their properties. GetFields[field] returns an association with all the properties of an already defined field.";
GetFieldsByProperty::usage = "GetFieldsByProperty[properties] returns all fields matching the property, list of properties or sequence of properties determined by the argument.";


Scalar::usage  =    "Field[\[Phi],Scalar,{indices},{CDerivs}] denotes a scalar field \[Phi].";
Vector::usage  =    "Field[A,Vector[Index[\[Mu],Lorentz]],{indices},{CDerivs}] denotes a vector field \!\(\*SubscriptBox[\(A\), \(\[Mu]\)]\).";
Fermion::usage =    "Field[\[Psi],Fermion,{indices},{CDerivs}] denotes a fermion field \[Psi].";
Ghost::usage   =    "Field[c,Ghost,{indices},{CDerivs}] denotes a ghost field c.";


Indices::usage       = "Indices is an option for the routine DefineField that specifies a list of representations under which the field transforms. By default, Indices is an empty list {}.";
Charges::usage       = "Charges is an option for the routine DefineField that specifies a list of U(1) groups and corresponding charges of the field. By default, Charges is an empty list {}.";
SelfConjugate::usage = "SelfConjugate is an option for the routine DefineField that specifies whether the field is self-conjugated. By default, SelfConjugate is False.";
Mass::usage          = "Mass is an option for the routine DefineField that specifies the mass and EFT scaling of the field. The allowed values are either Heavy|Light|0, {Light,0}, {Heavy|Light,mlabel}, or {Heavy|Light,mlabel,{Indices}} where mlabel is a custom label for the mass and Indices must be a subset of the field indices. The default value is Mass->Heavy. If no mlabel is given, the default value Mflabel, with flabel being the label of the corresponding field, is used.";
Heavy::usage         = "Heavy specifies that the mass of a field is at the UV scale.";
Light::usage         = "Light specifies that the mass of a field is at the IR scale.";
Type::usage          = "Type specifies the type of a field. It can be Scalar, Vector or Fermion.";
Chiral::usage        = "Chiral is an option for the routine DefineField that specifies if a fermion field is LeftHanded or RightHanded.";
LeftHanded::usage    = "LeftHanded specifies that a field is of left-handed chirality."
RightHanded::usage   = "RightHanded specifies that a field is of right-handed chirality."


Symmetries::usage               = "Symmetries is an option that takes a list of symmetries. The possible option values are: SymmetricIndices[n1, n2, ...], AntisymmetricIndices[n1, n2, ...], SymmetricPermutation[n1, n2, ...] or AntisymmetricPermutation[n1, n2, ...]." ;
SymmetricPermutation::usage     = "SymmetricPermutation is a possible value for the option Symmetries. SymmetricPermutation[n1, n2, ...] denotes symmetry under a particular permutation of indices." ;
AntisymmetricPermutation::usage = "AntisymmetricPermutation is a possible value for the option Symmetries. AntisymmetricPermutation[n1, n2, ...] denotes antisymmetry under a particular permutation of indices." ;


EFTOrder::usage = "EFTOrder is an option for various routines specifying the targeted order in power-counting, as well as defining the power-counting of couplings.";


Coupling::usage         = "Coupling[label,{indices},EFTOrder] denotes the coupling label with a set of indices and an EFTOrder."
DefineCoupling::usage   = "DefineCoupling[label] defines a new coupling with a given label. The default options for this function are: EFTOrder -> 0, Indices->{}, SelfConjugate->False, Symmetries-> {}, DiagonalCoupling -> False.";
RemoveCoupling::usage   = "RemoveCoupling[alias] undefines the coupling with label alias.";
GetCouplings::usage     = "GetCouplings[] returns an association of all couplings that have been defined by DefineCoupling and their properties.GetCouplings[coupling] returns an association with all the properties of an already defined coupling.";
ResetCouplings::usage   = "Undefines all couplings (excluding the field masses and the gauge couplings)."
DiagonalCoupling::usage = "DiagonalCoupling is an option for the routine DefineCoupling. Allowed values are a list of booleans or an empty list. The n-th boolean specifies whether the n-th flavor index is a diagonal in flavor space. By default all flavor indices are assumed to be non-diagonal.

DiagonalCoupling is also the corresponding key in the association returned by GetCouplings[]."


GetFlavorIndices::usage   = "GetFlavorIndices[] returns an association of all flavor indices that have been defined by DefineFlavorIndex and their dimension. GetFlavorIndices[GaugeGroup] returns an association with the dimension of an already defined flavor index.";
IndexDimension::usage     = "IndexDimension is a key for the association returned by GetFlavorIndices.";
DefineFlavorIndex::usage  = "DefineFlavorIndex[IndexName, Dimension] defines a flavor index with given IndexName and Dimension. This routine has one optional argument, IndexAlphabet, to define the printing alphabet of the representation.";
RemoveFlavorIndex::usage  = "RemoveFlavorIndex[alias] undefines the flavor index with given alias.";
ResetFlavorIndices::usage = "Undefines all flavor indices.";


IndexAlphabet::usage             = "IndexAlphabet is an option for the routine DefineGroupRepresentation and DefineFlavorIndex that specifies a printing alphabet for the representation or flavor indices.";
DefineGroupRepresentation::usage = "DefineGroupRepresentation[repName, groupName, DynkinCoefficients] defines a label repName for the representation defined by DynkinCoefficients for the already defined gauge group labelled groupName.  This routine has one optional argument, IndexAlphabet, to define the printing alphabet of the representation.";


Group::usage                     = "Group is a key for the associations returned by GetGaugeGroups and RepresentationProperties.";
Abelian::usage                   = "Abelian is a key for the association returned by GetGaugeGroups.";
Representations::usage           = "Representations is a key for the association returned by GetGaugeGroups.";
ClebschGordanCoefficients::usage = "ClebschGordanCoefficients is a key for the association returned by GetGaugeGroups.";
RepresentationProperties::usage  = "RepresentationProperties[RepName] return the main properties of the representation RepName."
Dimension::usage                 = "Dimension is a key for the association returned by RepresentationProperties."
DynkinCoefficients::usage        = "Representations is a key for the association returned by RepresentationProperties."
Reality::usage                   = "Reality is a key for the association returned by RepresentationProperties."
ClebschGordanIndices::usage      = "ClebschGordanIndices[CGname] return the representation of the indices (ordered) for the Clebsch-Gordan coefficient CGname."


U1::usage      = "Standard name for Abelian U(1) group.";
fund::usage    = "Fundamental representations of groups are refered to by group@ fund."
tFundf::usage  = "Standard head for the Clebsch-Gordan coefficient, CG[tFundf@ group, {i, j, A, B}] associated with the commonly occuring combination \!\(\*SubscriptBox[SuperscriptBox[\(T\), \(Ci\)], \(j\)]\)\!\(\*SuperscriptBox[\(f\), \(CAB\)]\), where T is the generator of the fundamental representation of the group.";
adj::usage     = "Adjoint representations of groups are refered to by group@ adj."
gen::usage     = "Standard head for generator Clebsch-Gordan coefficients. E.g., CG[gen@ rep, {A, i, j}] for \!\(\*SubscriptBox[SuperscriptBox[\(T\), \(Ai\)], \(j\)]\), where A is an adjoint index and i an index of the representation rep.";
fStruct::usage = "Standard head for structure constant Clebsch-Gordan coefficients. E.g., CG[fStruct@ group, {A, B, C}] for \!\(\*SuperscriptBox[\(f\), \(ABC\)]\)";
eps::usage     = "Standard head for Levi-Civita type Clebsch-Gordan coefficients for SU(N) groups. E.g., CG[eps@ group, {a, b, ...}] for \!\(\*SuperscriptBox[\(\[Epsilon]\), \(ab ... \)]\), with indices in the fundamental representation.";
dSym::usage    = "Standard head for the totally symmetric d Clebsch-Gordan coefficients for SU(N\[GreaterEqual]3) groups. E.g., CG[dSym@ group, {A, B, C}] for \!\(\*SuperscriptBox[\(d\), \(ABC\)]\).";


FieldStrength::usage = "FieldStrength[V, {Index[\[Mu],Lorentz], Index[\[Nu],Lorentz]}, {indices}, {CDerivs}] denotes the field-strength tensor \!\(\*SubscriptBox[\(V\), \(\[Mu]\[Nu]\)]\) of the vector field V."
FS::usage            = "FS[V,\[Mu],\[Nu],indices] denotes the field-strength tensor of an already defined vector field V with Lorentz indices \[Mu] and \[Nu], and gauge indices as the last argument."


GetGaugeGroups::usage   = "GetGaugeGroups[] returns an association of all gauge groups that have been defined by DefineGaugeGroup and their properties. GetGaugeGroups[GaugeGroup] returns an association with all the properties of an already defined gauge group.";
FundAlphabet::usage     = "FundAlphabet is an option for the routine DefineGaugeGroup that specifies a printing alphabet for the indices of the fundamental representation.";
AdjAlphabet::usage      = "AdjAlphabet is an option for the routine DefineGaugeGroup that specifies a printing alphabet for the indices of the adjoint representation.";
DefineGaugeGroup::usage = "DefineGaugeGroup[groupName, LieGroup, coupling, fieldName] defines a gauge group labelled groupName from a given simple LieGroup, together with its corresponding coupling and gauge bosons labelled fieldName. DefineGaugeGroup also defines the fundamental and adjoint representations of the corresponding group, with some basic Clebsch-Gordan coefficients. This routine has two optional arguments, FundAlphabet and AdjAlphabet, to define respectively the printing alphabet of the fundamental and adjoint representations.";
RemoveGaugeGroup::usage = "RemoveGaugeGroup[alias] undefines the gauge group with given alias, together with its associated representations, Clebsch-Gordan coefficients, gauge coupling and bosons.";
ResetGaugeGroups::usage = "Undefines all gauge groups and associated bosons, couplings, representations, and Clebsch-Gordan coefficients."


GetGlobalGroups::usage   = "GetGlobalGroups[] returns an association of all global groups that have been defined by DefineGlobalGroup and their properties. GetGlobalGroups[GlobalGroup] returns an association with all the properties of an already defined global group.";
DefineGlobalGroup::usage = "DefineGlobalGroup[groupName, LieGroup] defines a global group labelled groupName from a given simple LieGroup. DefineGlobalGroup also defines the fundamental and adjoint representations of the corresponding group, together with some basic Clebsch-Gordan coefficients. This routine has two optional arguments, FundAlphabet and AdjAlphabet, to define respectively the printing alphabet of the fundamental and adjoint representations.";
RemoveGlobalGroup::usage = "RemoveGlobalGroup[alias] undefines the global group with given alias together with its associated Clebsch-Gordan coefficients.";
ResetGlobalGroups::usage = "Undefines all global groups and associated representations, and Clebsch-Gordan coefficients."


ResetAll::usage = "Undefines all fields, couplings, flavor indices, global and gauge groups."


PlusHc::usage = "PlusHc[expr] returns expr + Bar[expr] and can be used for convenience when writing the Lagrangian."


FreeLag::usage         = "FreeLag[f] returns the free Lagrangian for the fields specified by the argument f, which can be either a single label or a sequence of labels. If the function is called without arguments, it returns the free Lagrangian of all fields which have been defined.";
LoadModel::usage       = "LoadModel[ModelName, ModelParameters \[Rule] {'ParamName1' \[Rule] Param1,...}, IndexAlphabet \[Rule] {'IndexName1' \[Rule] {'a','b',...}}] loads a model 'ModelName' previously defined in the Models folder in Matchete. The optional arguments ModelParameters and IndexAlphabet allows the user to change the name of any of the model parameters or index alphabets, respectively.";
GetModels::usage       = "Returns a list of all installed model files that can be used with the LoadModel[...] command.";
ModelParameters::usage = "ModelParameters is an option of the LoadModel routine."


(* ::Subsection::Closed:: *)
(*Internal*)


$FieldAssociation::usage    = "$FieldAssociation is an association containing the complete information on all defined fields."
$CouplingAssociation::usage = "$CouplingAssociation is an association containing the complete information on all defined couplings."
$FlavorIndices::usage       = "$FlavorIndices is an association containing the complete information on all defined flavor indices."
$GaugeGroups::usage         = "$GaugeGroups is an association containing information on all defined gauge groups. It does not contain neither representations nor Clebsch-Gordan coefficients associated to the group."
$GlobalGroups::usage        = "$GlobalGroups is an association containing information on all defined global groups. It does not contain neither representations nor Clebsch-Gordan coefficients associated to the group."


KinOpLagrangian::usage      = "KinOpLagrangian[field] returns the  the part of the free Lagrangian that reproduces the kinetic piece of the fluctuation operator (see [2012.08506] eq. (2.3))."


GroupFromRep::usage         = "Returns the name of the group associtated to a given representation."
FieldsFromGroup::usage      = "Returns a list of fields that are charged under a given group."
CouplingsFromGroup::usage   = "Returns a list of couplings that are charged under a given group."
FieldGenerators::usage      = "FieldGenerators[Field,GaugeGroup,Indices] returns the generator of the given GaugeGroup in the same representation as the given Field, with given Indices."


(* ::Chapter:: *)
(*Private:*)


(* ::Section:: *)
(*Field definitions*)


(* ::Subsection::Closed:: *)
(*Association of all fields*)


$FieldAssociation=<||>;
GetFields[FieldName___]:=Return@$FieldAssociation[FieldName];


GetFieldsByProperty[]:=GetFields[]

GetFieldsByProperty[propsSeq__]:=GetFieldsByProperty[List[propsSeq]]

GetFieldsByProperty[props_Association]:= GetFieldsByProperty@ Normal@ props;

GetFieldsByProperty[props:_List|_Rule]:=
	Keys@ Select[$FieldAssociation, MatchQ[#, KeyValuePattern[props]]&];


(* ::Subsection::Closed:: *)
(*Defining new fields*)


(* ::Subsubsection::Closed:: *)
(*Error messages*)


DefineField::FieldLabel   = "The label '`1`' is not a Symbol, it is already used in some loaded context or already has some definitions. Please use another label.";
DefineField::FieldType    = "The field type '`1`' is invalid. Please use either Scalar, Fermion or Vector.";
DefineField::LorentzIndex = "Lorentz cannot be part of the Indices list.";
DefineField::MassIndices  = "The indices in the Mass option must be a subset of the field flavor Indices";
DefineField::Chiral       = "The option Chiral can only be different from False for fields of the Fermion type with SelfConjugate->False";
DefineField::SelfGhost    = "The option SelfConjugate->True is not valid for Ghost fields";
DefineField::ChiralMass   = "A chiral fermion with U(1) charges or complex indices can only be created with a vanishing mass, i.e. by adding the option Mass->0."
DefineField::Complex      = "A real field cannot transform as a complex representation or be charged under an U(1) group."
DefineField::LightIndices = "DefineField does not support light scalar/vector masses with flavor indices. Light mass should be set to 0 in DefineField and the squared mass should be defined separately with DefineCoupling with EFTOrder->2. "


(* ::Subsubsection::Closed:: *)
(*Options*)


(* Define the option patterns for DefineField *)
Options[DefineField]={Indices->{}, Charges->{}, SelfConjugate->False, Mass-> Heavy, Chiral-> False};


(* ::Subsubsection::Closed:: *)
(*DefineField*)


DefineField[label_,type_,opts:OptionsPattern[]]? OptionsCheck:=
DefineField[label,type,opts]=Module[
	{
		s   = OptionValue@Mass,
		scale,
		m,
		ind = OptionValue@Indices,
		tmpAssociation
	},

	(*Check that the symbol 'label' is not yet in use.*)
	If[Defined[label],
			Message[DefineField::FieldLabel,label];
			Abort[]
	];

	(*Check that 'type' is valid.*)
	If[!MatchQ[type,Scalar|Vector|Fermion|Ghost],
		Message[DefineField::FieldType,type];
		Abort[]
	];

	(*Check Lorentz indices are not part on the internal indices *)
	If[MemberQ[ind,Lorentz],
		Message[DefineField::LorentzIndex];
		Abort[]
	];

	(*Check that only complex fermion fields are chiral *)
	If[OptionValue@Chiral=!=False&&(type=!=Fermion||OptionValue@SelfConjugate==True),
		Message[DefineField::Chiral];
		Abort[]
	];

	(*Check that ghosts are not self-conjugate *)
	If[OptionValue@SelfConjugate===True && type===Ghost,
		Message[DefineField::SelfGhost];
		Abort[]
	];

	(* Check that chiral fermion mass is zero if field is charged under any U(1) or has complex indices *)
	If[(type==Fermion && OptionValue@Chiral=!=False && (Length[OptionValue@Charges]=!=0 || Or@@(MemberQ[Select[Keys@GroupMagic`PackageScope`$Representations,GroupMagic`PackageScope`$Representations[#][GroupMagic`PackageScope`Reality]===0&],#]&/@ind)) ) &&  !MatchQ[s,0|{Light,0}],
		Message[DefineField::ChiralMass];
		Abort[];
	];

	(* Check that indices are not complex when SelfConjugate -> True*)
	If[(OptionValue@SelfConjugate===True && (Length[OptionValue@Charges]=!=0 || Or@@(MemberQ[Select[Keys@GroupMagic`PackageScope`$Representations,GroupMagic`PackageScope`$Representations[#][GroupMagic`PackageScope`Reality]===0&],#]&/@ind))),
		Message[DefineField::Complex];
		Abort[];
	];

	(*Define mass coupling*)
	Switch[s,
		Heavy,
			DefineCoupling[Symbol["M"<>ToString[label]],EFTOrder->If[s===Heavy,0,1],SelfConjugate->True];
			m = Symbol["M"<>ToString[label]];
			Format[Coupling[m,in_,_], NiceForm] := UpDownIndices[StandardForm[Subscript[ StandardForm["M"], StandardForm[label] ]],in];
			scale = Heavy;,
		Light,
			DefineCoupling[Symbol["m"<>ToString[label]],EFTOrder->If[s===Heavy,0,1],SelfConjugate->True];
			m = Symbol["m"<>ToString[label]];
			Format[Coupling[m,in_,_], NiceForm] := UpDownIndices[StandardForm[Subscript[ StandardForm["m"], StandardForm[label] ]],in];
			scale = Light;,
		0|{Light,0},
			m = 0;
			scale = Light;,
		{Heavy|Light,_},
			If[GetCouplings[s[[2]]][EFTOrder]=!=If[First@s===Heavy,0,1] || GetCouplings[s[[2]]][Indices]=!={},
				DefineCoupling[s[[2]],EFTOrder->If[First@s===Heavy,0,1],SelfConjugate->True];
			];
			m = s[[2]];
			scale = First[s];,
		{Heavy|Light,_,_},
			(*Do not allow light scalar and vector masses with flavor indices*)
			If[First@s===Light && MemberQ[{Scalar,Vector},type] && Last@s=!={},
				Message[DefineField::LightIndices];
				Abort[]
			];

			(* Check that mass indices are consistent with field indices *)
			If[!MatchQ[ind,{OrderlessPatternSequence[Last@s/.List->Sequence,___]}],
				Message[DefineField::MassIndices];
				Abort[];
			];

			If[GetCouplings[s[[2]]][EFTOrder]=!=If[First@s===Heavy,0,1] || GetCouplings[s[[2]]][Indices]=!=If[First@s===Heavy,Last@s,Join[Last@s,Last@s]],
				DefineCoupling[s[[2]],EFTOrder->If[First@s===Heavy,0,1],Indices->If[First@s===Heavy,Last@s,Join[Last@s,Last@s]],SelfConjugate->First@s===Heavy,DiagonalCoupling->{True}];
			];
			m = s[[2]];
			scale = First[s];
	];
	scale = If[scale===Heavy,True,False];

	(*Add field to the list of fields*)
	AppendTo[$FieldAssociation,label->
	  <|Type-> type,
		Indices-> ind,
		Charges-> OptionValue@Charges,
		SelfConjugate-> OptionValue@SelfConjugate,
		Chiral-> OptionValue@Chiral,
		Mass-> m,
		Heavy-> scale|>];

	(*In case of vectors, add Lorentz to indices list *)
	If[type===Vector, PrependTo[ind,Lorentz]];

	(* Create the usage message for the new field *)
	If[Length[ind]== 0,
	label::usage=ToString[label]<>"[]: Gives a " <> ToString[type] <> " field with label "<>ToString[label]<>".";
	,
	label::usage=ToString[label]<>"[indices]: Gives a " <> ToString[type] <> " field with label "<>ToString[label]<>". The argument must be a sequence of indices following the order: "<> StringJoin[ToString/@Riffle[ind,","]] <>".";
	];
	If[Length[OptionValue@Charges]!= 0,label::usage=label::usage<>" The charges of the field are "<> ToString[OptionValue@ Charges,InputForm] <> "."];
	label::IndexNumber="Incorrect number of indices specified. Expected `2` indices, but given `1`.";

	(* Define the new field *)
	label[indexlist___]:=Module[
		{
			l=label,
			t=type,
			inputInd=List[indexlist],
			i=ind
		},

		(*check the length of indices*)
		If[Length[i]!=Length[inputInd],
			Message[label::IndexNumber,Length[inputInd],Length[i]];
			Abort[]
		];

		(*Extract Lorentz index for vectors*)
		If[t===Vector,
			t   = Vector@Index[Quiet[First@inputInd,First::normal],Lorentz];
			inputInd = Drop[inputInd,1];
			i = Drop[i,1];
		];

		If[OptionValue@Chiral===False,
			Field[l, t, Thread@Index[inputInd,i], {}],
			If[OptionValue@Chiral===LeftHanded,PL,PR]**Field[l, t, Thread@Index[inputInd,i], {}]
		]
	];

	(*In case of vectors, define field-strength tensor *)
	If[type===Vector,
		FS[label, \[Mu]_, \[Nu]_, indexlist___]:=Module[
			{
				inputInd=List[indexlist],
				i=Drop[ind,1]
			},

			(*check the length of indices*)
			If[Length[i]!=Length[inputInd],
				Message[label::IndexNumber,Length@inputInd,Length@i];
				Abort[];
			];

			FieldStrength[label, {Index[\[Mu],Lorentz], Index[\[Nu],Lorentz]}, Thread@Index[inputInd, i], {}]
		]
	];

	(*Setup of Conj (used to clasify operator types)*)
	If[OptionValue@ SelfConjugate,
		Conj@ label= label
	];
]


(* ::Subsection::Closed:: *)
(*Remove fields*)


RemoveField[alias_]:= Module[{m=$FieldAssociation[alias][Mass]},
					    If[KeyExistsQ[$FieldAssociation,alias],
							KeyDropFrom[$FieldAssociation, alias];
							Quiet[Conj@ alias=.];
							Remove@alias;
							If[m=!=0 && !MemberQ[Lookup[Mass]@Values@GetFields[],m],RemoveCoupling[m]];
					    ];
					  ];


ResetFields[]:=(RemoveField/@Complement[Keys@GetFields[],If[GetGaugeGroups[]===<||>,{},Values@Transpose[GetGaugeGroups[]][Field]]];);


(* ::Section:: *)
(*Coupling definitions*)


(* ::Subsection::Closed:: *)
(*Properties*)


Coupling[0, __]= 0;


(* ::Subsection::Closed:: *)
(*Association of all couplings*)


$CouplingAssociation=<||>;
GetCouplings[CouplingName___]:=$CouplingAssociation[CouplingName]//Map[ReplaceAll[<|x___,Symmetries-> val_,y___|>:><|x,Symmetries->If[Length[List@@val]===1,{}, val],y|>]]


(* ::Subsection:: *)
(*Defining new couplings*)


(* ::Subsubsection::Closed:: *)
(*Error messages*)


DefineCoupling::CouplingLabel=    "The label '`1`' is not a Symbol, it is already used in some loaded context or already has some definitions. Please use another label.";
DefineCoupling::LorentzIndex=     "Lorentz cannot be part of the Indices list.";
DefineCoupling::DiagonalCoupling= "The OptionValue of DiagonalCoupling must be either an empty list of a list with boolean entries of the same length as the number of indices carries by the coupling.";


(* ::Subsubsection::Closed:: *)
(*Options*)


(* Define the option patterns for DefineCoupling *)
Options[DefineCoupling]={
		DiagonalCoupling -> {},
		EFTOrder-> 0,
		Indices-> {},
		SelfConjugate-> False,
		Symmetries-> {}
	};


(* ::Subsubsection::Closed:: *)
(*DefineCoupling*)


(* this creates the coupling association entry both used when defining a new coupling, but also for the duplicate check in IntroduceEffectiveCouplings *)
CouplingAssociationEntry[order_,indInternal_, sc_,symmetries_,dc_]:=Module[{},
	<|
			EFTOrder-> order,
			Indices-> indInternal,
			SelfConjugate-> sc,
			Symmetries-> symmetries,
			DiagonalCoupling-> dc
		|>
]


DefineCoupling[label_,opts:OptionsPattern[]]? OptionsCheck:=
DefineCoupling[label,opts]= Module[
	{
		order = OptionValue@ EFTOrder,
		indInternal = OptionValue@ Indices,
		symmetries,
		tmpAssociation,
		diagCoup = OptionValue@ DiagonalCoupling
	},

	(*Check that the symbol 'label' is not yet in use.*)
	If[Defined[label],
		Message[DefineCoupling::CouplingLabel,label];
		Abort[]
	];

	(*Check that DiagonalCoupling and Indices have the same length*)
	If[Length[diagCoup]=!=Length[indInternal],
		If[{}===diagCoup,
			diagCoup = Table[False,{aux,Length[indInternal]}]
			,
			Message[DefineCoupling::DiagonalCoupling]; Abort[]
		];
	];
	(*
	If[OptionValue@ DiagonalCoupling,
		If[Length[indInternal] =!= 1 || !MemberQ[Keys@$FlavorIndices, First[indInternal]],
			Message[DefineCoupling::DiagonalCoupling];
			Abort[]
		];
	];
	*)

	(*Check Lorentz indices are not part on the internal indices *)
	If[MemberQ[indInternal,Lorentz],
		Message[DefineCoupling::LorentzIndex];
		Abort[]
	];

	(*Perform check of coupling input*)
	symmetries= CouplingSymmetries[Length@ indInternal, OptionValue@ Symmetries];

	(*Add coupling to the list of couplings*)
	AppendTo[$CouplingAssociation,label->CouplingAssociationEntry[order,indInternal, OptionValue@ SelfConjugate,symmetries,OptionValue@ DiagonalCoupling]];

	(* Create the usage message for the new coupling *)
	If[Length[indInternal]== 0,
	label::usage=ToString[label]<>"[]: Gives a coupling with label "<>ToString[label]<>" and EFTOrder "<>ToString[order]<>".";
	,
	label::usage=ToString[label]<>"[indices]: Gives a coupling with label "<>ToString[label]<>" and EFTOrder "<>ToString[order]<>". The argument must be a sequence of indices following the order: "<> StringJoin[ToString/@Riffle[indInternal,","]] <>".";
	];
	label::IndexNumber="Incorrect number of indices specified. Expected `2` indices, but given `1`.";

	(* Define the new coupling *)
	label[indexlist___]:=Module[
		{
			l=label,
			ind=List[indexlist],
			i=indInternal
		},
		(*check the length of indices*)
		If[Length[i]!=Length[ind],
			Message[label::IndexNumber,Length[ind],Length[i]];
			Abort[]
		];

		Coupling[l, Thread@ Index[ind,i],order]
	];

	(*regenerates the replacement rule to drop diagonal flavor indices on couplings*)
	UpdateDropDiagonalCouplings[];
]


(* ::Subsubsection::Closed:: *)
(*Determine all symmetric permutation of coupling indices *)


(* ::Text:: *)
(*Returns an association with viable coupling permutations with their sign*)


CouplingSymmetries[noInds_, symmetries_]:=Module[{couplingPermutations, evenGens, perm, oddGens, newPerm},
	couplingPermutations=<|Range@ noInds-> 1|>;

	evenGens={}; oddGens={};
	Do[
		Switch[Head@ perm
		,SymmetricIndices,
			evenGens= evenGens~ Join~ {Cycles@ List[List@@ perm], Cycles@ List[List@@ perm[[{1, 2}]]]};
		,AntisymmetricIndices,
			AppendTo[oddGens, Cycles@ List[List@@ perm[[{1, 2}]]]];
			(*oddGens= oddGens~ Join~ {Cycles@ List[List@@ perm], Cycles@ List[List@@ perm[[{1, 2}]]]};*)
			If[OddQ@ Length@ perm,
				AppendTo[evenGens, Cycles@ List[List@@ perm] ];,
				AppendTo[oddGens, Cycles@ List[List@@ perm] ];
			]
		,SymmetricPermutation,
			AppendTo[evenGens, FindPermutation@ perm];
		,AntisymmetricPermutation,
			AppendTo[oddGens, FindPermutation@ perm];
		]
	,{perm, symmetries}];

	(*Compose the symmetries *)
	newPerm= couplingPermutations;
	While[Length@ newPerm > 0,
		newPerm= Association@@ Join[
				KeyValueMap[Function[{key, val}, Permute[key, #]-> val], newPerm]&/@ evenGens,
				KeyValueMap[Function[{key, val}, Permute[key, #]-> -val], newPerm]&/@ oddGens
			];
		KeyDropFrom[newPerm, Keys@ couplingPermutations];
		couplingPermutations= Join[couplingPermutations, newPerm];
	];
	couplingPermutations
]


(* ::Text:: *)
(*Override to directly give the the symmetries in the internal form*)


CouplingSymmetries[ _ , SymmetryOverride[x_]]:=Module[{out},
	Switch[Head@x,
		List, out = Association @@ x,
		Association, out = x,
		Rule, out = Association @ x,
		_, Association[ {1,2,3,4}->1 ]
	];
	Return[out]
]


(* ::Subsubsection::Closed:: *)
(*Rule for dropping diagonal indices on Couplings*)


(* ::Text:: *)
(*Rule to drop diagonal flavor indices from couplings when relabeling indices. Defined here once globally for better performance.*)


UpdateDropDiagonalCouplings[]:=(DropDiagonalCouplings=Table[
	With[{tmp= Position[GetCouplings[x][DiagonalCoupling],True]},
		If[tmp==={},
			Nothing,
			Coupling[x,ind_List,ord_]:>Coupling[x,ReplacePart[ind,tmp->Nothing],ord]
		]
	]
	,
	{x,Keys@GetCouplings[]}
]);


(* ::Subsection::Closed:: *)
(*Remove an already defined coupling*)


RemoveCoupling[alias_]:= If[KeyExistsQ[$CouplingAssociation,alias],
							KeyDropFrom[$CouplingAssociation, alias];
							Remove@alias;
							(*regenerates the replacement rule to drop diagonal flavor indices on couplings*)
							UpdateDropDiagonalCouplings[];
					     ];


ResetCouplings[]:=Module[{mList1,mList2,cList},
					mList1=GetFields[#][Mass]&/@(Keys@GetFields[]);
					mList2=If[GetGaugeGroups[]===<||>,{},Values@Transpose[GetGaugeGroups[]][Coupling]];
					cList=Keys@GetCouplings[];
					RemoveCoupling/@Complement[cList,Join[mList1,mList2]];
				  ];


(* ::Section::Closed:: *)
(*Flavor indices*)


(* ::Subsection::Closed:: *)
(*Association of all flavor indices*)


$FlavorIndices= <||>;
GetFlavorIndices[FlavorIndex___]:=Return@$FlavorIndices[FlavorIndex];


(* ::Subsection::Closed:: *)
(*Defining flavor indices*)


(* ::Subsubsection::Closed:: *)
(*Error messages*)


DefineFlavorIndex::FlavorName     = "The flavor index name '`1`' is not a Symbol, it is already used in some loaded context or already has some definitions. Please use another flavor index name.";
DefineFlavorIndex::IndexDimension = "The flavor index dimension '`1`' is not a positive integer larger than 1 or an undefined Symbol."


(* ::Subsubsection::Closed:: *)
(*Options*)


(* Define the option patterns for DefineFlavorIndices *)
Options[DefineFlavorIndex]={IndexAlphabet -> None};


(* ::Subsubsection::Closed:: *)
(*DefineFlavorIndices*)


(* ::Text:: *)
(*Function to define a flavor indices*)


DefineFlavorIndex[flavorName_,indexDim_,opts:OptionsPattern[]]? OptionsCheck:=
DefineFlavorIndex[flavorName,indexDim,opts]= Module[{},
	(*Check if 'Name' is already defined as a flavor index.*)
	If[Defined[flavorName]||KeyExistsQ[$FlavorIndices,flavorName]||KeyExistsQ[$GaugeGroups,flavorName]||KeyExistsQ[$GlobalGroups,flavorName],
		Message[DefineFlavorIndex::FlavorName,flavorName];
		Abort[]
	];

	(*Check if 'IndexDimension' is an undefined symbol or a positive integer larger than 1.*)
	If[Defined[indexDim]&&!(IntegerQ[indexDim] && indexDim > 1),
		Message[DefineFlavorIndex::IndexDimension,indexDim];
		Abort[]
	];

	(*Update list of flavor indices*)
	AppendTo[$FlavorIndices, flavorName-> <|
			IndexDimension-> indexDim
	|>];

	(* If provided, add index alphabet for the representation *)
	If[OptionValue@IndexAlphabet=!=None,AppendTo[$IndexAlphabets,flavorName -> BuildIndexAssoc[OptionValue@IndexAlphabet]]];

	(* Define a usage message for this object *)
	flavorName::usage=ToString[flavorName]<>" is a label for a flavor index.";

	(* Define flavor indices to be neutral under Bar[]*)
	Bar@Index[ind_,flavorName]:=Index[ind,flavorName];
]


(* ::Subsection::Closed:: *)
(*Removing  flavor indices*)


RemoveFlavorIndex[alias_]:= Module[{},
					       If[KeyExistsQ[$FlavorIndices,alias],
					          RemoveCoupling/@CouplingsFromGroup[alias];
					          RemoveField/@FieldsFromGroup[alias];
					          KeyDropFrom[$IndexAlphabets, alias];
							  KeyDropFrom[$FlavorIndices, alias];
							  Remove@alias;
							  Bar[Index[ind_,alias]]=.
					       ]
					      ]


ResetFlavorIndices[]:=(RemoveFlavorIndex/@Keys[$FlavorIndices[]];);


(* ::Section:: *)
(*Gauge and global groups*)


(* ::Subsection::Closed:: *)
(*Representation and  Clebsch Gordan info*)


(* ::Text:: *)
(*Shows the main representation properties*)


RepresentationProperties[RepName_]:=Module[{real= GroupMagic`PackageScope`$Representations[RepName][GroupMagic`PackageScope`Reality]},
									<|
										Group -> GroupMagic`PackageScope`$Representations[RepName][GroupMagic`PackageScope`GroupName],
										DynkinCoefficients ->  GroupMagic`PackageScope`$Representations[RepName][GroupMagic`PackageScope`DynkinCoefficients],
										Dimension -> GroupMagic`PackageScope`$Representations[RepName][GroupMagic`PackageScope`RepDimension],
										Reality -> Which[real==1,"Real",real==-1,"PseudoReal",real==0,"Complex"]
									|>

]


(* ::Text:: *)
(*Shows the representation indices for a given Clebsch Gordan*)


ClebschGordanIndices::ClebschGordanName   = "The Clebsch-Gordan coefficient has not been defined. Please use another name or use DefineCG to define it."


ClebschGordanIndices[CGname_]:= Module[{},
								(*Check that the Clebsch-Gordan is defined.*)
								If[!KeyExistsQ[GroupMagic`PackageScope`$CGproperties,CGname],
									Message[ClebschGordanIndices::ClebschGordanName,CGname];
									Abort[]
								];
							    GroupMagic`PackageScope`$CGproperties[CGname][GroupMagic`PackageScope`Indices]
							  ]


(* ::Subsection::Closed:: *)
(*Defining representations*)


(* ::Subsubsection::Closed:: *)
(*Error messages*)


DefineGroupRepresentation::GroupName = "The group name '`1`' has not been defined. Please define the group using DefineGaugeGroup or DefineGlobalGroup, or use another group name.";
DefineGroupRepresentation::DynkLabel = "'`1`' is not a list of non-negative integers.";


(* ::Subsubsection::Closed:: *)
(*Options*)


(* Define the option patterns for DefineGroupRepresentation *)
Options[DefineGroupRepresentation]={IndexAlphabet -> None};


(* ::Subsubsection::Closed:: *)
(*DefineGroupRepresentation*)


(* ::Text:: *)
(*Function to define a group (gauge or global) representation*)


DefineGroupRepresentation[repName_, grName_, dynkLabel_,opts:OptionsPattern[]]? OptionsCheck:=
DefineGroupRepresentation[repName, grName, dynkLabel, opts]=Module[{lieAlg},
	(*Check if 'grName' is already defined as a gauge group.*)
	If[!KeyExistsQ[$GaugeGroups,grName] && !KeyExistsQ[$GlobalGroups,grName],
		Message[DefineGroupRepresentation::GroupName,grName];
		Abort[]
	];

	(*Check that dynkLabel is a list of non-negative integers.*)
	If[!And@@(#>=0&/@dynkLabel),
		Message[DefineGroupRepresentation::DynkLabel,dynkLabel];
		Abort[]
	];

	DefineRepresentation[repName, grName, dynkLabel];

	lieAlg=If[KeyExistsQ[$GaugeGroups,grName],$GaugeGroups[grName, Group],$GlobalGroups[grName, Group]];

	(* Define delta and generator for the representation *)
	If[FSIndicator[lieAlg, dynkLabel]=== 1,
			DefineCG[gen@repName,{grName@adj,repName,repName},Generators[lieAlg,dynkLabel]];
		,
			DefineCG[gen@repName,{grName@adj,repName,Bar@repName},Generators[lieAlg,dynkLabel]];
	];

	(* If provided, add index alphabet for the representation *)
	If[OptionValue@IndexAlphabet=!=None,AppendTo[$IndexAlphabets,repName -> BuildIndexAssoc[OptionValue@IndexAlphabet]]];
];


(* ::Subsection::Closed:: *)
(*GroupFromRep*)


(* ::Text:: *)
(*For finding the group associated to a representation*)


GroupFromRep@ Bar@ rep_:= GroupFromRep@ rep;
GroupFromRep@ rep_:= Module[{gr},
	gr= Lookup[GroupMagic`PackageScope`$Representations, rep, None]@ GroupMagic`PackageScope`GroupName;
	If[KeyExistsQ[$GaugeGroups, gr]||KeyExistsQ[$GlobalGroups, gr], gr, None]
];


(* ::Text:: *)
(*Returns the group associated to an index*)


GroupFromInd@ Bar@ ind_:= GroupFromInd@ ind;
GroupFromInd@ Index[_, rep_]:= GroupFromRep@ rep;


(* ::Subsection::Closed:: *)
(*FieldsFromGroup*)


FieldsFromGroup[group_]:= Module[{tmp},
	If[MemberQ[Keys@$FlavorIndices,group],
		Return[Select[Keys@$FieldAssociation,MemberQ[Transpose[$FieldAssociation][Indices][#],group]&]];
		,
		If[MatchQ[Join[$GaugeGroups,$GlobalGroups][group][Group], U1],
			tmp=Select[Keys@$FieldAssociation,MemberQ[Head/@Transpose[$FieldAssociation][Charges][#],group]&];
			Return[If[MemberQ[Keys@$GaugeGroups,group],AppendTo[tmp,$GaugeGroups[group][Field]],tmp]];
			,
			Return[Select[Keys@$FieldAssociation,MemberQ[GroupFromRep/@Transpose[$FieldAssociation][Indices][#],group]&]];
		]
	]
]


(* ::Subsection::Closed:: *)
(*CouplingsFromGroup*)


CouplingsFromGroup[group_]:= Module[{},
	If[MemberQ[Keys@$FlavorIndices,group],
		Return[Select[Keys@$CouplingAssociation,MemberQ[Transpose[$CouplingAssociation][Indices][#],group]&]];
		,
		If[MatchQ[Join[$GaugeGroups,$GlobalGroups][group][Group], U1],
			Return[Select[Keys@$CouplingAssociation,MemberQ[Head/@Transpose[$CouplingAssociation][Charges][#],group]&]];
			,
			Return[Select[Keys@$CouplingAssociation,MemberQ[GroupFromRep/@Transpose[$CouplingAssociation][Indices][#],group]&]];
		]
	]
]


(* ::Subsection:: *)
(*Get field generators*)


(* ::Subsubsection::Closed:: *)
(*Error messages*)


FieldGenerators::Field       = "The field '`1`' has not been defined. Please define the field using DefineField or use another field name.";
FieldGenerators::GroupName   = "The group '`1`' has not been defined. Please define the group using DefineGaugeGroup or DefineGlobalGroup, or use another group name.";
FieldGenerators::Abelian     = "The group '`1`' is Abelian so no indices should be provided. Please use FieldGenerators[`2`, `1`] instead or use a different group name."
FieldGenerators::NotAbelian  = "The group '`1`' is not Abelian so generator indices should be provided. Please use FieldGenerators[`2`, `1`,Indices] instead or use a different group name."
FieldGenerators::Charged     = "The field '`1`' is not charged under the group '`2`'. Please provide another group name."
FieldGenerators::Indices     = "The indices argument '`1`' is incorrect. Please provide a list of three Symbols";


(* ::Subsubsection::Closed:: *)
(*FieldGenerators*)


(* ::Text:: *)
(*For finding the generators associated to a given field and gauge group*)


FieldGenerators[Bar@field_,GroupName_,indices_]:=Bar@FieldGenerators[field,GroupName,indices]
FieldGenerators[field_,GroupName_,indices_]:= Module[{rep,generators},

	(*Check that the field is already defined*)
	If[!KeyExistsQ[$FieldAssociation,field],
		Message[FieldGenerators::Field,field];
		Abort[]
	];

	(*Check that the group is already defined*)
	If[!KeyExistsQ[$GaugeGroups,GroupName] && !KeyExistsQ[$GlobalGroups,GroupName],
		Message[FieldGenerators::GroupName,GroupName];
		Abort[]
	];

	(* Check that the group is not Abelian *)
	If[$GaugeGroups[GroupName][Abelian] || $GlobalGroups[GroupName][Abelian],
		Message[FieldGenerators::Abelian,GroupName,field];
		Abort[]
	];

	(*Check that the field is charged under the given group*)
	If[!MemberQ[DeleteCases[GroupFromRep/@$FieldAssociation[field][Indices],None],GroupName],
		Message[FieldGenerators::Charged,field,GroupName];
		Abort[]
	];

	(*Check that indices is a list of three indices*)
	If[!MatchQ[indices,{_Symbol,_Symbol,_Symbol}],
		Message[FieldGenerators::Indices,indices];
		Abort[]
	];

	rep=First@Select[GetFields[field][Indices],GroupFromRep[#]==GroupName &];
	If[Head@rep===Bar,
		Bar@CG[gen[rep[[1]]],indices]
	,
		CG[gen[rep],indices]
	]
];


(* ::Text:: *)
(*In the case of Abelian fields it returns the charge *)


FieldGenerators[Bar@field_,GroupName_]:=Bar@FieldGenerators[field,GroupName]
FieldGenerators[field_,GroupName_]:= Module[{generators},

	(*Check that the field is already defined*)
	If[!KeyExistsQ[$FieldAssociation,field],
		Message[FieldGenerators::Field,field];
		Abort[]
	];

	(*Check that the group is already defined*)
	If[!KeyExistsQ[$GaugeGroups,GroupName] && !KeyExistsQ[$GlobalGroups,GroupName],
		Message[FieldGenerators::GroupName,GroupName];
		Abort[]
	];

	(* Check that the group is Abelian *)
	If[!$GaugeGroups[GroupName][Abelian] || !$GlobalGroups[GroupName][Abelian],
		Message[FieldGenerators::NotAbelian,GroupName,field];
		Abort[]
	];

	(*Check that the field is charged under the given group*)
	If[!MemberQ[Head/@$FieldAssociation[field][Charges],GroupName],
		Message[FieldGenerators::Charged,field,GroupName];
		Abort[]
	];

	Select[$FieldAssociation[field][Charges],Head[#]==GroupName&][[1]][[1]]
];


(* ::Section:: *)
(*Gauge groups*)


(* ::Subsection::Closed:: *)
(*Field-strength properties*)


FieldStrength[_, {\[Mu]_, \[Mu]_}, __]:= 0;
FieldStrength[_, _, {a_, a_}, __]:= 0;
FieldStrength[_, _, {a_, Bar@ a_}, __]:= 0;
FieldStrength[_, _, {Bar@ a_, a_}, __]:= 0;


(* Order the Lorentz indices canonically *)
FieldStrength[label_, {\[Mu]_,\[Nu]_}, rest___] := -FieldStrength[label, {\[Nu],\[Mu]}, rest] /; !OrderedQ[{\[Mu],\[Nu]}]


(* ::Subsection::Closed:: *)
(*Association of all gauge groups*)


(* ::Text:: *)
(*Basic gauge group information*)


$GaugeGroups= <||>;
GetGaugeGroups[GaugeGroupName___]:=Module[{$tmpGauge},
	$tmpGauge=$GaugeGroups;
	Table[
		AppendTo[$tmpGauge[i], ClebschGordanCoefficients -> Keys@Select[GroupMagic`PackageScope`$CGproperties,#[GroupMagic`PackageScope`GroupName]==i&]];
		AppendTo[$tmpGauge[i], Representations -> Keys@Select[GroupMagic`PackageScope`$Representations,#[GroupMagic`PackageScope`GroupName]==i&]];
	,{i,Keys@$GaugeGroups}];
	$tmpGauge[GaugeGroupName]
];


GetGaugeGroupByProperty[]:= Keys@ $GaugeGroups;

GetGaugeGroupByProperty[propsSeq__]:= GetGaugeGroupByProperty@ List@ propsSeq;

GetGaugeGroupByProperty[props_Association]:= GetGaugeGroupByProperty@ Normal@ props;

GetGaugeGroupByProperty[props: _List| _Rule]:=
	Keys@ Select[$GaugeGroups, MatchQ[#, KeyValuePattern[props]]&];
(* GetGaugeGroupByProperty[props: (_List| _Rule)]:= Module[{gg= $GaugeGroups},
	Table[If[MatchQ[gg[k], KeyValuePattern[props]], k, Nothing], {k, Keys[gg]}]
] *)


(* ::Subsection:: *)
(*Defining gauge group *)


(* ::Subsubsection::Closed:: *)
(*Error messages*)


DefineGaugeGroup::CouplingLabel   = "The coupling '`1`' is not a Symbol, it is already used in some loaded context or already has some definitions. Please use another symbol for the gauge coupling.";
DefineGaugeGroup::GroupName       = "The group name '`1`' is not a Symbol, it is already used in some loaded context or already has some definitions. Please use another group name.";
DefineGaugeGroup::GaugeFieldLabel = "The gauge field name '`1`' is not a Symbol, it is already used in some loaded context or already has some definitions. Please use another symbol for the gauge field.";
DefineGaugeGroup::LieGroup        = "'`1`' is not a known simple group.";


(* ::Subsubsection::Closed:: *)
(*Options*)


(* Define the option patterns for DefineGaugeGroup *)
Options[DefineGaugeGroup]={FundAlphabet -> None, AdjAlphabet -> None}


(* ::Subsubsection::Closed:: *)
(*DefineGaugeGroup*)


(* ::Text:: *)
(*Function to define a gauge group together with some basic representations and Clebsch-Gordan coefficients*)


DefineGaugeGroup[grName_,lieGroup_, coupling_, gaugeField_,opts:OptionsPattern[]]? OptionsCheck:=
DefineGaugeGroup[grName,lieGroup, coupling, gaugeField,opts]= Module[{fundRep, adjRep, rank},
	(*Check that the symbol 'coupling' is not yet in use.*)
	If[Defined[coupling] && !KeyExistsQ[$GaugeGroups,coupling],
		Message[DefineGaugeGroup::CouplingLabel,coupling];
		Abort[]
	];

	(*Check that the symbol 'grName' is not yet in use.*)
	If[Defined[grName]||KeyExistsQ[$FlavorIndices,grName]||KeyExistsQ[$GaugeGroups,grName]||KeyExistsQ[$GlobalGroups,grName],
		Message[DefineGaugeGroup::GroupName,grName];
		Abort[]
	];

	(*Check that the symbol 'gaugeField' is not yet in use.*)
	If[Defined[gaugeField],
		Message[DefineGaugeGroup::GaugeFieldLabel,gaugeField];
		Abort[]
	];

	(*Check that the symbol 'lieGroup' is a valid simple Lie group.*)
	If[!MatchQ[lieGroup, U1|Alg["A",n_?Positive]|Alg["B",n_?(#>1&)]|Alg["C",n_?(#>1&)]|Alg["D",n_?(#>2&)]|Alg["E",n_?(MatchQ[#,6|7|8]&)]|Alg["F",4]|Alg["G",2]],
		Message[DefineGaugeGroup::LieGroup,lieGroup];
		Abort[]
	];

	(*Update list of gauge groups*)
	AppendTo[$GaugeGroups, grName-> <|
			Group-> lieGroup,
			Coupling-> coupling,
			Field-> gaugeField,
			Abelian-> lieGroup === U1
	|>];

	(*Define usage message*)
	grName::usage=ToString[grName]<>" is the label of a gauge group with gauge field "<>ToString[gaugeField]<> " and gauge coupling "<>ToString[coupling]<>".";

	(*Set up Lie group for non-Ablelian gauge groups*)
	If[lieGroup=!= U1,
		(*Add group*)
		DefineGroup[grName, lieGroup];
		adjRep= AdjointRepresentation@ lieGroup;
		fundRep= FundamentalRepresentation@ lieGroup;
		rank= Last@ lieGroup;

		(*Add common representations*)
		DefineGroupRepresentation[grName@ adj, grName, adjRep, IndexAlphabet-> OptionValue@AdjAlphabet];
		If[lieGroup=!=Alg["E",8], (*For E_8, the fundamental conincide with the Adjoint*)
			DefineGroupRepresentation[grName@ fund, grName, fundRep,
				IndexAlphabet -> OptionValue@ FundAlphabet];
		];

		(*Structure constatns and identification with adj generators*)
		DefineCG[fStruct@grName,{grName@adj,grName@adj,grName@adj},StructureConstants@lieGroup];
		CG[gen[grName[adj]], indices_]:=-I CG[fStruct@ grName, indices];

		(*Define the commonly occuring t^ai_j f^{abc}*)
		DefineCompositeCG[tFundf@ grName, {gen@ grName@ fund, fStruct@ grName}, {{$a, $i, $j}, {$a, $b, $c}}];

		(*Add common CGs for SU(N) algebras (limited to N\[LessEqual]5 for performance reasons)*)
		If[MatchQ[lieGroup, Alg["A", _?(#>0 && #<5 &)]],
			DefineCG[eps@grName, ConstantArray[grName@fund, rank+ 1],
				First@InvariantTensors[lieGroup, Table[fundRep,rank+ 1],
					AntisymmetricIndices-> Range[rank+ 1],
					Normalization-> (rank+ 1)!]];
		];

		If[MatchQ[lieGroup, Alg["A", _?(#>1 &)]],
			DefineCG[dSym@grName,{grName@adj, grName@adj, grName@adj},
				First@ InvariantTensors[lieGroup, {adjRep, adjRep, adjRep},
					SymmetricIndices-> {1, 2, 3},
					Normalization-> ((rank+1)^2-1)((rank+1)^2-4)/(rank+1)]];
		];
		
		(*Add two-index invariant CGs for Sp(N) algebras*)
		If[MatchQ[lieGroup, Alg["C", _]],
			DefineCG[eps@ grName, Table[grName@ fund, 2], 
				First@ InvariantTensors[lieGroup, Table[FundamentalRepresentation@lieGroup, 2],
					AntisymmetricIndices-> {1, 2}, Normalization-> 2* lieGroup[[2]]]];
		];
	];

	(*Add gauge coupling*)
	DefineCoupling[coupling, SelfConjugate -> True];

	(*Add gauge field*)
	DefineField[gaugeField, Vector, Indices-> If[lieGroup=!= U1,{grName@ adj},{}], Mass-> 0, SelfConjugate-> True];
];


(* ::Text:: *)
(*Order indices of structure constants*)


CG[fStruct[group_],indices_]/;(!OrderedQ[indices]):=Signature[indices]CG[fStruct[group],Sort@indices]


(* ::Subsection::Closed:: *)
(*Removing gauge group*)


RemoveGaugeGroup[alias_]:= If[KeyExistsQ[$GaugeGroups,alias],
					          RemoveCoupling[$GaugeGroups[alias][Coupling]];
					          RemoveField/@FieldsFromGroup[alias];
					          RemoveCG/@GetGaugeGroups[alias][ClebschGordanCoefficients];
					          RemoveRepresentation/@GetGaugeGroups[alias][Representations];
					          KeyDropFrom[$IndexAlphabets, Keys@Select[GroupMagic`PackageScope`$Representations,#[GroupMagic`PackageScope`GroupName]===alias&]];
					          If[!MatchQ[$GaugeGroups[alias][Group], U1],RemoveGroup[alias];];
							  KeyDropFrom[$GaugeGroups, alias];
							  Remove@alias;
					       ];


ResetGaugeGroups[]:=(RemoveGaugeGroup/@Keys[$GaugeGroups[]];);


(* ::Section:: *)
(*Global groups*)


(* ::Subsection::Closed:: *)
(*Association of all global groups*)


(* ::Text:: *)
(*Basic global group information*)


$GlobalGroups= <||>;
GetGlobalGroups[GlobalGroupName___]:=Module[{$tmpGlobal},
	$tmpGlobal=$GlobalGroups;
	Table[
		AppendTo[$tmpGlobal[i], ClebschGordanCoefficients -> Keys@Select[GroupMagic`PackageScope`$CGproperties,#[GroupMagic`PackageScope`GroupName]==i&]];
		AppendTo[$tmpGlobal[i], Representations -> Keys@Select[GroupMagic`PackageScope`$Representations,#[GroupMagic`PackageScope`GroupName]==i&]];
	,{i,Keys@$GlobalGroups}];
	$tmpGlobal[GlobalGroupName]
];


(* ::Subsection:: *)
(*Defining global group *)


(* ::Subsubsection::Closed:: *)
(*Error messages*)


DefineGlobalGroup::GroupName = "The group name '`1`' is not a Symbol, it is already used in some loaded context or already has some definitions. Please use another group name.";
DefineGlobalGroup::LieGroup  = "'`1`' is not a known simple group.";


(* ::Subsubsection::Closed:: *)
(*Options*)


(* Define the option patterns for DefineGlobalGroup *)
Options[DefineGlobalGroup] = {FundAlphabet -> None, AdjAlphabet -> None}


(* ::Subsubsection::Closed:: *)
(*DefineGlobalGroup*)


(* ::Text:: *)
(*Function to define a global group together with some basic representations and Clebsch-Gordan coefficients*)


DefineGlobalGroup[grName_,lieGroup_,opts:OptionsPattern[]]? OptionsCheck:=
DefineGlobalGroup[grName,lieGroup,opts]=Module[{},
	(*Check that the symbol 'grName' is not yet in use.*)
	If[Defined[grName]||KeyExistsQ[$FlavorIndices,grName]||KeyExistsQ[$GaugeGroups,grName]||KeyExistsQ[$GlobalGroups,grName],
		Message[DefineGlobalGroup::GroupName,grName];
		Abort[]
	];

	(*Check that the symbol 'lieGroup' is a valid simple Lie group.*)
	If[!MatchQ[lieGroup, U1|Alg["A",n_?Positive]|Alg["B",n_?(#>1&)]|Alg["C",n_?(#>1&)]|Alg["D",n_?(#>2&)]|Alg["E",n_?(MatchQ[#,6|7|8]&)]|Alg["F",4]|Alg["G",2]],
		Message[DefineGlobalGroup::LieGroup,lieGroup];
		Abort[]
	];

	(*Update list of global groups*)
	AppendTo[$GlobalGroups, grName-> <|
			Group-> lieGroup,
			Abelian-> lieGroup === U1
	|>];

	(*Define a usage message*)
	grName::usage=ToString[grName]<> " is the label of a global symmetry.";

	(*Set up Lie group for non-Ablelian gauge groups*)
	If[lieGroup=!= U1,
		(*Add group*)
		DefineGroup[grName, lieGroup];

		(*Add common representations*)
		If[lieGroup===Alg["E",8],
			DefineGroupRepresentation[grName@adj, grName, AdjointRepresentation@lieGroup,IndexAlphabet -> OptionValue@AdjAlphabet];
			,
			DefineGroupRepresentation[grName@adj, grName, AdjointRepresentation@lieGroup,IndexAlphabet -> OptionValue@AdjAlphabet];
			DefineGroupRepresentation[grName@fund, grName, FundamentalRepresentation@lieGroup,IndexAlphabet -> OptionValue@FundAlphabet];
		];

		(*Add structure constants and common CGs for SU(N) algebras (limited to N\[LessEqual]5 for performance reasons)*)
		DefineCG[fStruct@grName,{grName@adj,grName@adj,grName@adj},StructureConstants@lieGroup];
		If[MatchQ[lieGroup, Alg["A",n_?(#>0 && #<5 &)]],
			DefineCG[eps@grName,Table[grName@fund,lieGroup[[2]]+1],First@InvariantTensors[lieGroup, Table[FundamentalRepresentation@lieGroup,lieGroup[[2]]+1],AntisymmetricIndices->Range[lieGroup[[2]]+1],Normalization->(lieGroup[[2]]+1)!]];
		];
		If[MatchQ[lieGroup, Alg["A",n_?(#>1 && #<5 &)]],
			DefineCG[dSym@grName,{grName@adj,grName@adj,grName@adj},First@InvariantTensors[lieGroup, {AdjointRepresentation@lieGroup, AdjointRepresentation@lieGroup, AdjointRepresentation@lieGroup},SymmetricIndices->{1,2,3},Normalization->((lieGroup[[2]]+1)^2-1)((lieGroup[[2]]+1)^2-4)/(lieGroup[[2]]+1)]];
		];
		
		(*Add two-index invariant CGs for Sp(N) algebras*)
		If[MatchQ[lieGroup, Alg["C", _]],
			DefineCG[eps@ grName, Table[grName@ fund, 2], 
				First@ InvariantTensors[lieGroup, Table[FundamentalRepresentation@lieGroup, 2],
					AntisymmetricIndices-> {1, 2}, Normalization-> 2* lieGroup[[2]]]];
		];
	];
];


(* ::Subsection::Closed:: *)
(*Removing global group*)


RemoveGlobalGroup[alias_]:= Module[{},
					       If[KeyExistsQ[$GlobalGroups,alias],
					          RemoveCG/@GetGlobalGroups[alias][ClebschGordanCoefficients];
					          RemoveRepresentation/@GetGlobalGroups[alias][Representations];
					          KeyDropFrom[$IndexAlphabets, Keys@Select[GroupMagic`PackageScope`$Representations,#[GroupMagic`PackageScope`GroupName]===alias&]];
					          If[!MatchQ[GetGlobalGroups[alias][Group], U1],RemoveGroup[alias];];
							  KeyDropFrom[$GlobalGroups, alias];
							  Remove@alias;
					       ];
					      ]


ResetGlobalGroups[]:=(RemoveGlobalGroup/@Keys[$GlobalGroups[]];);


(* ::Section::Closed:: *)
(*Reset all*)


ResetAll[]:= (
		ResetFields[];
		ResetCouplings[];
		ResetFlavorIndices[];
		ResetGaugeGroups[];
		ResetGlobalGroups[];
		ClearGroups[];(*needed to reset the CG numbering*)
		ResetOperatorAssociations[];
		ResetTempCouplings[];
	);


(* ::Section:: *)
(*Lagrangian*)


(* ::Subsection::Closed:: *)
(*Hermitian conjugate*)


(* ::Text:: *)
(*Ease of life function for adding '+H.c.' terms to the Lagrangian*)


PlusHc[x_]:=x+Bar@x


(* ::Subsection::Closed:: *)
(*Free Lagrangian*)


FreeLag::UndefinedField = "The field '`1`' has not been defined.";


FreeLag[field_Symbol]:=Module[
	{FieldType,MassInd,FieldInd,indK,ind1,ind2,indM,m,i,j,a,\[Mu],\[Nu]},

	(* Check if the field has been defined *)
	If[!KeyExistsQ[$FieldAssociation,field],Message[FreeLag::UndefinedField,field];Abort[]];

	MassInd=GetCouplings[$FieldAssociation[field][Mass]][Indices]//DeleteDuplicates;
	FieldInd=$FieldAssociation[field][Indices];
	FieldType=$FieldAssociation[field][Type];

	indK = Table[a,{n,Length@FieldInd}]/.List->Sequence;

	If[GetFields[field][Mass]=!=0,
		ind1 = Table[If[MemberQ[MassInd,FieldInd[[n]]],i,a],{n,Length@FieldInd}]/.List->Sequence;
		indM = If[$FieldAssociation[field][Heavy],
				  Table[i,Length@MassInd]/.List->Sequence,
				  Flatten@Table[{i,j},Length@MassInd]/.List->Sequence
			   ];
		ind2 = If[$FieldAssociation[field][Heavy],
				 ind1,
			     Table[If[MemberQ[MassInd,FieldInd[[n]]],j,a],{n,Length@FieldInd}]/.List->Sequence
		       ];
		m=GetFields[field][Mass][indM];
		,
		ind1=indK;
		ind2=indK;
		m=0;
	];

	If[$FieldAssociation[field][SelfConjugate]==True,1/2,1]Switch[FieldType,
		Scalar|Ghost,
			(Bar[CD[\[Mu],field[indK]]]**CD[\[Mu],field[indK]] - m^2 Bar[field[ind1]]**field[ind2]),
		Fermion,
			If[$FieldAssociation[field][Chiral]===False,
				(I Bar[field[indK]]**\[Gamma][\[Mu]]**CD[\[Mu],field[indK]] - PlusHc[m/2 Bar[field[ind1]]**field[ind2]])
				,
				(I Bar[field[indK]]**\[Gamma][\[Mu]]**CD[\[Mu],field[indK]] - PlusHc[m/4 (Bar[CConj[field[ind1]]]**field[ind2]+Bar[field[ind1]]**CConj[field[ind2]])])
			],
		Vector,
			(-1/2 Bar[FS[field,\[Mu],\[Nu],indK]]**FS[field,\[Mu],\[Nu],indK] + m^2 Bar[field[\[Mu],ind1]]**field[\[Mu],ind2])
	]//Expand//RelabelIndices
]


FreeLag[field_, fields__]:=Plus@@FreeLag/@List[field, fields]
FreeLag[]:=Sum[FreeLag[f],{f,Keys[GetFields[]]}]


(* ::Subsection::Closed:: *)
(*Kinetic Lagrangian*)


(* ::Text:: *)
(*This is the part of the free Lagrangian that reproduces the Kinetic piece, \[CapitalDelta], of the fluctuation operator (see [2012.08506] eq. (2.3)).*)


KinOpLagrangian[field_, fields__]:= Plus@@ KinOpLagrangian/@ {field, fields};


KinOpLagrangian[]= 0;
KinOpLagrangian[field_Symbol]:=Module[
		{FieldType, MassInd, FieldInd, indK, ind1, ind2, indM, m, i, j, a, \[Mu], \[Nu],fluctuation},
	FieldInd= GetFields[field, Indices];
	FieldType= GetFields[field, Type];

	indK= Sequence@@ Table[a, {n, Length@ FieldInd}];

	If[GetFieldsUpdated[field, Heavy],
		MassInd= DeleteDuplicates@ GetCouplings[GetFieldsUpdated[field, Mass], Indices];
		ind1 = Sequence@@ Table[If[MemberQ[MassInd, FieldInd[[n]]], i, a], {n, Length@ FieldInd}];
		indM = Sequence@@ Table[i, Length@ MassInd];
		ind2 = ind1;
		m= GetFieldsUpdated[field, Mass]@ indM;
	,
		ind1= ind2= indK;
		m= 0;
	];

	If[GetFields[field, SelfConjugate], 1/2, 1]Switch[FieldType
		,Scalar| Ghost,
			Bar[BackgroundCD[\[Mu],field[indK]]]**BackgroundCD[\[Mu],field[indK]] - m^2 Bar[field[ind1]]**field[ind2]
		,Fermion,
			If[GetFields[field][Chiral]===False,
				I Bar[field[indK]]**\[Gamma][\[Mu]]**BackgroundCD[\[Mu],field[indK]] - m Bar[field[ind1]]**field[ind2]
			,
				I Bar[field[indK]]**\[Gamma][\[Mu]]**BackgroundCD[\[Mu],field[indK]] - m/2 (Bar[CConj[field[ind1]]]**field[ind2]+ Bar[field[ind1]]**CConj[field[ind2]])
			]
		,Vector,
			-Bar@ BackgroundCD[\[Mu], field[\[Nu], indK]]** BackgroundCD[\[Mu], field[\[Nu], indK]] + m^2 Bar[field[\[Mu],ind1]]**field[\[Mu],ind2]
	]//Expand//RelabelIndices
];


(* ::Subsection::Closed:: *)
(*Routine to load Lagrangians*)


(* ::Subsubsection::Closed:: *)
(*Error messages*)


LoadModel::ModelName  = "The model name '`1`' is not a string or does not correspond to one of the predefined models. Please use the name of the predefined models."
LoadModel::Parameters = "One or more of the parameters in the ModelParameters option does not belong to the list of '`1`' model parameters."
LoadModel::Alphabets  = "One or more of the index alphabets in the IndexAlphabet option does not belong to the list of '`1`' indices."


(* ::Subsubsection::Closed:: *)
(*Options*)


Options[LoadModel]={ModelParameters -> {}, IndexAlphabet -> {}}


(* ::Subsubsection::Closed:: *)
(*Load model*)


GetModels[]:=FileBaseName/@FileNames["*.m",FileNameJoin[{$MatchetePath,"Models"}]]


LoadModel[modelName_,opts:OptionsPattern[]]? OptionsCheck:= Module[{
	params=OptionValue@ModelParameters,
	alphabets=OptionValue@IndexAlphabet,
	Lagrangian=Global`MatcheteLagrangian,
	LagParam,
	IndAlphabet,
	modelPath=FileNameJoin[{$MatchetePath,"Models",modelName<>".m"}]
	},

	(* Check that ModelName is a string and that the model file exits *)
	If[Head@modelName=!=String || !FileExistsQ[modelPath],
		Message[LoadModel::ModelName,modelName];
		Abort[]
	];

	Import[modelPath];
	LagParam=AssociationMap[Symbol,Global`MatcheteLagrangianParameters[modelName]];
	IndAlphabet=Association@Global`MatcheteLagrangianAlphabets[modelName];

	(* Check that the model parameters option contains only well defined keys *)
	If[!And@@(MemberQ[Keys@LagParam,#]&/@Keys@Association@params),
		Message[LoadModel::Parameters,modelName];
		Abort[]
	];

	(* Check that the index alphabets contains only well defined keys *)
	If[!And@@(MemberQ[Keys@IndAlphabet,#]&/@Keys@Association@alphabets),
		Message[LoadModel::Alphabets,modelName];
		Abort[]
	];


	If[KeyExistsQ[LagParam,#[[1]]],AssociateTo[LagParam,#]]&/@params;
	If[KeyExistsQ[IndAlphabet,#[[1]]],AssociateTo[IndAlphabet,#]]&/@alphabets;

	Lagrangian[modelName,Normal@LagParam,Normal@IndAlphabet]
]
