# **Matchete changelog**

### v0.4.1 (2026-02-18)
- `EOMSimplify` now accounts for the axial anomaly contribuions.
- Expanded the documentation.
- `IntroduceEffectiveCouplings` now has the option `FactorOutHbar` (default True) to factor out hbar in couplings that are purely one-loop order.
- Bug fixes:
	- Fixed bug where `EOMSimplify` would not properly account for charge conjugated fermions.
	- Fixed bug where `EOMSimplify` would not identify EOMs of fermions multiplied by $\gamma_5$.
	- Fixed bug in `RenameCG` (it wasn't properly updating all of the global state). 
	- Fixed a bug in `ExportWCxf`.
    - Fixed a bug in `IntroduceEffectiveCouplings` where antihermitian couplings were treated as hermitian.
    - Fixed a bug in `EpsExpand` related to a changed behavior in Series since Mathematica 14.3.    
- Performance and improvements:
	- Improved robustness of `GreensSimplify` on operators with factorized `CG` coefficients.	
	- Massive performance improvements for `ContractCGs` and other `CG` related functions. 
	- Drastically reduced memory use of `CG` machinery. 
	- Improved performance for tree-level matching with complicated Lagrangians.
	- Better handling for group algebras $B_1$, $B_2$, $D_3$ isomorphic to the $A_1$, $C_2$, $A_3$. 

## v0.4.0 (2025-11-14)
- Now uses `NCM` instead of `NonCommutativeMultiply`; Use of `\[CenterDot]` (shortcut: `[esc] . [esc]`) is encouraged over `**`.
- Included `ExportWCxf` function for exporting WCxf files.
- Included `DR2MS` function that allows to transform.renormalizable Lagrangian in the $\overline{\mathrm{DR}}$ scheme to the $\overline{\mathrm{MS}}$ scheme.
- Introduced `Simplify` option for `MapEffectiveCouplings`, which allows to simplify the right-hand side of all matching conditions.
- Introduced `BackgroundField` option for `DefineField`.
- Removed `RepresentationProperties` in favor of `GetRepresentations`.  
- Renamed model `SMEFT.m` -> `SMEFT_Warsaw.m`. Sign convention on field strength tensors changed to match https://arxiv.org/pdf/1008.4884.
- By default `ReplaceEffectiveCouplings` no longer replaces superleading effective couplings to not upset the EFT power counting. Using the option `Superleading->True` this replacement can still be performed.
- Bug fixes:
	- Fixed compatibility with `Wolfram 14.3`.
	- Fixed bug in `Match` from loops involving derivative interactions (Xterms with open derivatives).
	- Several bug fixes concerning Majorana fermions and charge conjugation.
	- Fixed bug in `EOMSimplify`, failing to remove EOM terms proportional to multiple field strength tensors.
	- Corrected redefinition of renormalizable couplings (inparticular for of scalar quartics) when using `MapEffectiveCouplings` with the option `ShiftRenCouplings->True`. Previously, indirect contributions to the renormalizable couplings from field redefinitions/EOMs where not considered for the shift.
- Performance and improvements:
	- Improved performance for `GreensSimplify` for higher dimension operators.
	- Added a more reliable algorithm for solving the matching conditions in `MapEffectiveCouplings`.
	- Improved performance of `ContractCGs` when going outside the basis with CGs with many indices.

### v0.3.1 (2025-06-25)
- Fixed installation
- Minor bug fixes

## v0.3.0 (2025-05-30)
- Added option `ReductionIdentities` to `GreensSimplify` and `EOMSimplify` to perform simplifications in either $d=4$ or $d=4-2\epsilon$ space-time dimensions, including the possibility to map results to an evanescent-free version of the $\overline{\text{MS}}$ renormalization scheme.
- Added documentation for all functions and objects in the built-in Mathematica documentation center, which can be accessed conveniently with the \`F1\` key. (w.i.p.)
- Added support for flavor indices on diagonal mass matrices (and other diagonal tensors in flavor space) in the matching and simplifications.
- Introduced `MapEffectiveCouplings` to obtain WC in a particular basis from a generic Lagrangian.
- ___Breaking changes:___
	- File format for model files for `LoadModel` significantly simplified (view documentation for details).
	- Gauge field normalization changed such that gauge couplings appear in front of gauge kinetic terms rather than inside covariant derivatives.  
	- `EOMSimplify` defaults to `ReductionIdentities -> EvanescentFree`, meaning that the Lagrangian is transformed to the evanescent free renormalization scheme.  
- Minor changes:
	- Added functions `IntroduceEffectiveCouplings`, `PrintEffectiveCouplings`, and `ReplaceEffectiveCouplings` to (re)substitute new symbols (couplings) in place of the coefficients in a Lagrangian.
	- Added function `ReplaceInLagrangian` to substitute couplings in a Lagrangian while relabeling indices as required.
	- Added function `SuggestBibliography` to generate bibtex entires with appropriate citations.
	- `DefineField` options `Charges` and `Indices` now accept single entries in addition to lists.
	- `DefineGroupRepresentation` is now deprecated in favor of `DefineRepresentation`.
	- Removed the `` GroupMagic` `` context in favor of using `` Matchete` `` everywhere.
	- The documentation for the group theory fatures has been updated and changed to tech notes in the Mathematica documentation center. Simply search for "GroupMagic" and "CG Coefficients".
- Performance and improvements:
	- Optimized `GreensSimplify` for dimension-8 operators.
	- Changed construction of composite operators in `GreensSimplify`.
	- $ \gamma_5 $-odd ``DiracTrace``s are now performed consistently with NDR following the KKS prescription. Details can be found in the tech note on "Dirac Algebra" in the Mathematica documentation center.
    - Implemented memoization for ``DiracTrace``.
	- Reduced memory usage when matching models with many particles and interactions.
	- Optimized the way coefficients are simplified in calls of `GreensSimplify` or `EOMSimplify`.
	- Greatly improved notebook file size from `NiceForm` output.


## v0.2.0 (2024-04-22)
- Traces are now computed covariantly with Wilson lines rather than CDE. Improved `Match` performance at one-loop order.
- Match automatically identifies heavy and light fields and updates the masses according to the Lagrangian.
- Introduced option `DummyCoefficients -> True/False` in `EOMSimplify`.
- Implemented `GetOperatorCoefficient` to extract coefficients of specific EFT operators.
- Improved the ability of `GreensSimplify` to determine when operators trivially vanish under symmetry.
- Collection of coefficients in `CollectOperators` and `GreensSimplify` now accounts for flavor symmetries of operators.
- Improved performance of `GreensSimplify`.
- New, robust implementation of `HcSimplify`.
- Various bug fixes:
    - Fixed `ContractCGs` for higher dimensional groups.
	- Fixed `GreensSimplify` bug with flavor indices.
	- Fixed `GreensSimplify` bug with multiple gamma matrices on the same fermion line.
	- Allows `HcTerms` as input in various functions.
	- Allows constants in `GreensSimplify` and `CollectOperators`.

### v0.1.8 (2024-02-19)
- Fixed a bug in the CDE of `CovariantLoop`/`Match` that caused non-cyclicity of the traces.
- Improved `HcSimplify`.
- Improved `EvaluateLoopFunctions`.
- Implemented simplification routines to `LF` (Loop functions).
- Introduced `ShiftRankCouplings`, which absorbs EFT corrections into the renormalized couplings.
- EFT power counting is now directly determined from the Lagrangian rather than from the field definitions.

### v0.1.7 (2023-11-02)
- Fixed a bug in `GreensSimplify` in models with Majorana fermions.
- Tweaks to `HcSimplify`.
- Fixed an issue with `EOMSimplify` when field redefinitions took the form of the kinetic term.
- Fixed an issue where `CheckLagrangian` would not recognize some pre-defined objects.

### v0.1.6 (2023-10-09)
- Fixed a bug in field redefinitions involving non-hermitian superleading terms.
- Field redefinitions now count powers of hbar prior to inserting redefinitions, improving performance.
- Introduced the option `DummyCoefficients` for `EOMSimplify`, improving performance when simplifying large Lagrangians.

### v0.1.5 (2023-06-20)
- Various bugfixes applied to the simplification routines.

### v0.1.4 (2023-04-13)
- Improved performance of `EOMSimplify`
- Improved performance of `Match`
- Fixed bug with option "`EFTOrder`" in "`CovariantLoop`"
- Fixed bug with DiracTrace of 8 or more gammas
- Extended DiracTrace with NDR value for traces of gamma5 and 6 or more gammas

### v0.1.3 (2023-03-14)
- Added check for invalid spinor contractions with the C matrix in `CheckLagrangian`
- Fixed use of syntax e.g. "`EFTOrder-> {6}`" in Match
- Fixed action of gauge groups on fields in conjugate (Bar'ed) representations

### v0.1.2 (2023-02-10)
- Fixed issues when dealing with global gauge groups
- Improved `MatchToCGs` efficiency

### v0.1.1 (2023-01-14)
- Fixed an issue with field redefinitions on Mathematica 12
- Minor bug fixes

## v0.1.0 (2022-12-08)
- Initial release
