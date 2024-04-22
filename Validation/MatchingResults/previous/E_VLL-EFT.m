(* Created with the Wolfram Language : www.wolfram.com *)
<|"Model" -> "E_VLL", "Version" -> "0.2.0", 
 "Date" -> DateObject[{2024, 2, 23}, "Day"], "Time (Match)" -> 10.431561, 
 "Time (GreensSimplify)" -> 0.353635, "Time (EOMSimplify)" -> 13.8454, 
 "UV Lagrangian" -> Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Coupling[\[Mu], {}, 1]^2*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
     {}] + Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
     {Index[d$$1, Lorentz]}] - 
   (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
     Coupling[\[Lambda], {}, 0]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}])/2 - 
   FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^2/
    4 - FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]^2/4 - 
   FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}]^2/4 - Coupling[ME, {}, 0]*
    Bar[Field[EE, Fermion, {}, {}]]**Field[EE, Fermion, {}, {}] + 
   I*Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] - 
   Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   I*Bar[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
   Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + I*Bar[Field[EE, Fermion, {}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]]]**Field[EE, Fermion, {}, 
      {Index[d$$1, Lorentz]}] - Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
    Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[EE, Fermion, {}, {}]]**DiracProduct[Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}] - 
   Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$2, Flavor]}, 
      {}] - Coupling[yE, {Index[d$$1, Flavor]}, 0]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[EE, Fermion, {}, {}] + 
   I*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] - 
   Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   I*Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   I*Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] - 
   Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}], "Off-shell EFT Lagrangian" -> 
  (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
        Index[d$$1, Lorentz]}]]*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$2, Lorentz], 
       Index[d$$2, Lorentz]}])/(3*Coupling[ME, {}, 0]^2) + 
   (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
     Coupling[yE, {Index[d$$2, Flavor]}, 0]*
     (Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$1, Flavor]}, 0] + 
      6*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])*
     (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz], 
          Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
      Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
         Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {}]))/(6*Coupling[ME, {}, 0]^2) + 
   (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^
      2)/(8*Coupling[ME, {}, 0]^2) - 
   (2*hbar*Coupling[gY, {}, 0]^2*FieldStrength[B, {Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]}, {}, {Index[d$$2, Lorentz]}]*
     FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$3, Lorentz]}, {}, 
      {Index[d$$3, Lorentz]}])/(15*Coupling[ME, {}, 0]^2) - 
   FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]^2/4 - 
   (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[gL, {}, 0]*Coupling[gY, {}, 0]*
     Coupling[yE, {Index[d$$1, Flavor]}, 0]*Field[H, Scalar, 
      {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[B, 
      {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}])/(3*Coupling[ME, {}, 0]^2) - 
   FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}]^2/4 + 
   (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {}]^2)/(24*Coupling[ME, {}, 0]^2) + 
   hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], 
        Index[d$$1, SU2L[fund]], Bar[Index[d$$2, SU2L[fund]]]}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {Index[d$$2, Lorentz]}] - 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
        Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
       {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {Index[d$$2, Lorentz]}])*
    (((I/3)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[gL, {}, 0]*
       Coupling[yE, {Index[d$$1, Flavor]}, 0])/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     ((I/18)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[gL, {}, 0]*
       Coupling[yE, {Index[d$$1, Flavor]}, 0]*
       (5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2) + 
   hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
       {Index[d$$2, Lorentz]}] - 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
       {Index[d$$2, Lorentz]}])*
    (((-1/6*I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[gY, {}, 0]*Coupling[yE, {Index[d$$1, Flavor]}, 0])/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
     ((I/36)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[gY, {}, 0]*
       Coupling[yE, {Index[d$$1, Flavor]}, 0]*
       (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
      Coupling[ME, {}, 0]^2) + 
   FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^2*
    (-1/4 + hbar*(-1/3*Coupling[gY, {}, 0]^2/\[Epsilon] - 
       (Coupling[gY, {}, 0]^2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])/3)) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (Coupling[\[Mu], {}, 1]^2 + 
     hbar*((-2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[ME, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0])/
        \[Epsilon] - 2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Coupling[ME, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
        (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
    ((-2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       (Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$1, Flavor]}, 0]*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, 
            {Index[d$$2, Flavor]}, 0] + 
          6*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[Ye, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]) - 
        6*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      (3*Coupling[ME, {}, 0]^2)) - 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    (-1 + hbar*(-((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$1, Flavor]}, 0])/\[Epsilon]) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$1, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/2)) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*
       (-(Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*Coupling[yE, 
           {Index[d$$1, Flavor]}, 0]) + 
        Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      (2*Coupling[ME, {}, 0]^2)) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    ((2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*
       (-2*Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$1, Flavor]}, 0] + 
        3*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      (3*Coupling[ME, {}, 0]^2)) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    (-1/2*Coupling[\[Lambda], {}, 0] + 
     hbar*(-((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$2, Flavor]}, 0]*
          (Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*Coupling[yE, 
             {Index[d$$1, Flavor]}, 0] + 2*Bar[Coupling[Ye, {Index[d$$2, 
                Flavor], Index[d$$3, Flavor]}, 0]]*Coupling[Ye, 
             {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]))/\[Epsilon]) - 
       Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[yE, 
         {Index[d$$2, Flavor]}, 0]*(Bar[Coupling[yE, {Index[d$$2, Flavor]}, 
            0]]*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
          Log[\[Mu]bar2/Coupling[ME, {}, 0]^2] + 
         2*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
          (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))) - 
   Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + I*Delta[Index[d$$1, Flavor], 
     Index[d$$2, Flavor]]*Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[d, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] - 
   Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*(3*Coupling[gY, {}, 0]^2 + 
        2*Coupling[\[Lambda], {}, 0]))/(2*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*
       (2*Coupling[\[Lambda], {}, 0]*(1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^
             2]) + Coupling[gY, {}, 0]^2*
         (1 + 3*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      (2*Coupling[ME, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*(((I/4)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     ((I/8)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
       (-1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
    (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[e, Fermion, {Index[d$$1, Flavor]}, {}]) + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[e, Fermion, {Index[d$$1, Flavor]}, {}]) + 
   I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] + 
   hbar*(((I/4)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     ((I/8)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
    (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[e, Fermion, {Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[e, Fermion, {Index[d$$1, Flavor]}, {}]) - 
   Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] - hbar*FieldStrength[B, {Index[d$$1, Lorentz], 
      Index[d$$2, Lorentz]}, {}, {Index[d$$2, Lorentz]}]*
    ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[gY, {}, 0]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0])/(12*\[Epsilon]*
       Coupling[ME, {}, 0]^2) + (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[gY, {}, 0]*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
       (25 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
      (72*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   (I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]] + 
     hbar*(((I/2)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*(Coupling[ME, {}, 0]^2 - 
          2*Coupling[\[Mu], {}, 1]^2))/(\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*(Coupling[ME, {}, 0]^2 - 
          2*Coupling[\[Mu], {}, 1]^2)*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^
         2))*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
      {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] - hbar*CG[gen[SU2L[fund]], 
     {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
     {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
     {Index[d$$2, Lorentz]}]*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[gL, {}, 0]*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
      (6*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[gL, {}, 0]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*
       (11 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
      (36*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}] - 
   (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[gY, {}, 0]*
     Coupling[yE, {Index[d$$2, Flavor]}, 0]*
     (FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
          Index[d$$1, Lorentz]], GammaM[Index[d$$3, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
         {Index[d$$3, Lorentz]}] + FieldStrength[B, {Index[d$$1, Lorentz], 
         Index[d$$2, Lorentz]}, {}, {}]*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
          {Index[d$$3, Lorentz]}]]**DiracProduct[
         GammaM[Index[d$$3, Lorentz]], GammaM[Index[d$$1, Lorentz], 
          Index[d$$2, Lorentz]], Proj[-1]]**Field[l, Fermion, 
         {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
    (8*Coupling[ME, {}, 0]^2) + 
   ((I/6)*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
     Coupling[yE, {Index[d$$2, Flavor]}, 0]*
     (Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {Index[d$$1, Lorentz]}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
        Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {Index[d$$2, Lorentz], 
         Index[d$$2, Lorentz]}] - 
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]**
       DiracProduct[GammaM[Index[d$$2, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
        {Index[d$$2, Lorentz]}]))/Coupling[ME, {}, 0]^2 + 
   hbar*(-1/4*(Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
          0]]*Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
        Coupling[Yd, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        Coupling[yE, {Index[d$$4, Flavor]}, 0])/(\[Epsilon]*
        Coupling[ME, {}, 0]^2) - 
     (Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
       Coupling[Yd, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[yE, {Index[d$$4, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
      (8*Coupling[ME, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*(-1/4*(Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
        Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
         {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0])/
       (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
     (Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
      (8*Coupling[ME, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
       (3*Coupling[gY, {}, 0]^2 + 2*Coupling[\[Lambda], {}, 0]))/
      (2*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
       (2*Coupling[\[Lambda], {}, 0]*(1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^
             2]) + Coupling[gY, {}, 0]^2*
         (1 + 3*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      (2*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + (((-1/2*I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0])/Coupling[ME, {}, 0]^2 + 
     hbar*((((3*I)/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 + 3*Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0])/(\[Epsilon]*
         Coupling[ME, {}, 0]^2) + 
       ((I/16)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (9*Coupling[gY, {}, 0]^2*(1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
                2]) + Coupling[gL, {}, 0]^2*
           (11 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
        Coupling[ME, {}, 0]^2))*
    (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {}]*Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
           Index[d$$2, Flavor]}, {}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
         {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]) + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
        {}]) + 
   hbar*(((-1/4*I)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (3*Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0] + 
          2*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]) + 
        2*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]))/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
     ((I/8)*(4*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
        Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
           (11 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
          4*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
           (-(Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, {
                Index[d$$2, Flavor]}, 0]) + Bar[Coupling[Ye, {Index[d$$3, 
                 Flavor], Index[d$$4, Flavor]}, 0]]*Coupling[Ye, 
              {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
             (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))))/
      Coupling[ME, {}, 0]^2)*
    (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
           Index[d$$2, Flavor]}, {}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
         {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]) + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
        {}]) + (((I/2)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0])/Coupling[ME, {}, 0]^2 + 
     hbar*(((-1/2*I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*(3*Coupling[gY, {}, 0]^2 - 
          Coupling[\[Lambda], {}, 0]))/(\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*(Coupling[\[Lambda], {}, 0]*
           (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
          2*Coupling[gY, {}, 0]^2*(1 + 3*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
                2])))/Coupling[ME, {}, 0]^2))*
    (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
        {Index[d$$1, Lorentz]}] - 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {Index[d$$1, Lorentz]}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
        Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}]) + 
   hbar*(((I/4)*(Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0] + 
        Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
          2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[\[Lambda], {}, 
            0])))/(\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     ((I/8)*(Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
        Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (-2*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[yE, 
            {Index[d$$3, Flavor]}, 0] + 
          (Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
             Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
              {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
            2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[\[Lambda], {}, 
              0])*(3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
      Coupling[ME, {}, 0]^2)*
    (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
        {Index[d$$1, Lorentz]}] - 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {Index[d$$1, Lorentz]}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
        Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}]) + 
   hbar*(((I/4)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] - 
        Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]))/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     ((I/8)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] - 
        Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0])*
       (5 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
    (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
        {Index[d$$1, Lorentz]}] + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {Index[d$$1, Lorentz]}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
        Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}]) + 
   hbar*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
         {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0] + 
       Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
        Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
         {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0])/
      (8*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
        Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
         {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
        (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
       Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[yE, 
         {Index[d$$4, Flavor]}, 0]*
        (-2*Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$3, Flavor]}, 0] + 
         Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]*
          (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      (16*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}] - 
   Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*
       (Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0] + 
        Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]))/
      (4*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*
       (Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0] + 
        Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0])*
       (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
      (8*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$4, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*(-1/4*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Yu, 
         {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0])/
       (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
     (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Yu, 
        {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
      (8*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$4, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] - 
   Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + I*Delta[Index[d$$1, Flavor], 
     Index[d$$2, Flavor]]*Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] + 
   hbar*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Yu, 
        {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0])/
      (4*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Yu, 
        {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
      (8*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}], 
 "On-shell EFT Lagrangian" -> 
  Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}] + 
   (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^
      2)/(8*Coupling[ME, {}, 0]^2) - 
   FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]^2/4 - 
   (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[gL, {}, 0]*Coupling[gY, {}, 0]*
     Coupling[yE, {Index[d$$1, Flavor]}, 0]*Field[H, Scalar, 
      {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[B, 
      {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}])/(3*Coupling[ME, {}, 0]^2) - 
   FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}]^2/4 + 
   (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {}]^2)/(24*Coupling[ME, {}, 0]^2) + 
   FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^2*
    (-1/4 + hbar*(-1/3*Coupling[gY, {}, 0]^2/\[Epsilon] - 
       (Coupling[gY, {}, 0]^2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])/3)) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       (Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0] + 
        3*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]))/
      (3*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (-12*Coupling[gY, {}, 0]^4 + 5*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 
          0]]*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
        (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
       45*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$2, Flavor]}, 0]*
        (-(Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*Coupling[yE, 
            {Index[d$$1, Flavor]}, 0]) + 
         Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      (90*Coupling[ME, {}, 0]^2)) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (-2*hbar*Bar[Coupling[yE, {Index[u103210, Flavor]}, 0]]*
      Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103210, Flavor]}, 0] - 
     (2*hbar*Bar[Coupling[yE, {Index[u103211, Flavor]}, 0]]*
       Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103211, Flavor]}, 0])/
      \[Epsilon] + Coupling[\[Mu], {}, 1]^2 - 
     2*hbar*Bar[Coupling[yE, {Index[u103212, Flavor]}, 0]]*
      Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103212, Flavor]}, 0]*
      Log[\[Mu]bar2/Coupling[ME, {}, 0]^2] + 
     hbar*(-((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$1, Flavor]}, 0]*
          (-2*hbar*Bar[Coupling[yE, {Index[u103213, Flavor]}, 0]]*
            Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103213, Flavor]}, 0] - 
           (2*hbar*Bar[Coupling[yE, {Index[u103214, Flavor]}, 0]]*
             Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103214, Flavor]}, 0])/
            \[Epsilon] + Coupling[\[Mu], {}, 1]^2 - 
           2*hbar*Bar[Coupling[yE, {Index[u103215, Flavor]}, 0]]*
            Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103215, Flavor]}, 0]*
            Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/\[Epsilon]) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$1, Flavor]}, 0]*
         (-2*hbar*Bar[Coupling[yE, {Index[u103216, Flavor]}, 0]]*
           Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103216, Flavor]}, 0] - 
          (2*hbar*Bar[Coupling[yE, {Index[u103217, Flavor]}, 0]]*
            Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103217, Flavor]}, 0])/
           \[Epsilon] + Coupling[\[Mu], {}, 1]^2 - 
          2*hbar*Bar[Coupling[yE, {Index[u103218, Flavor]}, 0]]*
           Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103218, Flavor]}, 0]*
           Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])*
         (-3*Coupling[ME, {}, 0]^2*(1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
                2]) + 2*(-2*hbar*Bar[Coupling[yE, {Index[u103219, Flavor]}, 
               0]]*Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103219, 
                Flavor]}, 0] - (2*hbar*Bar[Coupling[yE, {Index[u103220, 
                  Flavor]}, 0]]*Coupling[ME, {}, 0]^2*Coupling[yE, {
                Index[u103220, Flavor]}, 0])/\[Epsilon] + 
            Coupling[\[Mu], {}, 1]^2 - 2*hbar*Bar[Coupling[yE, {
                Index[u103221, Flavor]}, 0]]*Coupling[ME, {}, 0]^2*
             Coupling[yE, {Index[u103221, Flavor]}, 0]*
             Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
        (6*Coupling[ME, {}, 0]^2))) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    (-1/6*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        (3*Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0] - 
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0] - 
         12*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]))/
       (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (-12*Coupling[gY, {}, 0]^4 + 5*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 
          0]]*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
        (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
       15*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        (Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
          (5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
         4*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
          (2*Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*Coupling[yE, 
             {Index[d$$1, Flavor]}, 0] - 3*Bar[Coupling[Ye, {Index[d$$2, 
                Flavor], Index[d$$3, Flavor]}, 0]]*Coupling[Ye, 
             {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
            (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
      (180*Coupling[ME, {}, 0]^2)) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    (-1/2*Coupling[\[Lambda], {}, 0] + 
     hbar*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (-6*Coupling[ME, {}, 0]^2*(Bar[Coupling[yE, {Index[d$$2, Flavor]}, 
               0]]*Coupling[yE, {Index[d$$1, Flavor]}, 0]*Coupling[yE, 
              {Index[d$$2, Flavor]}, 0] + 2*Bar[Coupling[Ye, {Index[d$$2, 
                 Flavor], Index[d$$3, Flavor]}, 0]]*Coupling[yE, 
              {Index[d$$2, Flavor]}, 0]*Coupling[Ye, {Index[d$$1, Flavor], 
               Index[d$$3, Flavor]}, 0] - Coupling[yE, {Index[d$$1, Flavor]}, 
              0]*Coupling[\[Lambda], {}, 0]) + (-Coupling[gL, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
           (-2*hbar*Bar[Coupling[yE, {Index[u103222, Flavor]}, 0]]*
             Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103222, Flavor]}, 
              0] - (2*hbar*Bar[Coupling[yE, {Index[u103223, Flavor]}, 0]]*
              Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103223, Flavor]}, 
               0])/\[Epsilon] + Coupling[\[Mu], {}, 1]^2 - 
            2*hbar*Bar[Coupling[yE, {Index[u103224, Flavor]}, 0]]*
             Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103224, Flavor]}, 0]*
             Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
        (6*\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (4*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
          Coupling[yE, {Index[d$$1, Flavor]}, 0]*
           (-2*Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*Coupling[yE, 
              {Index[d$$2, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
                2] + Coupling[\[Lambda], {}, 0]*(1 + 2*Log[\[Mu]bar2/
                 Coupling[ME, {}, 0]^2]))))/2 - 
       ((-2*hbar*Bar[Coupling[yE, {Index[u103225, Flavor]}, 0]]*
           Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103225, Flavor]}, 0] - 
          (2*hbar*Bar[Coupling[yE, {Index[u103226, Flavor]}, 0]]*
            Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103226, Flavor]}, 0])/
           \[Epsilon] + Coupling[\[Mu], {}, 1]^2 - 
          2*hbar*Bar[Coupling[yE, {Index[u103227, Flavor]}, 0]]*
           Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103227, Flavor]}, 0]*
           Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])*(12*Coupling[gY, {}, 0]^4 - 
          5*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
           Coupling[yE, {Index[d$$1, Flavor]}, 0]*
           (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
          5*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           (-12*(Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*Coupling[yE, 
                {Index[d$$1, Flavor]}, 0]*Coupling[yE, {Index[d$$2, Flavor]}, 
                0] + 6*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, 
                   Flavor]}, 0]]*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
               Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0] - 
              2*Coupling[yE, {Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda], 
                {}, 0]) + Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$1, 
                Flavor]}, 0]*(5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
        (180*Coupling[ME, {}, 0]^2))) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
    ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       (-12*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0] + 
        (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda], {}, 0]))/
      (6*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (12*Coupling[gY, {}, 0]^4*Coupling[\[Lambda], {}, 0] + 
       5*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        (12*Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$1, Flavor]}, 0]*
          (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, 
             {Index[d$$2, Flavor]}, 0]*Coupling[yE, {Index[d$$3, Flavor]}, 
             0] + 6*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, 
                Flavor]}, 0]]*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] - 
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[\[Lambda], {}, 
             0]) - 72*Bar[Coupling[Ye, {Index[d$$2, Flavor], 
             Index[d$$3, Flavor]}, 0]]*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
          (Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
            Coupling[\[Lambda], {}, 0] + 
           Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
            Coupling[Ye, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
            (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])) + 
         Coupling[yE, {Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda], {}, 0]*
          (12*Coupling[\[Lambda], {}, 0] + Coupling[gL, {}, 0]^2*
            (5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
           Coupling[gY, {}, 0]^2*(13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
                 2]))))/(180*Coupling[ME, {}, 0]^2)) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*(Coupling[gL, {}, 0]^2 - 
        Coupling[gY, {}, 0]^2)*Coupling[yE, {Index[d$$3, Flavor]}, 0])/
      (12*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
       (12*Coupling[gY, {}, 0]^4 - 5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 
           0]]*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
        5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         (-12*(Bar[Coupling[yE, {Index[d$$4, Flavor]}, 0]]*Coupling[yE, 
              {Index[d$$3, Flavor]}, 0]*Coupling[yE, {Index[d$$4, Flavor]}, 
              0] + 6*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, 
                 Flavor]}, 0]]*Coupling[yE, {Index[d$$4, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0] - 
            2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda], {}, 
              0]) + Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 
            0]*(5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
      (360*Coupling[ME, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    (-Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]] + 
     hbar*((Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$3, Flavor]}, 0])/(2*\[Epsilon]) + 
       (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$3, Flavor]}, 0]*(3*Coupling[ME, {}, 0]^2*
           (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
          4*(-2*hbar*Bar[Coupling[yE, {Index[u103228, Flavor]}, 0]]*
             Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103228, Flavor]}, 
              0] - (2*hbar*Bar[Coupling[yE, {Index[u103229, Flavor]}, 0]]*
              Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103229, Flavor]}, 
               0])/\[Epsilon] + Coupling[\[Mu], {}, 1]^2 - 
            2*hbar*Bar[Coupling[yE, {Index[u103230, Flavor]}, 0]]*
             Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103230, Flavor]}, 0]*
             Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
        (12*Coupling[ME, {}, 0]^2)))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*(((-1/18*I)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
       Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]])/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     ((I/540)*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
       (24*Coupling[gY, {}, 0]^4 - 5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 
           0]]*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      Coupling[ME, {}, 0]^2)*
    (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, Flavor]}, {}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[d, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]) + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {}]) + I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] - (2*hbar*Coupling[gY, {}, 0]^4*
     Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
     Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (135*Coupling[ME, {}, 0]^2) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    (-Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]] + 
     hbar*((Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (2*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[ME, {}, 0]^2 + Bar[Coupling[yE, {Index[d$$1, Flavor]}, 
             0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
             0]]*(Coupling[ME, {}, 0]^2 - 2*(-2*hbar*Bar[Coupling[yE, 
                 {Index[u103231, Flavor]}, 0]]*Coupling[ME, {}, 0]^2*Coupling[
                yE, {Index[u103231, Flavor]}, 0] - (2*hbar*Bar[Coupling[yE, 
                  {Index[u103232, Flavor]}, 0]]*Coupling[ME, {}, 0]^2*
                Coupling[yE, {Index[u103232, Flavor]}, 0])/\[Epsilon] + 
              Coupling[\[Mu], {}, 1]^2 - 2*hbar*Bar[Coupling[yE, 
                 {Index[u103233, Flavor]}, 0]]*Coupling[ME, {}, 0]^2*Coupling[
                yE, {Index[u103233, Flavor]}, 0]*Log[\[Mu]bar2/
                 Coupling[ME, {}, 0]^2]))))/(4*\[Epsilon]*
         Coupling[ME, {}, 0]^2) + (Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (-3*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
           (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])*
           (-Coupling[ME, {}, 0]^2 + 2*(-2*hbar*Bar[Coupling[yE, 
                 {Index[u103234, Flavor]}, 0]]*Coupling[ME, {}, 0]^2*Coupling[
                yE, {Index[u103234, Flavor]}, 0] - (2*hbar*Bar[Coupling[yE, 
                  {Index[u103235, Flavor]}, 0]]*Coupling[ME, {}, 0]^2*
                Coupling[yE, {Index[u103235, Flavor]}, 0])/\[Epsilon] + 
              Coupling[\[Mu], {}, 1]^2 - 2*hbar*Bar[Coupling[yE, 
                 {Index[u103236, Flavor]}, 0]]*Coupling[ME, {}, 0]^2*Coupling[
                yE, {Index[u103236, Flavor]}, 0]*Log[\[Mu]bar2/
                 Coupling[ME, {}, 0]^2])) + 
          2*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
           (3*Coupling[ME, {}, 0]^2*(1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
                  2]) - 4*(-2*hbar*Bar[Coupling[yE, {Index[u103237, Flavor]}, 
                 0]]*Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103237, 
                  Flavor]}, 0] - (2*hbar*Bar[Coupling[yE, {Index[u103238, 
                    Flavor]}, 0]]*Coupling[ME, {}, 0]^2*Coupling[yE, 
                 {Index[u103238, Flavor]}, 0])/\[Epsilon] + Coupling[\[Mu], 
                {}, 1]^2 - 2*hbar*Bar[Coupling[yE, {Index[u103239, Flavor]}, 
                 0]]*Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103239, 
                  Flavor]}, 0]*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
        (24*Coupling[ME, {}, 0]^2)))*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0])/(2*Coupling[ME, {}, 0]^2) + 
     hbar*((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
          (2*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
            (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
            Coupling[yE, {Index[d$$3, Flavor]}, 0] - 
           27*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
            Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
            Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[yE, 
             {Index[d$$4, Flavor]}, 0] + 18*Bar[Coupling[Ye, {Index[d$$1, 
                Flavor], Index[d$$4, Flavor]}, 0]]*
            Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]]*
            Coupling[yE, {Index[d$$5, Flavor]}, 0]*Coupling[Ye, 
             {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]) + 
         48*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda], {}, 0])/
        (24*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (30*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$5, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
          (37 + 18*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
         45*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
            Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
            Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[yE, 
             {Index[d$$4, Flavor]}, 0]*(19 + 18*Log[\[Mu]bar2/
                Coupling[ME, {}, 0]^2]) + 
           4*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
            (Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
              Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, {
                Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0] - 
             2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda], {
                }, 0]*(5 + 4*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))) + 
         2*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
          (12*Coupling[gY, {}, 0]^4 - 5*Bar[Coupling[yE, {Index[d$$3, 
                Flavor]}, 0]]*Coupling[gY, {}, 0]^2*Coupling[yE, 
             {Index[d$$3, Flavor]}, 0]*(13 + 6*Log[\[Mu]bar2/
                Coupling[ME, {}, 0]^2]) + 
           5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
            (-12*(Bar[Coupling[yE, {Index[d$$4, Flavor]}, 0]]*Coupling[yE, 
                 {Index[d$$3, Flavor]}, 0]*Coupling[yE, {Index[d$$4, 
                   Flavor]}, 0] + 6*Bar[Coupling[Ye, {Index[d$$4, Flavor], 
                   Index[d$$5, Flavor]}, 0]]*Coupling[yE, {Index[d$$4, 
                   Flavor]}, 0]*Coupling[Ye, {Index[d$$3, Flavor], 
                  Index[d$$5, Flavor]}, 0] - 2*Coupling[yE, {Index[d$$3, 
                   Flavor]}, 0]*Coupling[\[Lambda], {}, 0]) + 
             Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
              (5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
        (720*Coupling[ME, {}, 0]^2)))*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*(((I/12)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       (3*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] - 
        2*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]))/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     ((I/360)*(48*Coupling[gY, {}, 0]^4*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]] + 5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 
           0]]*(3*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, 
               Flavor]}, 0]]*Coupling[yE, {Index[d$$4, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
          2*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
           Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
           (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
      Coupling[ME, {}, 0]^2)*
    (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[e, Fermion, {Index[d$$1, Flavor]}, {}]) + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[e, Fermion, {Index[d$$1, Flavor]}, {}]) + 
   I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
   ((I/12)*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
     Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*Coupling[gY, {}, 0]*
     Coupling[yE, {Index[d$$3, Flavor]}, 0]*FieldStrength[B, 
      {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
     Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], 
       Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/Coupling[ME, {}, 0]^2 - 
   ((I/12)*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
     Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[gL, {}, 0]*
     Coupling[yE, {Index[d$$3, Flavor]}, 0]*FieldStrength[W, 
      {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
      {}]*Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], 
       Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/Coupling[ME, {}, 0]^2 - 
   (4*hbar*Coupling[gY, {}, 0]^4*Delta[Index[d$$1, Flavor], 
      Index[d$$3, Flavor]]*Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[e, Fermion, {Index[d$$4, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[e, Fermion, {Index[d$$2, Flavor]}, {}])/
    (45*Coupling[ME, {}, 0]^2) - (2*hbar*Coupling[gY, {}, 0]^4*
     Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
     Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
     Bar[Field[e, Fermion, {Index[d$$4, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[e, Fermion, {Index[d$$2, Flavor]}, {}])/
    (15*Coupling[ME, {}, 0]^2) + Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
     {}]*(-Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
     hbar*((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         (Coupling[ME, {}, 0]^2*(2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
            Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
              {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]) - 
          2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (-2*hbar*Bar[Coupling[yE, {Index[u103240, Flavor]}, 0]]*
             Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103240, Flavor]}, 
              0] - (2*hbar*Bar[Coupling[yE, {Index[u103241, Flavor]}, 0]]*
              Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103241, Flavor]}, 
               0])/\[Epsilon] + Coupling[\[Mu], {}, 1]^2 - 
            2*hbar*Bar[Coupling[yE, {Index[u103242, Flavor]}, 0]]*
             Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103242, Flavor]}, 0]*
             Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
        (4*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         (3*Coupling[ME, {}, 0]^2*(2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
             (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
            Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
              {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
             (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])) - 
          2*(-2*hbar*Bar[Coupling[yE, {Index[u103243, Flavor]}, 0]]*
             Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103243, Flavor]}, 
              0] - (2*hbar*Bar[Coupling[yE, {Index[u103244, Flavor]}, 0]]*
              Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103244, Flavor]}, 
               0])/\[Epsilon] + Coupling[\[Mu], {}, 1]^2 - 
            2*hbar*Bar[Coupling[yE, {Index[u103245, Flavor]}, 0]]*
             Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103245, Flavor]}, 0]*
             Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])*
           (4*Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
              {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
            3*Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
              {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
             (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
        (24*Coupling[ME, {}, 0]^2)))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] + 
   ((I/12)*hbar*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
     Coupling[gY, {}, 0]*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
     Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
        Index[d$$1, Lorentz]], Proj[1]]**Field[e, Fermion, 
       {Index[d$$1, Flavor]}, {}])/Coupling[ME, {}, 0]^2 + 
   ((I/12)*hbar*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
     CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[gL, {}, 0]*
     Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
      {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}]*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
        Index[d$$1, Lorentz]], Proj[1]]**Field[e, Fermion, 
       {Index[d$$1, Flavor]}, {}])/Coupling[ME, {}, 0]^2 + 
   (hbar*Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Bar[Coupling[yE, {Index[d$$5, Flavor]}, 0]]*
     Coupling[yE, {Index[d$$5, Flavor]}, 0]*Coupling[Ye, 
      {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
       {}])/(3*Coupling[ME, {}, 0]^2) + 
   (hbar*Bar[Coupling[yE, {Index[d$$5, Flavor]}, 0]]*
     Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Coupling[yE, {Index[d$$5, Flavor]}, 0]*Coupling[Ye, 
      {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
     Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
      DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
       {}])/(3*Coupling[ME, {}, 0]^2) + 
   hbar*(-1/36*(Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$4, Flavor]}, 0]*
        (9*Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[Yd, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] - 
         Coupling[gY, {}, 0]^2*Delta[Index[d$$1, Flavor], 
           Index[d$$3, Flavor]]))/(\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (-135*Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
        Coupling[Yd, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        Coupling[yE, {Index[d$$4, Flavor]}, 0]*
        (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
       Coupling[gY, {}, 0]^2*Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
        (-48*Coupling[gY, {}, 0]^2*Delta[Index[d$$2, Flavor], 
           Index[d$$4, Flavor]] + 5*Bar[Coupling[yE, {Index[d$$2, Flavor]}, 
            0]]*Coupling[yE, {Index[d$$4, Flavor]}, 0]*
          (25 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      (1080*Coupling[ME, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*(-1/12*(Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$4, Flavor]}, 0]*
        (3*Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[Ye, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] - 
         Coupling[gY, {}, 0]^2*Delta[Index[d$$1, Flavor], 
           Index[d$$3, Flavor]]))/(\[Epsilon]*Coupling[ME, {}, 0]^2) - 
     (48*Coupling[gY, {}, 0]^4*Delta[Index[d$$1, Flavor], 
         Index[d$$3, Flavor]]*Delta[Index[d$$2, Flavor], 
         Index[d$$4, Flavor]] + 5*Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$4, Flavor]}, 0]*
        (9*Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[Ye, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
          (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
         Coupling[gY, {}, 0]^2*Delta[Index[d$$1, Flavor], 
           Index[d$$3, Flavor]]*(25 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
               2])))/(360*Coupling[ME, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
      (2*Coupling[ME, {}, 0]^2) + 
     hbar*((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         (2*Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] - 
          2*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
          3*Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (-9*Bar[Coupling[yE, {Index[d$$4, Flavor]}, 0]]*Coupling[yE, 
              {Index[d$$2, Flavor]}, 0]*Coupling[yE, {Index[d$$4, Flavor]}, 
              0] + 6*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, 
                 Flavor]}, 0]]*Coupling[yE, {Index[d$$4, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0] + 
            16*Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[\[Lambda], {}, 
              0])))/(24*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (24*Coupling[gY, {}, 0]^4*Coupling[Ye, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0] - 
         10*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
          Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
         5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
          (2*Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
           3*Bar[Coupling[yE, {Index[d$$4, Flavor]}, 0]]*Coupling[yE, 
             {Index[d$$4, Flavor]}, 0]*(8*Coupling[yE, {Index[d$$3, Flavor]}, 
               0]*Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 
               0] + 3*Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, {
                Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
              (19 + 18*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])) + 
           6*(4*Coupling[\[Lambda], {}, 0]*(2*Coupling[yE, {Index[d$$3, 
                   Flavor]}, 0]*Coupling[Ye, {Index[d$$2, Flavor], 
                  Index[d$$1, Flavor]}, 0] + 3*Coupling[yE, {Index[d$$2, 
                   Flavor]}, 0]*Coupling[Ye, {Index[d$$3, Flavor], 
                  Index[d$$1, Flavor]}, 0]*(5 + 4*Log[\[Mu]bar2/
                    Coupling[ME, {}, 0]^2])) + Bar[Coupling[Ye, 
                {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
              (-6*Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
                 {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]*Coupling[Ye, 
                 {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0] + 
               Coupling[yE, {Index[d$$4, Flavor]}, 0]*(-24*Coupling[Ye, 
                   {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
                  Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 
                   0] + Coupling[Ye, {Index[d$$2, Flavor], Index[d$$5, 
                     Flavor]}, 0]*Coupling[Ye, {Index[d$$3, Flavor], 
                    Index[d$$1, Flavor]}, 0]*(37 + 18*Log[\[Mu]bar2/
                      Coupling[ME, {}, 0]^2]))))))/
        (720*Coupling[ME, {}, 0]^2)))*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + (((-1/2*I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0])/Coupling[ME, {}, 0]^2 + 
     hbar*(((I/24)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*(7*Coupling[gL, {}, 0]^2 + 
            27*Coupling[gY, {}, 0]^2 + 18*Bar[Coupling[yE, {Index[d$$3, 
                 Flavor]}, 0]]*Coupling[yE, {Index[d$$3, Flavor]}, 0]) - 
          4*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gL, {}, 0]^2*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
            Index[d$$2, Flavor]]))/(\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/144)*(-4*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
           Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
           (5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
          Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[yE, 
            {Index[d$$2, Flavor]}, 0]*(81*Coupling[gY, {}, 0]^2*
             (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
            18*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, 
              {Index[d$$3, Flavor]}, 0]*(5 + 6*Log[\[Mu]bar2/
                 Coupling[ME, {}, 0]^2]) + 7*Coupling[gL, {}, 0]^2*
             (11 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
        Coupling[ME, {}, 0]^2))*
    (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {}]*Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
           Index[d$$2, Flavor]}, {}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
         {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]) + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
        {}]) + 
   hbar*(((-1/24*I)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (17*Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0] + 
          Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0] + 
          12*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]) + 
        2*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         (6*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0] + 
          (-Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
            Index[d$$2, Flavor]])))/(\[Epsilon]*Coupling[ME, {}, 0]^2) - 
     ((I/720)*(-48*Coupling[gY, {}, 0]^4*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]] + 5*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 
           0]]*(17*Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 
            0]*(11 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
          Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
           (25 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
          72*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
           (-(Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, {
                Index[d$$2, Flavor]}, 0]) + Bar[Coupling[Ye, {Index[d$$3, 
                 Flavor], Index[d$$4, Flavor]}, 0]]*Coupling[Ye, 
              {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
             (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))) + 
        10*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         (36*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
          Coupling[yE, {Index[d$$3, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
            Index[d$$2, Flavor]]*(-(Coupling[gL, {}, 0]^2*
              (5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])) + 
            Coupling[gY, {}, 0]^2*(13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
                  2])))))/Coupling[ME, {}, 0]^2)*
    (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
           Index[d$$2, Flavor]}, {}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
         {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]) + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
        {}]) + hbar*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*Delta[Index[d$$2, Flavor], 
        Index[d$$4, Flavor]])/(24*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
       (-24*Coupling[gY, {}, 0]^4*Delta[Index[d$$1, Flavor], 
          Index[d$$3, Flavor]] + 5*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 
           0]]*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (Coupling[gL, {}, 0]^2*(11 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
                2]) + Coupling[gY, {}, 0]^2*
           (25 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
      (720*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*((Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$3, Flavor]}, 0]*
        (3*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0] - 
         Coupling[gL, {}, 0]^2*Delta[Index[d$$1, Flavor], 
           Index[d$$4, Flavor]]) + Bar[Coupling[yE, {Index[d$$1, Flavor]}, 
          0]]*Coupling[yE, {Index[d$$4, Flavor]}, 0]*
        (3*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0] - 
         Coupling[gL, {}, 0]^2*Delta[Index[d$$2, Flavor], 
           Index[d$$3, Flavor]]))/(24*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*Coupling[yE, 
         {Index[d$$3, Flavor]}, 0]*
        (9*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
          (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
         Coupling[gL, {}, 0]^2*Delta[Index[d$$1, Flavor], 
           Index[d$$4, Flavor]]*(11 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
               2])) + Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$4, Flavor]}, 0]*
        (-18*Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$3, Flavor]}, 0] + 
         9*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]*
          (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
         Coupling[gL, {}, 0]^2*Delta[Index[d$$2, Flavor], 
           Index[d$$3, Flavor]]*(11 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
               2])))/(144*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (-Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
     hbar*((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0])/(2*\[Epsilon]) + 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[Yd, 
          {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (3*Coupling[ME, {}, 0]^2*(1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
                2]) - 4*(-2*hbar*Bar[Coupling[yE, {Index[u103246, Flavor]}, 
               0]]*Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103246, 
                Flavor]}, 0] - (2*hbar*Bar[Coupling[yE, {Index[u103247, 
                  Flavor]}, 0]]*Coupling[ME, {}, 0]^2*Coupling[yE, {
                Index[u103247, Flavor]}, 0])/\[Epsilon] + 
            Coupling[\[Mu], {}, 1]^2 - 2*hbar*Bar[Coupling[yE, {
                Index[u103248, Flavor]}, 0]]*Coupling[ME, {}, 0]^2*
             Coupling[yE, {Index[u103248, Flavor]}, 0]*
             Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
        (12*Coupling[ME, {}, 0]^2)))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] + 
   (hbar*Bar[Coupling[yE, {Index[d$$5, Flavor]}, 0]]*
     Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Coupling[Yd, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
     Coupling[yE, {Index[d$$5, Flavor]}, 0]*
     Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
      DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[Proj[1]]**
      Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (3*Coupling[ME, {}, 0]^2) + 
   (hbar*Bar[Coupling[yE, {Index[d$$5, Flavor]}, 0]]*
     CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
     Coupling[yE, {Index[d$$5, Flavor]}, 0]*Coupling[Ye, 
      {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
     Coupling[Yu, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]*
     Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
       {}]*Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]**
      DiracProduct[Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
        Index[d$$2, Flavor]}, {}])/(3*Coupling[ME, {}, 0]^2) + 
   (2*hbar*Coupling[gY, {}, 0]^4*Delta[Index[d$$1, Flavor], 
      Index[d$$3, Flavor]]*Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/(45*Coupling[ME, {}, 0]^2) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*(Coupling[gL, {}, 0]^2 - 
        Coupling[gY, {}, 0]^2)*Coupling[Yd, {Index[d$$2, Flavor], 
         Index[d$$1, Flavor]}, 0]*Coupling[yE, {Index[d$$3, Flavor]}, 0])/
      (12*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
       (12*Coupling[gY, {}, 0]^4 - 5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 
           0]]*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
        5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         (-12*(Bar[Coupling[yE, {Index[d$$4, Flavor]}, 0]]*Coupling[yE, 
              {Index[d$$3, Flavor]}, 0]*Coupling[yE, {Index[d$$4, Flavor]}, 
              0] + 6*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, 
                 Flavor]}, 0]]*Coupling[yE, {Index[d$$4, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0] - 
            2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda], {}, 
              0]) + Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 
            0]*(5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
      (360*Coupling[ME, {}, 0]^2))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    (-Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
     hbar*((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Yu, 
          {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/(2*\[Epsilon]) + 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$3, Flavor]}, 0]*Coupling[Yu, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*(3*Coupling[ME, {}, 0]^2*
           (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
          4*(-2*hbar*Bar[Coupling[yE, {Index[u103249, Flavor]}, 0]]*
             Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103249, Flavor]}, 
              0] - (2*hbar*Bar[Coupling[yE, {Index[u103250, Flavor]}, 0]]*
              Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103250, Flavor]}, 
               0])/\[Epsilon] + Coupling[\[Mu], {}, 1]^2 - 
            2*hbar*Bar[Coupling[yE, {Index[u103251, Flavor]}, 0]]*
             Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103251, Flavor]}, 0]*
             Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
        (12*Coupling[ME, {}, 0]^2)))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(((-1/6*I)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
       Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]])/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
     ((I/36)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
       Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
       (5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
    (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {}]*Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]) + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}]) + 
   hbar*(((I/36)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       (3*Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
        Index[d$$2, Flavor]])/(\[Epsilon]*Coupling[ME, {}, 0]^2) - 
     ((I/1080)*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
       (24*Coupling[gY, {}, 0]^4 - 15*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 
           0]]*Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
        5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      Coupling[ME, {}, 0]^2)*
    (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]) + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}]) + 
   hbar*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*
       (3*Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0] + 
        3*Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0] - 
        Coupling[gL, {}, 0]^2*Delta[Index[d$$2, Flavor], 
          Index[d$$4, Flavor]]))/(12*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*
       (9*Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
        9*Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
        Coupling[gL, {}, 0]^2*Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
         (11 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      (72*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$4, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*(-1/72*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$3, Flavor]}, 0]*
        (18*Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0] + 
         (-3*Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
          Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]))/
       (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (48*Coupling[gY, {}, 0]^4*Delta[Index[d$$1, Flavor], 
         Index[d$$3, Flavor]]*Delta[Index[d$$2, Flavor], 
         Index[d$$4, Flavor]] - 5*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$3, Flavor]}, 0]*
        (54*Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
          (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
         Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
          (-3*Coupling[gL, {}, 0]^2*(11 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
                 2]) + Coupling[gY, {}, 0]^2*(25 + 6*Log[\[Mu]bar2/
                Coupling[ME, {}, 0]^2]))))/(2160*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$4, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$3, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*(Coupling[gL, {}, 0]^2 - 
        Coupling[gY, {}, 0]^2)*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      (12*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
       (12*Coupling[gY, {}, 0]^4 - 5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 
           0]]*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
        5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         (-12*(Bar[Coupling[yE, {Index[d$$4, Flavor]}, 0]]*Coupling[yE, 
              {Index[d$$3, Flavor]}, 0]*Coupling[yE, {Index[d$$4, Flavor]}, 
              0] + 6*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, 
                 Flavor]}, 0]]*Coupling[yE, {Index[d$$4, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0] - 
            2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda], {}, 
              0]) + Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 
            0]*(5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
      (360*Coupling[ME, {}, 0]^2))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   (hbar*Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Bar[Coupling[yE, {Index[d$$5, Flavor]}, 0]]*
     Coupling[Yd, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
     Coupling[yE, {Index[d$$5, Flavor]}, 0]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[Proj[1]]**
      Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (3*Coupling[ME, {}, 0]^2) + (2*hbar*Coupling[gY, {}, 0]^4*
     Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
     Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/(135*Coupling[ME, {}, 0]^2) + 
   (hbar*Bar[Coupling[yE, {Index[d$$5, Flavor]}, 0]]*
     CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
     Coupling[Yd, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
     Coupling[yE, {Index[d$$5, Flavor]}, 0]*Coupling[Yu, 
      {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[Proj[1]]**
      Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (3*Coupling[ME, {}, 0]^2) - (hbar*Coupling[gY, {}, 0]^4*
     Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
     Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/(270*Coupling[ME, {}, 0]^2) + 
   CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {}]*
    (-Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]] + 
     hbar*((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0])/(2*\[Epsilon]) + 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (3*Coupling[ME, {}, 0]^2*(1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
                2]) - 4*(-2*hbar*Bar[Coupling[yE, {Index[u103252, Flavor]}, 
               0]]*Coupling[ME, {}, 0]^2*Coupling[yE, {Index[u103252, 
                Flavor]}, 0] - (2*hbar*Bar[Coupling[yE, {Index[u103253, 
                  Flavor]}, 0]]*Coupling[ME, {}, 0]^2*Coupling[yE, {
                Index[u103253, Flavor]}, 0])/\[Epsilon] + 
            Coupling[\[Mu], {}, 1]^2 - 2*hbar*Bar[Coupling[yE, {
                Index[u103254, Flavor]}, 0]]*Coupling[ME, {}, 0]^2*
             Coupling[yE, {Index[u103254, Flavor]}, 0]*
             Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
        (12*Coupling[ME, {}, 0]^2)))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[Bar[eps[SU2L]], {Bar[Index[d$$2, SU2L[fund]]], 
      Bar[Index[d$$3, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$1, SU2L[fund]]}, {}]*Field[H, Scalar, 
     {Index[d$$3, SU2L[fund]]}, {}]*
    ((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
       (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
       Coupling[yE, {Index[d$$3, Flavor]}, 0])/(12*\[Epsilon]*
       Coupling[ME, {}, 0]^2) + 
     (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
       (12*Coupling[gY, {}, 0]^4 - 5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 
           0]]*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) + 
        5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         (-12*(Bar[Coupling[yE, {Index[d$$4, Flavor]}, 0]]*Coupling[yE, 
              {Index[d$$3, Flavor]}, 0]*Coupling[yE, {Index[d$$4, Flavor]}, 
              0] + 6*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, 
                 Flavor]}, 0]]*Coupling[yE, {Index[d$$4, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0] - 
            2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda], {}, 
              0]) + Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 
            0]*(5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))))/
      (360*Coupling[ME, {}, 0]^2))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*(((I/9)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
       Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]])/
      (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
     ((I/270)*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
       (24*Coupling[gY, {}, 0]^4 - 5*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 
           0]]*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])))/
      Coupling[ME, {}, 0]^2)*
    (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, Flavor]}, {}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[u, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]) + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {}]) + I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] + 
   (hbar*Bar[Coupling[yE, {Index[d$$5, Flavor]}, 0]]*
     Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
     Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]]*
     CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[yE, {Index[d$$5, Flavor]}, 0]*
     Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
      DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/(3*Coupling[ME, {}, 0]^2) + 
   (8*hbar*Coupling[gY, {}, 0]^4*Delta[Index[d$$1, Flavor], 
      Index[d$$3, Flavor]]*Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (45*Coupling[ME, {}, 0]^2) + 
   hbar*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*
       (9*Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0] - 
        2*Coupling[gY, {}, 0]^2*Delta[Index[d$$2, Flavor], 
          Index[d$$4, Flavor]]))/(36*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
     (96*Coupling[gY, {}, 0]^4*Delta[Index[d$$1, Flavor], 
         Index[d$$3, Flavor]]*Delta[Index[d$$2, Flavor], 
         Index[d$$4, Flavor]] + 5*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$3, Flavor]}, 0]*
        (27*Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[Yu, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
          (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]) - 
         2*Coupling[gY, {}, 0]^2*Delta[Index[d$$2, Flavor], 
           Index[d$$4, Flavor]]*(25 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^
               2])))/(1080*Coupling[ME, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   (hbar*Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Bar[Coupling[yE, {Index[d$$5, Flavor]}, 0]]*
     Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
     CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[yE, {Index[d$$5, Flavor]}, 0]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/(3*Coupling[ME, {}, 0]^2) + 
   (hbar*Bar[Coupling[yE, {Index[d$$5, Flavor]}, 0]]*
     Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
     Coupling[yE, {Index[d$$5, Flavor]}, 0]*Coupling[Yu, 
      {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/(3*Coupling[ME, {}, 0]^2) + 
   (8*hbar*Coupling[gY, {}, 0]^4*Delta[Index[d$$1, Flavor], 
      Index[d$$3, Flavor]]*Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (135*Coupling[ME, {}, 0]^2) - (4*hbar*Coupling[gY, {}, 0]^4*
     Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
     Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (135*Coupling[ME, {}, 0]^2) - (8*hbar*Coupling[gY, {}, 0]^4*
     Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
     Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (135*Coupling[ME, {}, 0]^2), "SuperTraces" -> 
  <|"hFermion-lScalar" -> 
    -(hbar*FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
        {Index[d$$2, Lorentz]}]*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Coupling[gY, {}, 0]*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
         (12*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
        (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[gY, {}, 0]*
          Coupling[yE, {Index[d$$2, Flavor]}, 0]*
          (25 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
         (72*Coupling[ME, {}, 0]^2))*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
         {}]) + hbar*(((I/2)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0])/\[Epsilon] + 
       (I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$2, Flavor]}, 0]*
        (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
        {Index[d$$1, Lorentz]}] - hbar*CG[gen[SU2L[fund]], 
       {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
        Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
       {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {Index[d$$2, Lorentz]}]*
      ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[gL, {}, 0]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0])/(6*\[Epsilon]*
         Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[gL, {}, 0]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (11 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (36*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
        {}] - (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[gY, {}, 0]*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
       (FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
          {}]*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
             Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
           GammaM[Index[d$$3, Lorentz]], Proj[-1]]**Field[l, Fermion, 
           {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
           {Index[d$$3, Lorentz]}] + FieldStrength[B, {Index[d$$1, Lorentz], 
           Index[d$$2, Lorentz]}, {}, {}]*
         Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$3, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$3, Lorentz]], GammaM[Index[d$$1, Lorentz], 
            Index[d$$2, Lorentz]], Proj[-1]]**Field[l, Fermion, 
           {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      (8*Coupling[ME, {}, 0]^2) + 
     ((I/6)*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*
       (Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$2, Lorentz], Index[d$$2, Lorentz]}] - 
        Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]**
         DiracProduct[GammaM[Index[d$$2, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$2, Lorentz]}]))/Coupling[ME, {}, 0]^2, 
   "hFermion-lFermion" -> (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
          Index[d$$1, Lorentz]}]]*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$2, Lorentz], 
         Index[d$$2, Lorentz]}])/(3*Coupling[ME, {}, 0]^2) + 
     (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^
        2)/(8*Coupling[ME, {}, 0]^2) - 
     (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
         Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[gL, {}, 0]*
       Coupling[gY, {}, 0]*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
       FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
       FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
        {Index[d$$1, SU2L[adj]]}, {}])/(3*Coupling[ME, {}, 0]^2) + 
     (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
         {Index[d$$1, SU2L[adj]]}, {}]^2)/(24*Coupling[ME, {}, 0]^2) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      ((-2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[ME, {}, 0]^2*
         Coupling[yE, {Index[d$$1, Flavor]}, 0])/\[Epsilon] - 
       2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[ME, {}, 0]^2*
        Coupling[yE, {Index[d$$1, Flavor]}, 0]*
        (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])) - 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {Index[d$$1, Lorentz]}]*
      (-((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[yE, 
           {Index[d$$1, Flavor]}, 0])/\[Epsilon]) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$1, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/2) + 
     hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
          {Index[d$$1, Lorentz]}]]*CG[gen[SU2L[fund]], 
         {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
          Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
         {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[W, 
         {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
         {Index[d$$1, SU2L[adj]]}, {Index[d$$2, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
          Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
         {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
         {Index[d$$1, SU2L[adj]]}, {Index[d$$2, Lorentz]}])*
      (((I/3)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[gL, {}, 0]*
         Coupling[yE, {Index[d$$1, Flavor]}, 0])/(\[Epsilon]*
         Coupling[ME, {}, 0]^2) + 
       ((I/18)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gL, {}, 0]*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
         (5 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^
         2) + hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
          {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
         {Index[d$$1, SU2L[fund]]}, {}]*FieldStrength[B, 
         {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
         {Index[d$$2, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
         {Index[d$$2, Lorentz]}])*
      (((-1/6*I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]*Coupling[yE, {Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       ((I/36)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
         (13 + 6*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        Coupling[ME, {}, 0]^2), "hFermion-lVector" -> 
    hbar*((((7*I)/2)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (((7*I)/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*((((-7*I)/2)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 
           0]]*Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (((7*I)/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]), 
   "hFermion-lScalar-lScalar" -> 
    hbar*(((-I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[\[Mu], {}, 1]^2)/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       ((I/2)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[\[Mu], {}, 1]^2*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
        {Index[d$$1, Lorentz]}] + 
     hbar*(((I/2)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[\[Lambda], {}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[\[Lambda], {}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]) + 
     hbar*(((I/2)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[\[Lambda], {}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[\[Lambda], {}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]), 
   "hFermion-lScalar-lFermion" -> 0, "hFermion-lScalar-lVector" -> 
    hbar*((((-5*I)/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       ((I/16)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (11 + 10*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*(((I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]), 
   "hFermion-lFermion-lScalar" -> 0, "hFermion-lFermion-lFermion" -> 0, 
   "hFermion-lFermion-lVector" -> 
    hbar*(((-I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       ((I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (1 + 4*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*((((3*I)/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (((3*I)/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]), 
   "hFermion-lVector-lScalar" -> 
    hbar*((((-5*I)/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       ((I/16)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (11 + 10*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*(((I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]), 
   "hFermion-lVector-lFermion" -> 
    hbar*(((-I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       ((I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (1 + 4*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*((((3*I)/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (((3*I)/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]), 
   "hFermion-lScalar-lScalar-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda], {}, 0])/
        (2*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda], {}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (2*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$2, Flavor]}, 0]*Coupling[Ye, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda], {}, 0])/
        (2*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$2, Flavor]}, 0]*Coupling[Ye, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda], {}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (2*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], "hFermion-lScalar-hFermion-lScalar" -> 
    -1/8*(hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[yE, 
        {Index[d$$4, Flavor]}, 0]*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}]*
       Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
         {}])/Coupling[ME, {}, 0]^2, "hFermion-lScalar-hFermion-lFermion" -> 
    ((I/2)*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[yE, 
        {Index[d$$3, Flavor]}, 0]*
       (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
            {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
           {Index[d$$1, SU2L[fund]]}, {}]*
          Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
               Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
            Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
             Index[d$$1, Flavor]}, {}]) + 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]))/Coupling[ME, {}, 0]^2 - 
     ((I/4)*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[yE, 
        {Index[d$$3, Flavor]}, 0]*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$1, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
           {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      Coupling[ME, {}, 0]^2, "hFermion-lScalar-lFermion-lScalar" -> 
    hbar*(-1/4*(Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
            0]]*Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
          Coupling[Yd, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[yE, {Index[d$$4, Flavor]}, 0])/(\[Epsilon]*
          Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*Coupling[Yd, 
          {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[yE, {Index[d$$4, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
        {}] + hbar*(-1/4*(Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
        {}] + hbar*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0] + 
         Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0])/
        (8*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0] + 
          Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0])*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (16*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
        {}] + hbar*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
           Coupling[Yd, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0] + 
          Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
           Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]))/
        (4*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$3, Flavor]}, 0]*
         (Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
           Coupling[Yd, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0] + 
          Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
           Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0])*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
           SU2L[fund]], Index[d$$4, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + 
     hbar*(-1/4*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Yu, 
           {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Yu, 
          {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
           SU2L[fund]], Index[d$$4, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + 
     hbar*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Yu, 
          {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0])/
        (4*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Yu, 
          {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}], 
   "hFermion-lScalar-lFermion-lFermion" -> 
    hbar*(((-1/4*I)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]))/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       ((I/4)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0])*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*(((I/8)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]))/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/16)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0])*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]) + 
     hbar*(((I/8)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] - 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]))/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/16)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] - 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0])*
         (5 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]), 
   "hFermion-lScalar-lVector-lScalar" -> 
    hbar*(((-1/8*I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0])/(\[Epsilon]*
         Coupling[ME, {}, 0]^2) - 
       ((I/16)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*(((I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*(((I/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0])/(\[Epsilon]*
         Coupling[ME, {}, 0]^2) + 
       ((I/16)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]) + 
     hbar*(((-1/4*I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       ((I/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]), 
   "hFermion-lScalar-lVector-lFermion" -> 
    hbar*((((5*I)/16)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0])/(\[Epsilon]*
         Coupling[ME, {}, 0]^2) + 
       ((I/32)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (11 + 10*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*((((-5*I)/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 
           0]]*Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       ((I/16)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (11 + 10*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) - ((I/16)*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$1, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
           {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      Coupling[ME, {}, 0]^2 + 
     ((I/8)*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$1, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
           {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      Coupling[ME, {}, 0]^2, "hFermion-lFermion-lScalar-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda], {}, 0])/
        (2*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda], {}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (2*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$2, Flavor]}, 0]*Coupling[Ye, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda], {}, 0])/
        (2*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[yE, 
          {Index[d$$2, Flavor]}, 0]*Coupling[Ye, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda], {}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (2*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], "hFermion-lFermion-lScalar-lFermion" -> 
    hbar*(((I/4)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/8)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (-1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
          DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
          Field[e, Fermion, {Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
         DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
         Field[e, Fermion, {Index[d$$1, Flavor]}, {}]) + 
     hbar*(((I/4)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/8)*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$4, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
         DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
         Field[e, Fermion, {Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[e, Fermion, 
          {Index[d$$1, Flavor]}, {}]), "hFermion-lFermion-lScalar-lVector" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-1/4*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (4*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-1/4*(Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^
           2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (4*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], "hFermion-lFermion-hFermion-lFermion" -> 
    -1/2*(hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
          {Index[d$$1, Lorentz]}]]*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
        Coupling[yE, {Index[d$$2, Flavor]}, 0]*Field[H, Scalar, 
         {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}])/
       Coupling[ME, {}, 0]^2 + 
     (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$1, Flavor]}, 0]*Coupling[yE, 
        {Index[d$$2, Flavor]}, 0]*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
           {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
           Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
          {}]))/(6*Coupling[ME, {}, 0]^2) - 
     (2*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Coupling[yE, {Index[d$$1, Flavor]}, 0]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*Field[H, Scalar, 
        {Index[d$$1, SU2L[fund]]}, {}]*Field[H, Scalar, 
        {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}])/
      (3*Coupling[ME, {}, 0]^2) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*Coupling[yE, 
           {Index[d$$1, Flavor]}, 0]*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
         \[Epsilon]) - Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$1, Flavor]}, 0]*Coupling[yE, 
         {Index[d$$2, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]), 
   "hFermion-lFermion-lFermion-lScalar" -> 
    hbar*(((-1/4*I)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]))/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       ((I/4)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0])*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*(((I/8)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]))/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/16)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0])*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]) + 
     hbar*(((I/8)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] - 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]))/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/16)*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$3, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] - 
          Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
            {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0])*
         (5 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]), 
   "hFermion-lFermion-lFermion-lFermion" -> 
    (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
        {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
           {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
           Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
          {}]))/Coupling[ME, {}, 0]^2 + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((-2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/\[Epsilon] - 
       2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
         {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
        (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2])) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
       {}]*((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (2*Coupling[ME, {}, 0]^2)) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
       {Index[d$$1, Lorentz]}]*
      ((2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^
         2), "hFermion-lFermion-lFermion-lVector" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((2*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], "hFermion-lFermion-lVector-lScalar" -> 
    hbar*((((5*I)/16)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0])/(\[Epsilon]*
         Coupling[ME, {}, 0]^2) + 
       ((I/32)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (11 + 10*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*((((-5*I)/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 
           0]]*Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       ((I/16)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (11 + 10*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) - ((I/16)*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
       Coupling[yE, {Index[d$$2, Flavor]}, 0]*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$1, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
           {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      Coupling[ME, {}, 0]^2 + 
     ((I/8)*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
       Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$1, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
           {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      Coupling[ME, {}, 0]^2, "hFermion-lFermion-lVector-lFermion" -> 
    hbar*(((-1/8*I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0])/(\[Epsilon]*
         Coupling[ME, {}, 0]^2) - 
       ((I/16)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (-3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*(((I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (-3 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        Coupling[ME, {}, 0]^2)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*(((-1/8*I)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0])/(\[Epsilon]*
         Coupling[ME, {}, 0]^2) - 
       ((I/16)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]) + 
     hbar*(((I/4)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       ((I/8)*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Coupling[gL, {}, 0]^2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
          {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]), 
   "hFermion-lVector-lScalar-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-1/4*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (4*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-1/4*(Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^
           2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (4*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], "hFermion-lVector-lFermion-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((2*Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], 
   "hFermion-lScalar-hFermion-lFermion-lFermion" -> 0, 
   "hFermion-lScalar-lFermion-hFermion-lFermion" -> 0, 
   "hFermion-lScalar-lFermion-lFermion-lFermion" -> 0, 
   "hFermion-lScalar-lVector-lScalar-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$3, Flavor]}, 0])/(8*\[Epsilon]*
         Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*(Coupling[gL, {}, 0]^2 + 
          Coupling[gY, {}, 0]^2)*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (8*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*(Coupling[gL, {}, 0]^2 + 
          Coupling[gY, {}, 0]^2)*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], 
   "hFermion-lScalar-lVector-lFermion-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-1/4*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (4*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-1/4*(Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^
           2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (4*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], 
   "hFermion-lFermion-lScalar-hFermion-lFermion" -> 0, 
   "hFermion-lFermion-lScalar-lFermion-lFermion" -> 0, 
   "hFermion-lFermion-lScalar-lVector-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$3, Flavor]}, 0])/(8*\[Epsilon]*
         Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*(Coupling[gL, {}, 0]^2 + 
          Coupling[gY, {}, 0]^2)*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (8*\[Epsilon]*Coupling[ME, {}, 0]^2) + 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*(Coupling[gL, {}, 0]^2 + 
          Coupling[gY, {}, 0]^2)*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], 
   "hFermion-lFermion-lScalar-lVector-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         (-Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$3, Flavor]}, 0])/(8*\[Epsilon]*
         Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*(-Coupling[gL, {}, 0]^2 + 
          Coupling[gY, {}, 0]^2)*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (8*\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*(Coupling[gL, {}, 0]^2 - 
          Coupling[gY, {}, 0]^2)*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], 
   "hFermion-lFermion-hFermion-lFermion-lFermion" -> 0, 
   "hFermion-lFermion-lFermion-lScalar-lFermion" -> 0, 
   "hFermion-lFermion-lFermion-lFermion-lScalar" -> 0, 
   "hFermion-lFermion-lFermion-lFermion-lFermion" -> 0, 
   "hFermion-lFermion-lFermion-lVector-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-1/4*(Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (4*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-1/4*(Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^
           2*Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (4*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], 
   "hFermion-lFermion-lFermion-lVector-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2)) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (2*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
          Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2)) - 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (2*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], 
   "hFermion-lFermion-lVector-lScalar-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         (-Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$3, Flavor]}, 0])/(8*\[Epsilon]*
         Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*(-Coupling[gL, {}, 0]^2 + 
          Coupling[gY, {}, 0]^2)*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (8*\[Epsilon]*Coupling[ME, {}, 0]^2) - 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*(Coupling[gL, {}, 0]^2 - 
          Coupling[gY, {}, 0]^2)*Coupling[yE, {Index[d$$2, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (8*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], 
   "hFermion-lFermion-lVector-lFermion-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-((Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2)) - 
       (Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (2*Coupling[ME, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-((Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
          Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
           {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[ME, {}, 0]^2)) - 
       (Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
         Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/
        (2*Coupling[ME, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}], 
   "hFermion-lFermion-hFermion-lFermion-hFermion-lFermion" -> 
    (hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
      Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
      Bar[Coupling[yE, {Index[d$$3, Flavor]}, 0]]*
      Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
      Coupling[yE, {Index[d$$1, Flavor]}, 0]*Coupling[yE, 
       {Index[d$$2, Flavor]}, 0]*Coupling[yE, {Index[d$$3, Flavor]}, 0]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}])/
     (3*Coupling[ME, {}, 0]^2), 
   "hFermion-lFermion-hFermion-lFermion-lFermion-lFermion" -> 
    (2*hbar*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
      Bar[Coupling[yE, {Index[d$$2, Flavor]}, 0]]*
      Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
      Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
      Coupling[yE, {Index[d$$1, Flavor]}, 0]*Coupling[yE, 
       {Index[d$$3, Flavor]}, 0]*Coupling[Ye, {Index[d$$2, Flavor], 
        Index[d$$4, Flavor]}, 0]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}])/Coupling[ME, {}, 0]^2, 
   "hFermion-lFermion-lFermion-hFermion-lFermion-lFermion" -> 0, 
   "hFermion-lFermion-lFermion-lFermion-lFermion-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
     ((-2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
        Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
         {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
        Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
       (\[Epsilon]*Coupling[ME, {}, 0]^2) - 
      (2*Bar[Coupling[yE, {Index[d$$1, Flavor]}, 0]]*
        Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
        Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[yE, {Index[d$$2, Flavor]}, 0]*Coupling[Ye, 
         {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
        Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
        (1 + Log[\[Mu]bar2/Coupling[ME, {}, 0]^2]))/Coupling[ME, {}, 0]^2)|>|>
