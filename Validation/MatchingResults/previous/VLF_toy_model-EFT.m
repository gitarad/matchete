(* Created with the Wolfram Language : www.wolfram.com *)
<|"Model" -> "VLF_toy_model", "Version" -> "0.2.0", 
 "Date" -> DateObject[{2024, 2, 23}, "Day"], "Time (Match)" -> 3.291698, 
 "Time (GreensSimplify)" -> 0.055026, "Time (EOMSimplify)" -> 0.699729, 
 "UV Lagrangian" -> -1/2*(Coupling[m, {}, 1]^2*Field[\[Phi], Scalar, {}, {}]^
      2) + Field[\[Phi], Scalar, {}, {Index[d$$1, Lorentz]}]^2/2 - 
   FieldStrength[A, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^2/
    4 - Coupling[M, {}, 0]*Bar[Field[\[CapitalPsi], Fermion, {}, {}]]**
     Field[\[CapitalPsi], Fermion, {}, {}] + 
   I*Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]]]**Field[\[Psi], Fermion, {}, 
      {Index[d$$1, Lorentz]}] - Coupling[y, {}, 0]*
    Field[\[Phi], Scalar, {}, {}]*Bar[Field[\[Psi], Fermion, {}, {}]]**
     DiracProduct[Proj[1]]**Field[\[CapitalPsi], Fermion, {}, {}] + 
   I*Bar[Field[\[CapitalPsi], Fermion, {}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]]]**Field[\[CapitalPsi], 
      Fermion, {}, {Index[d$$1, Lorentz]}] - Bar[Coupling[y, {}, 0]]*
    Field[\[Phi], Scalar, {}, {}]*Bar[Field[\[CapitalPsi], Fermion, {}, {}]]**
     DiracProduct[Proj[-1]]**Field[\[Psi], Fermion, {}, {}], 
 "Off-shell EFT Lagrangian" -> 
  (hbar*Bar[Coupling[y, {}, 0]]^3*Coupling[y, {}, 0]^3*
     Field[\[Phi], Scalar, {}, {}]^6)/(3*Coupling[M, {}, 0]^2) + 
   (13*hbar*Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2*
     Field[\[Phi], Scalar, {}, {}]^3*Field[\[Phi], Scalar, {}, 
      {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}])/
    (18*Coupling[M, {}, 0]^2) + (hbar*Bar[Coupling[y, {}, 0]]*
     Coupling[y, {}, 0]*Field[\[Phi], Scalar, {}, {Index[d$$1, Lorentz], 
       Index[d$$1, Lorentz]}]*Field[\[Phi], Scalar, {}, 
      {Index[d$$2, Lorentz], Index[d$$2, Lorentz]}])/
    (3*Coupling[M, {}, 0]^2) + (hbar*Bar[Coupling[y, {}, 0]]*
     Coupling[e, {}, 0]^2*Coupling[y, {}, 0]*Field[\[Phi], Scalar, {}, {}]^2*
     FieldStrength[A, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^
      2)/(3*Coupling[M, {}, 0]^2) - (2*hbar*Coupling[e, {}, 0]^2*
     FieldStrength[A, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
      {Index[d$$2, Lorentz]}]*FieldStrength[A, {Index[d$$1, Lorentz], 
       Index[d$$3, Lorentz]}, {}, {Index[d$$3, Lorentz]}])/
    (15*Coupling[M, {}, 0]^2) + hbar*Field[\[Phi], Scalar, {}, {}]^4*
    (-((Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2)/\[Epsilon]) - 
     Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2*
      Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
   FieldStrength[A, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^2*
    (-1/4 + hbar*(-1/3*Coupling[e, {}, 0]^2/\[Epsilon] - 
       (Coupling[e, {}, 0]^2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/3)) + 
   Field[\[Phi], Scalar, {}, {}]^2*(-1/2*Coupling[m, {}, 1]^2 + 
     hbar*((-2*Bar[Coupling[y, {}, 0]]*Coupling[M, {}, 0]^2*
         Coupling[y, {}, 0])/\[Epsilon] - 2*Bar[Coupling[y, {}, 0]]*
        Coupling[M, {}, 0]^2*Coupling[y, {}, 0]*
        (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))) - 
   Field[\[Phi], Scalar, {}, {Index[d$$1, Lorentz]}]^2*
    (-1/2 + hbar*(-((Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0])/
         \[Epsilon]) - (Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/2)) + 
   I*Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]]]**Field[\[Psi], Fermion, {}, 
      {Index[d$$1, Lorentz]}] + (7*hbar*Bar[Coupling[y, {}, 0]]*
     Coupling[e, {}, 0]*Coupling[y, {}, 0]*FieldStrength[A, 
      {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
      {Index[d$$2, Lorentz]}]*Bar[Field[\[Psi], Fermion, {}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
      Field[\[Psi], Fermion, {}, {}])/(36*Coupling[M, {}, 0]^2) + 
   hbar*(((I/2)*Bar[Coupling[y, {}, 0]]*(2*Coupling[m, {}, 1]^2 + 
        Coupling[M, {}, 0]^2)*Coupling[y, {}, 0])/
      (\[Epsilon]*Coupling[M, {}, 0]^2) + 
     ((I/4)*Bar[Coupling[y, {}, 0]]*(2*Coupling[m, {}, 1]^2 + 
        Coupling[M, {}, 0]^2)*Coupling[y, {}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^2)*
    Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
      {Index[d$$1, Lorentz]}] + 
   (((I/2)*Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0])/Coupling[M, {}, 0]^2 + 
     hbar*(((-I)*Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2)/
        (\[Epsilon]*Coupling[M, {}, 0]^2) - ((I/4)*Bar[Coupling[y, {}, 0]]^2*
         Coupling[y, {}, 0]^2*(5 + 4*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        Coupling[M, {}, 0]^2))*(Field[\[Phi], Scalar, {}, {}]^2*
      Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
        GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
        {Index[d$$1, Lorentz]}] - Field[\[Phi], Scalar, {}, {}]^2*
      Bar[Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[\[Psi], Fermion, {}, {}]) + 
   (hbar*Bar[Coupling[y, {}, 0]]*Coupling[e, {}, 0]*Coupling[y, {}, 0]*
     (FieldStrength[A, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
       Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
         GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
         GammaM[Index[d$$3, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
         {Index[d$$3, Lorentz]}] + FieldStrength[A, {Index[d$$1, Lorentz], 
         Index[d$$2, Lorentz]}, {}, {}]*
       Bar[Field[\[Psi], Fermion, {}, {Index[d$$3, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$3, Lorentz]], 
         GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[-1]]**
        Field[\[Psi], Fermion, {}, {}]))/(8*Coupling[M, {}, 0]^2) + 
   ((I/6)*hbar*Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0]*
     (Bar[Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[\[Psi], Fermion, {}, {Index[d$$2, Lorentz], 
         Index[d$$2, Lorentz]}] - Bar[Field[\[Psi], Fermion, {}, 
         {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]**
       DiracProduct[GammaM[Index[d$$2, Lorentz]], Proj[-1]]**
       Field[\[Psi], Fermion, {}, {Index[d$$2, Lorentz]}]))/
    Coupling[M, {}, 0]^2, "On-shell EFT Lagrangian" -> 
  (hbar*Bar[Coupling[y, {}, 0]]^3*Coupling[y, {}, 0]^3*
     Field[\[Phi], Scalar, {}, {}]^6)/(3*Coupling[M, {}, 0]^2) + 
   Field[\[Phi], Scalar, {}, {Index[d$$1, Lorentz]}]^2/2 + 
   (hbar*Bar[Coupling[y, {}, 0]]*Coupling[e, {}, 0]^2*Coupling[y, {}, 0]*
     Field[\[Phi], Scalar, {}, {}]^2*
     FieldStrength[A, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^
      2)/(3*Coupling[M, {}, 0]^2) + 
   FieldStrength[A, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^2*
    (-1/4 + hbar*(-1/3*Coupling[e, {}, 0]^2/\[Epsilon] - 
       (Coupling[e, {}, 0]^2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/3)) + 
   hbar*Field[\[Phi], Scalar, {}, {}]^4*
    (-((Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2)/\[Epsilon]) + 
     (Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2*
       (-9*Coupling[M, {}, 0]^2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 
        13*(-1/2*Coupling[m, {}, 1]^2 - 2*hbar*Bar[Coupling[y, {}, 0]]*
           Coupling[M, {}, 0]^2*Coupling[y, {}, 0] - 
          (2*hbar*Bar[Coupling[y, {}, 0]]*Coupling[M, {}, 0]^2*
            Coupling[y, {}, 0])/\[Epsilon] - 2*hbar*Bar[Coupling[y, {}, 0]]*
           Coupling[M, {}, 0]^2*Coupling[y, {}, 0]*
           Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/(9*Coupling[M, {}, 0]^2)) + 
   Field[\[Phi], Scalar, {}, {}]^2*(-1/2*Coupling[m, {}, 1]^2 - 
     2*hbar*Bar[Coupling[y, {}, 0]]*Coupling[M, {}, 0]^2*Coupling[y, {}, 0] - 
     (2*hbar*Bar[Coupling[y, {}, 0]]*Coupling[M, {}, 0]^2*Coupling[y, {}, 0])/
      \[Epsilon] - 2*hbar*Bar[Coupling[y, {}, 0]]*Coupling[M, {}, 0]^2*
      Coupling[y, {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 
     hbar*((-2*Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0]*
         (-1/2*Coupling[m, {}, 1]^2 - 2*hbar*Bar[Coupling[y, {}, 0]]*
           Coupling[M, {}, 0]^2*Coupling[y, {}, 0] - 
          (2*hbar*Bar[Coupling[y, {}, 0]]*Coupling[M, {}, 0]^2*
            Coupling[y, {}, 0])/\[Epsilon] - 2*hbar*Bar[Coupling[y, {}, 0]]*
           Coupling[M, {}, 0]^2*Coupling[y, {}, 0]*
           Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/\[Epsilon] + 
       (Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0]*
         (-1/2*Coupling[m, {}, 1]^2 - 2*hbar*Bar[Coupling[y, {}, 0]]*
           Coupling[M, {}, 0]^2*Coupling[y, {}, 0] - 
          (2*hbar*Bar[Coupling[y, {}, 0]]*Coupling[M, {}, 0]^2*
            Coupling[y, {}, 0])/\[Epsilon] - 2*hbar*Bar[Coupling[y, {}, 0]]*
           Coupling[M, {}, 0]^2*Coupling[y, {}, 0]*
           Log[\[Mu]bar2/Coupling[M, {}, 0]^2])*
         (-3*Coupling[M, {}, 0]^2*(1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                2]) + 4*(-1/2*Coupling[m, {}, 1]^2 - 
            2*hbar*Bar[Coupling[y, {}, 0]]*Coupling[M, {}, 0]^2*
             Coupling[y, {}, 0] - (2*hbar*Bar[Coupling[y, {}, 0]]*
              Coupling[M, {}, 0]^2*Coupling[y, {}, 0])/\[Epsilon] - 
            2*hbar*Bar[Coupling[y, {}, 0]]*Coupling[M, {}, 0]^2*
             Coupling[y, {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/
        (3*Coupling[M, {}, 0]^2))) - 
   (2*hbar*Coupling[e, {}, 0]^4*(Bar[Field[\[Psi], Fermion, {}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]]]**Field[\[Psi], Fermion, {}, 
        {}])^2)/(15*Coupling[M, {}, 0]^2) + 
   I*Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]]]**Field[\[Psi], Fermion, {}, 
      {Index[d$$1, Lorentz]}] + (7*hbar*Bar[Coupling[y, {}, 0]]*
     Coupling[e, {}, 0]^2*Coupling[y, {}, 0]*
     Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]]]**Field[\[Psi], Fermion, {}, {}]*
     Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
       {}])/(36*Coupling[M, {}, 0]^2), "SuperTraces" -> 
  <|"hFermion-lScalar" -> (7*hbar*Bar[Coupling[y, {}, 0]]*Coupling[e, {}, 0]*
       Coupling[y, {}, 0]*FieldStrength[A, {Index[d$$1, Lorentz], 
         Index[d$$2, Lorentz]}, {}, {Index[d$$2, Lorentz]}]*
       Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
         {}])/(36*Coupling[M, {}, 0]^2) + 
     hbar*(((I/2)*Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0])/\[Epsilon] + 
       (I/4)*Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0]*
        (3 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))*
      Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
        GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
        {Index[d$$1, Lorentz]}] + (hbar*Bar[Coupling[y, {}, 0]]*
       Coupling[e, {}, 0]*Coupling[y, {}, 0]*
       (FieldStrength[A, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
          {}]*Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
           GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
           GammaM[Index[d$$3, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, 
           {}, {Index[d$$3, Lorentz]}] + 
        FieldStrength[A, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
          {}]*Bar[Field[\[Psi], Fermion, {}, {Index[d$$3, Lorentz]}]]**
          DiracProduct[GammaM[Index[d$$3, Lorentz]], 
           GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[-1]]**
          Field[\[Psi], Fermion, {}, {}]))/(8*Coupling[M, {}, 0]^2) + 
     ((I/6)*hbar*Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0]*
       (Bar[Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}]]**
         DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[\[Psi], Fermion, {}, {Index[d$$2, Lorentz], 
           Index[d$$2, Lorentz]}] - Bar[Field[\[Psi], Fermion, {}, 
           {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]**
         DiracProduct[GammaM[Index[d$$2, Lorentz]], Proj[-1]]**
         Field[\[Psi], Fermion, {}, {Index[d$$2, Lorentz]}]))/
      Coupling[M, {}, 0]^2, "hFermion-lFermion" -> 
    (hbar*Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0]*Field[\[Phi], Scalar, 
        {}, {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]*
       Field[\[Phi], Scalar, {}, {Index[d$$2, Lorentz], 
         Index[d$$2, Lorentz]}])/(3*Coupling[M, {}, 0]^2) + 
     (hbar*Bar[Coupling[y, {}, 0]]*Coupling[e, {}, 0]^2*Coupling[y, {}, 0]*
       Field[\[Phi], Scalar, {}, {}]^2*
       FieldStrength[A, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^
        2)/(3*Coupling[M, {}, 0]^2) + hbar*Field[\[Phi], Scalar, {}, {}]^2*
      ((-2*Bar[Coupling[y, {}, 0]]*Coupling[M, {}, 0]^2*Coupling[y, {}, 0])/
        \[Epsilon] - 2*Bar[Coupling[y, {}, 0]]*Coupling[M, {}, 0]^2*
        Coupling[y, {}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2])) - 
     hbar*Field[\[Phi], Scalar, {}, {Index[d$$1, Lorentz]}]^2*
      (-((Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0])/\[Epsilon]) - 
       (Bar[Coupling[y, {}, 0]]*Coupling[y, {}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/2), 
   "hFermion-lVector" -> hbar*((((-7*I)/2)*Bar[Coupling[y, {}, 0]]*
        Coupling[e, {}, 0]^2*Coupling[y, {}, 0])/
       (\[Epsilon]*Coupling[M, {}, 0]^2) - (((7*I)/4)*Bar[Coupling[y, {}, 0]]*
        Coupling[e, {}, 0]^2*Coupling[y, {}, 0]*
        (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^2)*
     (Field[\[Phi], Scalar, {}, {}]^2*Bar[Field[\[Psi], Fermion, {}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}] - 
      Field[\[Phi], Scalar, {}, {}]^2*
       Bar[Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[\[Psi], Fermion, {}, {}]), "hFermion-lScalar-lScalar" -> 
    hbar*((I*Bar[Coupling[y, {}, 0]]*Coupling[m, {}, 1]^2*Coupling[y, {}, 0])/
       (\[Epsilon]*Coupling[M, {}, 0]^2) + ((I/2)*Bar[Coupling[y, {}, 0]]*
        Coupling[m, {}, 1]^2*Coupling[y, {}, 0]*
        (3 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^2)*
     Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
       {Index[d$$1, Lorentz]}], "hFermion-lScalar-lFermion" -> 
    hbar*(((-1/2*I)*Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2)/
       (\[Epsilon]*Coupling[M, {}, 0]^2) - ((I/2)*Bar[Coupling[y, {}, 0]]^2*
        Coupling[y, {}, 0]^2*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
       Coupling[M, {}, 0]^2)*(Field[\[Phi], Scalar, {}, {}]^2*
       Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
         {Index[d$$1, Lorentz]}] - Field[\[Phi], Scalar, {}, {}]^2*
       Bar[Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[\[Psi], Fermion, {}, {}]), "hFermion-lFermion-lScalar" -> 
    hbar*(((-1/2*I)*Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2)/
       (\[Epsilon]*Coupling[M, {}, 0]^2) - ((I/2)*Bar[Coupling[y, {}, 0]]^2*
        Coupling[y, {}, 0]^2*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
       Coupling[M, {}, 0]^2)*(Field[\[Phi], Scalar, {}, {}]^2*
       Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
         {Index[d$$1, Lorentz]}] - Field[\[Phi], Scalar, {}, {}]^2*
       Bar[Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[\[Psi], Fermion, {}, {}]), "hFermion-lFermion-lVector" -> 
    hbar*((((3*I)/2)*Bar[Coupling[y, {}, 0]]*Coupling[e, {}, 0]^2*
        Coupling[y, {}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
      (((3*I)/4)*Bar[Coupling[y, {}, 0]]*Coupling[e, {}, 0]^2*
        Coupling[y, {}, 0]*(1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
       Coupling[M, {}, 0]^2)*(Field[\[Phi], Scalar, {}, {}]^2*
       Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
         {Index[d$$1, Lorentz]}] - Field[\[Phi], Scalar, {}, {}]^2*
       Bar[Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[\[Psi], Fermion, {}, {}]), "hFermion-lVector-lFermion" -> 
    hbar*((((3*I)/2)*Bar[Coupling[y, {}, 0]]*Coupling[e, {}, 0]^2*
        Coupling[y, {}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
      (((3*I)/4)*Bar[Coupling[y, {}, 0]]*Coupling[e, {}, 0]^2*
        Coupling[y, {}, 0]*(1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
       Coupling[M, {}, 0]^2)*(Field[\[Phi], Scalar, {}, {}]^2*
       Bar[Field[\[Psi], Fermion, {}, {}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
         {Index[d$$1, Lorentz]}] - Field[\[Phi], Scalar, {}, {}]^2*
       Bar[Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[\[Psi], Fermion, {}, {}]), 
   "hFermion-lScalar-hFermion-lScalar" -> 0, 
   "hFermion-lScalar-hFermion-lFermion" -> 
    ((-1/4*I)*hbar*Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2*
      (Field[\[Phi], Scalar, {}, {}]^2*Bar[Field[\[Psi], Fermion, {}, {}]]**
         DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}] - 
       Field[\[Phi], Scalar, {}, {}]^2*Bar[Field[\[Psi], Fermion, {}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[\[Psi], Fermion, {}, 
          {}]))/Coupling[M, {}, 0]^2, 
   "hFermion-lFermion-hFermion-lFermion" -> 
    (13*hbar*Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2*
       Field[\[Phi], Scalar, {}, {}]^3*Field[\[Phi], Scalar, {}, 
        {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}])/
      (18*Coupling[M, {}, 0]^2) + hbar*Field[\[Phi], Scalar, {}, {}]^4*
      (-((Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2)/\[Epsilon]) - 
       Bar[Coupling[y, {}, 0]]^2*Coupling[y, {}, 0]^2*
        Log[\[Mu]bar2/Coupling[M, {}, 0]^2]), 
   "hFermion-lFermion-lVector-lFermion" -> 
    hbar*(((I/2)*Bar[Coupling[y, {}, 0]]*Coupling[e, {}, 0]^2*
        Coupling[y, {}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
      ((I/4)*Bar[Coupling[y, {}, 0]]*Coupling[e, {}, 0]^2*Coupling[y, {}, 0]*
        (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^2)*
     (Field[\[Phi], Scalar, {}, {}]^2*Bar[Field[\[Psi], Fermion, {}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}] - 
      Field[\[Phi], Scalar, {}, {}]^2*
       Bar[Field[\[Psi], Fermion, {}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[\[Psi], Fermion, {}, {}]), 
   "hFermion-lFermion-hFermion-lFermion-hFermion-lFermion" -> 
    (hbar*Bar[Coupling[y, {}, 0]]^3*Coupling[y, {}, 0]^3*
      Field[\[Phi], Scalar, {}, {}]^6)/(3*Coupling[M, {}, 0]^2)|>|>
