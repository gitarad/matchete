(* Created with the Wolfram Language : www.wolfram.com *)
<|"Model" -> "Singlet_Scalar_Extension", "Version" -> "0.2.0", 
 "Date" -> DateObject[{2024, 2, 23}, "Day"], "Time (Match)" -> 4.829659, 
 "Time (GreensSimplify)" -> 0.440775, "Time (EOMSimplify)" -> 11.781699, 
 "UV Lagrangian" -> Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Coupling[\[Mu], {}, 1]^2*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
     {}] + Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
     {Index[d$$1, Lorentz]}] - 
   (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
     Coupling[\[Lambda], {}, 0]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}])/2 - 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*Coupling[A, {}, 0]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[\[Phi], Scalar, {}, {}] - 
   (Coupling[M, {}, 0]^2*Field[\[Phi], Scalar, {}, {}]^2)/2 - 
   (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[\[Kappa], {}, 0]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {}]*Field[\[Phi], Scalar, {}, {}]^2)/2 - 
   (Coupling[\[Mu]\[Phi], {}, 0]*Field[\[Phi], Scalar, {}, {}]^3)/6 - 
   (Coupling[\[Lambda]\[Phi], {}, 0]*Field[\[Phi], Scalar, {}, {}]^4)/24 + 
   Field[\[Phi], Scalar, {}, {Index[d$$1, Lorentz]}]^2/2 - 
   FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^2/
    4 - FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]^2/4 - 
   FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}]^2/4 + 
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
       Index[d$$1, Flavor]}, {}] - 
   Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$2, Flavor]}, 
      {}] + I*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
      {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
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
  (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*Coupling[A, {}, 0]^2*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$2, Lorentz], 
       Index[d$$2, Lorentz]}])/(6*Coupling[M, {}, 0]^4) - 
   FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^2/
    4 + (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[A, {}, 0]^2*Coupling[gY, {}, 0]^2*Field[H, Scalar, 
      {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^
      2)/(12*Coupling[M, {}, 0]^4) - 
   FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]^2/4 + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[A, {}, 0]^2*
     Coupling[gL, {}, 0]*Coupling[gY, {}, 0]*Field[H, Scalar, 
      {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[B, 
      {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}])/(3*Coupling[M, {}, 0]^4) - 
   FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}]^2/4 + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[A, {}, 0]^2*Coupling[gL, {}, 0]^2*Field[H, Scalar, 
      {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {}]^2)/(12*Coupling[M, {}, 0]^4) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((-3*Coupling[A, {}, 0]^2*Coupling[gY, {}, 0]^2)/
      (2*\[Epsilon]*Coupling[M, {}, 0]^4) - 
     (Coupling[A, {}, 0]^2*Coupling[gY, {}, 0]^2*
       (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
      (4*Coupling[M, {}, 0]^4)) + 
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
    (((I/6)*Coupling[A, {}, 0]^2*Coupling[gL, {}, 0])/
      (\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/36)*Coupling[A, {}, 0]^2*Coupling[gL, {}, 0]*
       (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4) + 
   hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
       {Index[d$$2, Lorentz]}] - 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
       {Index[d$$2, Lorentz]}])*
    (((I/12)*Coupling[A, {}, 0]^2*Coupling[gY, {}, 0])/
      (\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/72)*Coupling[A, {}, 0]^2*Coupling[gY, {}, 0]*
       (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (Coupling[\[Mu], {}, 1]^2 + 
     hbar*(((Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/2 + 
         Coupling[A, {}, 0]^2*(1 - Coupling[\[Mu], {}, 1]^2/
            Coupling[M, {}, 0]^2 + Coupling[\[Mu], {}, 1]^4/
            Coupling[M, {}, 0]^4) - (Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], 
            {}, 0])/2)/\[Epsilon] + 
       ((Coupling[M, {}, 0]^6*Coupling[\[Kappa], {}, 0] + 
          2*Coupling[A, {}, 0]^2*(Coupling[M, {}, 0]^4 - Coupling[M, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^2 + Coupling[\[Mu], {}, 1]^4) - 
          Coupling[A, {}, 0]*Coupling[M, {}, 0]^4*Coupling[\[Mu]\[Phi], {}, 
            0])*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (2*Coupling[M, {}, 0]^4))) - 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    (-1 + hbar*((Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
        (\[Epsilon]*Coupling[M, {}, 0]^4) - 
       (Coupling[A, {}, 0]^2*(Coupling[M, {}, 0]^2 - Coupling[\[Mu], {}, 1]^2*
           (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/
        (2*Coupling[M, {}, 0]^4))) + 
   (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz], 
         Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
        Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
       {}])*(-1/2*Coupling[A, {}, 0]^2/Coupling[M, {}, 0]^4 + 
     hbar*((12*Coupling[A, {}, 0]^4 - Coupling[A, {}, 0]^2*
          Coupling[M, {}, 0]^2*(3*Coupling[gL, {}, 0]^2 + 
           3*Coupling[gY, {}, 0]^2 + 4*(-4*Coupling[\[Kappa], {}, 0] + 
             Coupling[\[Lambda], {}, 0] + Coupling[\[Lambda]\[Phi], {}, 0])))/
        (8*\[Epsilon]*Coupling[M, {}, 0]^6) - 
       (2*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]^2 + 
         64*Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 0] + 
         20*Coupling[A, {}, 0]*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
          Coupling[\[Mu]\[Phi], {}, 0] - 8*Coupling[A, {}, 0]^4*
          (20 + 9*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
         Coupling[A, {}, 0]^2*(-136*Coupling[M, {}, 0]^2*Coupling[\[Kappa], 
             {}, 0] + 108*Coupling[M, {}, 0]^2*Coupling[\[Lambda], {}, 0] + 
           24*Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0] - 
           22*Coupling[\[Mu]\[Phi], {}, 0]^2 - 96*Coupling[M, {}, 0]^2*
            Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 
           24*Coupling[M, {}, 0]^2*Coupling[\[Lambda], {}, 0]*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 24*Coupling[M, {}, 0]^2*
            Coupling[\[Lambda]\[Phi], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 
                0]^2] + 3*Coupling[gL, {}, 0]^2*Coupling[M, {}, 0]^2*
            (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           3*Coupling[gY, {}, 0]^2*Coupling[M, {}, 0]^2*
            (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/
        (48*Coupling[M, {}, 0]^6))) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    (-(Coupling[A, {}, 0]^2/Coupling[M, {}, 0]^4) + 
     hbar*(((2*Coupling[A, {}, 0]^4)/Coupling[M, {}, 0]^6 - 
         (Coupling[A, {}, 0]^2*(9*Coupling[gL, {}, 0]^2 + 
            3*Coupling[gY, {}, 0]^2 - 16*Coupling[\[Kappa], {}, 0] + 
            4*Coupling[\[Lambda]\[Phi], {}, 0]))/(4*Coupling[M, {}, 0]^4))/
        \[Epsilon] - (2*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]^2 + 
         52*Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 0] + 
         20*Coupling[A, {}, 0]*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
          Coupling[\[Mu]\[Phi], {}, 0] - 4*Coupling[A, {}, 0]^4*
          (13 + 12*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
         Coupling[A, {}, 0]^2*(-100*Coupling[M, {}, 0]^2*Coupling[\[Kappa], 
             {}, 0] + 24*Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 
             0] - 22*Coupling[\[Mu]\[Phi], {}, 0]^2 - 96*Coupling[M, {}, 0]^2*
            Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 
           24*Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0]*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 9*Coupling[gL, {}, 0]^2*
            Coupling[M, {}, 0]^2*(5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                 2]) + 3*Coupling[gY, {}, 0]^2*Coupling[M, {}, 0]^2*
            (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/
        (24*Coupling[M, {}, 0]^6))) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Coupling[A, {}, 0]^2/Coupling[M, {}, 0]^2 - Coupling[\[Lambda], {}, 0])/
      2 + hbar*((Coupling[M, {}, 0]^6*Coupling[\[Kappa], {}, 0]^2 - 
         8*Coupling[A, {}, 0]^4*(Coupling[M, {}, 0]^2 - 
           3*Coupling[\[Mu], {}, 1]^2) + Coupling[A, {}, 0]^2*
          (Coupling[M, {}, 0]^4*(-8*Coupling[\[Kappa], {}, 0] + 
             12*Coupling[\[Lambda], {}, 0] + Coupling[\[Lambda]\[Phi], {}, 
              0]) + 12*Coupling[M, {}, 0]^2*(Coupling[\[Kappa], {}, 0] - 
             2*Coupling[\[Lambda], {}, 0])*Coupling[\[Mu], {}, 1]^2) - 
         4*Coupling[A, {}, 0]^3*Coupling[\[Mu], {}, 1]^2*
          Coupling[\[Mu]\[Phi], {}, 0])/(4*\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (2*Coupling[A, {}, 0]*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]*
          Coupling[\[Mu]\[Phi], {}, 0] + Coupling[M, {}, 0]^6*
          Coupling[\[Kappa], {}, 0]^2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 
         4*Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 0]*
          (Coupling[M, {}, 0]^2 - Coupling[\[Mu], {}, 1]^2*
            (2 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2])) - 
         4*Coupling[A, {}, 0]^4*(Coupling[M, {}, 0]^2*
            (3 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 
           2*Coupling[\[Mu], {}, 1]^2*(4 + 3*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                 2])) + Coupling[A, {}, 0]^2*Coupling[M, {}, 0]^2*
          (-24*Coupling[\[Lambda], {}, 0]*Coupling[\[Mu], {}, 1]^2 - 
           Coupling[\[Mu]\[Phi], {}, 0]^2 - 24*Coupling[\[Lambda], {}, 0]*
            Coupling[\[Mu], {}, 1]^2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 
           4*Coupling[\[Kappa], {}, 0]*Coupling[\[Mu], {}, 1]^2*
            (4 + 3*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           Coupling[M, {}, 0]^2*((12*Coupling[\[Lambda], {}, 0] + Coupling[
                \[Lambda]\[Phi], {}, 0])*(1 + Log[\[Mu]bar2/Coupling[M, {}, 
                   0]^2]) - 4*Coupling[\[Kappa], {}, 0]*
              (3 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))))/
        (4*Coupling[M, {}, 0]^6))) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
    ((Coupling[A, {}, 0]^2*(-3*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
          0] + Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]))/
      (6*Coupling[M, {}, 0]^6) + 
     hbar*((Coupling[A, {}, 0]^2*(108*Coupling[A, {}, 0]^4 + 
          18*Coupling[A, {}, 0]^2*Coupling[M, {}, 0]^2*
           (7*Coupling[\[Kappa], {}, 0] - 12*Coupling[\[Lambda], {}, 0]) + 
          3*Coupling[M, {}, 0]^4*(12*Coupling[\[Kappa], {}, 0]^2 + 
            36*Coupling[\[Lambda], {}, 0]^2 - Coupling[\[Kappa], {}, 0]*
             (36*Coupling[\[Lambda], {}, 0] + Coupling[\[Lambda]\[Phi], {
                }, 0])) - 42*Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 
            0] + Coupling[A, {}, 0]*Coupling[M, {}, 0]^2*
           (-12*Coupling[\[Kappa], {}, 0] + 36*Coupling[\[Lambda], {}, 0] + 
            Coupling[\[Lambda]\[Phi], {}, 0])*Coupling[\[Mu]\[Phi], {}, 0]))/
        (12*\[Epsilon]*Coupling[M, {}, 0]^8) + 
       (-(Coupling[M, {}, 0]^6*Coupling[\[Kappa], {}, 0]^3) - 
         3*Coupling[A, {}, 0]*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]^
           2*Coupling[\[Mu]\[Phi], {}, 0] - 6*Coupling[A, {}, 0]^5*
          Coupling[\[Mu]\[Phi], {}, 0]*(15 + 
           7*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 4*Coupling[A, {}, 0]^6*
          (43 + 27*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
         Coupling[A, {}, 0]^3*(-2*Coupling[\[Mu]\[Phi], {}, 0]^3 + 
           Coupling[M, {}, 0]^2*Coupling[\[Mu]\[Phi], {}, 0]*
            (36*Coupling[\[Lambda], {}, 0]*(2 + Log[\[Mu]bar2/
                 Coupling[M, {}, 0]^2]) + Coupling[\[Lambda]\[Phi], {}, 0]*
              (4 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 
             12*Coupling[\[Kappa], {}, 0]*(5 + Log[\[Mu]bar2/
                 Coupling[M, {}, 0]^2]))) + 6*Coupling[A, {}, 0]^4*
          (2*Coupling[\[Mu]\[Phi], {}, 0]^2 + Coupling[M, {}, 0]^2*
            (-Coupling[\[Lambda]\[Phi], {}, 0] - 12*Coupling[\[Lambda], {
                }, 0]*(4 + 3*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
             Coupling[\[Kappa], {}, 0]*(37 + 21*Log[\[Mu]bar2/
                  Coupling[M, {}, 0]^2]))) + 3*Coupling[A, {}, 0]^2*
          (2*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
            Coupling[\[Mu]\[Phi], {}, 0]^2 + Coupling[M, {}, 0]^4*
            (36*Coupling[\[Lambda], {}, 0]^2*(1 + Log[\[Mu]bar2/
                 Coupling[M, {}, 0]^2]) + 2*Coupling[\[Kappa], {}, 0]^2*
              (11 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 
             Coupling[\[Kappa], {}, 0]*(Coupling[\[Lambda]\[Phi], {}, 0]*
                (2 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 12*Coupling[
                 \[Lambda], {}, 0]*(4 + 3*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                     2])))))/(12*Coupling[M, {}, 0]^8))) - 
   Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Yd, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Yd, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
      Coupling[M, {}, 0]^4)*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*(((-1/4*I)*Bar[Coupling[Yd, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Coupling[A, {}, 0]^2*
       Coupling[Yd, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M, {}, 0]^4) - 
     ((I/8)*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
      {Index[d$$1, Lorentz]}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    (((I/2)*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/4)*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(((I/4)*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/8)*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
    (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {Index[d$$1, Lorentz]}] - 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {Index[d$$1, Lorentz]}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
        Proj[1]]**Field[d, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, Flavor]}, {}]) - 
   Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
      Coupling[M, {}, 0]^4)*Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[l, Fermion, 
      {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(((-1/4*I)*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Coupling[A, {}, 0]^2*
       Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M, {}, 0]^4) - 
     ((I/8)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
   hbar*(((I/4)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/8)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
      {}] + I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     (Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
      Coupling[M, {}, 0]^4)*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + 
   hbar*(((I/4)*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 
         0]]*Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
         Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/8)*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
   hbar*(((I/4)*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 
         0]]*Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
         Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/8)*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
         Index[d$$1, Flavor]}, {}]) - 
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
       Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Yd, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Yd, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
      Coupling[M, {}, 0]^4)*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] - 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(((I/4)*Coupling[A, {}, 0]^2*
       (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] + 
        Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]))/
      (\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/8)*Coupling[A, {}, 0]^2*
       (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] + 
        Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0])*
       (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
   hbar*(((-1/4*I)*Bar[Coupling[Yu, {Index[d$$1, Flavor], 
          Index[d$$3, Flavor]}, 0]]*Coupling[A, {}, 0]^2*
       Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M, {}, 0]^4) - 
     ((I/8)*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
   hbar*(((I/4)*Coupling[A, {}, 0]^2*
       (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] - 
        Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]))/
      (\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/8)*Coupling[A, {}, 0]^2*
       (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] - 
        Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0])*
       (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
    (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
           SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}]) + 
   hbar*(((I/4)*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 
         0]]*Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
         Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/8)*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
    (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
           SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}]) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$3, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     (Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
      Coupling[M, {}, 0]^4)*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] - 
   Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[Bar[eps[SU2L]], {Bar[Index[d$$2, SU2L[fund]]], 
      Bar[Index[d$$3, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$1, SU2L[fund]]}, {}]*Field[H, Scalar, 
     {Index[d$$3, SU2L[fund]]}, {}]*
    ((Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
      Coupling[M, {}, 0]^4)*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    (((-1/2*I)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
     ((I/4)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(((I/4)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/8)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
   hbar*(((I/4)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/8)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
    (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {Index[d$$1, Lorentz]}] - 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {Index[d$$1, Lorentz]}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
        Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, Flavor]}, {}]), "On-shell EFT Lagrangian" -> 
  Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}] - 
   FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^2/
    4 + (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[A, {}, 0]^2*Coupling[gY, {}, 0]^2*Field[H, Scalar, 
      {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^
      2)/(12*Coupling[M, {}, 0]^4) - 
   FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]^2/4 + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[A, {}, 0]^2*
     Coupling[gL, {}, 0]*Coupling[gY, {}, 0]*Field[H, Scalar, 
      {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[B, 
      {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}])/(3*Coupling[M, {}, 0]^4) - 
   FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}]^2/4 + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[A, {}, 0]^2*Coupling[gL, {}, 0]^2*Field[H, Scalar, 
      {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {}]^2)/(12*Coupling[M, {}, 0]^4) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((-5*Coupling[A, {}, 0]^2*Coupling[gY, {}, 0]^2)/
      (3*\[Epsilon]*Coupling[M, {}, 0]^4) - 
     (Coupling[A, {}, 0]^2*Coupling[gY, {}, 0]^2*
       (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
      (18*Coupling[M, {}, 0]^4)) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/\[Epsilon] + 
     (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/2 + 
     (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/(2*\[Epsilon]) + 
     Coupling[\[Mu], {}, 1]^2 - (hbar*Coupling[A, {}, 0]^2*
       Coupling[\[Mu], {}, 1]^2)/Coupling[M, {}, 0]^2 - 
     (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
      (\[Epsilon]*Coupling[M, {}, 0]^2) + 
     (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
      Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
       Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
     (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
     (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/(2*\[Epsilon]) + 
     hbar*Coupling[A, {}, 0]^2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 
     (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
       Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2 - 
     (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
       Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
     (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
       Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
     (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
       Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2 + 
     hbar*((Coupling[A, {}, 0]^2*(hbar*Coupling[A, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2)/\[Epsilon] + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/2 + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
            (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
            Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
            Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
            (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
             Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
            2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2)^2)/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Coupling[A, {}, 0]^2*(hbar*Coupling[A, {}, 0]^2 + 
          (hbar*Coupling[A, {}, 0]^2)/\[Epsilon] + 
          (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/2 + 
          (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
           (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
          (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
           Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
            Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
          (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
           Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
            Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
          (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
          (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
           (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
           Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
            Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
           2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
          (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
          (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2)*
         (-3*Coupling[M, {}, 0]^2 + 2*(8 + 3*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                2])*(hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
             \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/(2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
             Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
             Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
             (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
              Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
             2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2)))/
        (6*Coupling[M, {}, 0]^4))) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    (-(Coupling[A, {}, 0]^2/Coupling[M, {}, 0]^4) + 
     hbar*(((2*Coupling[A, {}, 0]^4)/Coupling[M, {}, 0]^6 - 
         (Coupling[A, {}, 0]^2*(15*Coupling[gL, {}, 0]^2 + 
            5*Coupling[gY, {}, 0]^2 - 24*Coupling[\[Kappa], {}, 0] + 
            6*Coupling[\[Lambda]\[Phi], {}, 0]))/(6*Coupling[M, {}, 0]^4))/
        \[Epsilon] - (3*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]^2 + 
         78*Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 0] + 
         30*Coupling[A, {}, 0]*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
          Coupling[\[Mu]\[Phi], {}, 0] - 6*Coupling[A, {}, 0]^4*
          (19 + 12*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
         Coupling[A, {}, 0]^2*(-33*Coupling[\[Mu]\[Phi], {}, 0]^2 + 
           3*Coupling[gL, {}, 0]^2*Coupling[M, {}, 0]^2*
            (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           Coupling[gY, {}, 0]^2*Coupling[M, {}, 0]^2*
            (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 
           6*Coupling[M, {}, 0]^2*(-6*Coupling[\[Lambda]\[Phi], {}, 0]*
              (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
             Coupling[\[Kappa], {}, 0]*(25 + 24*Log[\[Mu]bar2/
                  Coupling[M, {}, 0]^2]))))/(36*Coupling[M, {}, 0]^6))) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((-Coupling[\[Lambda], {}, 0] + (Coupling[A, {}, 0]^2*
         (Coupling[M, {}, 0]^2 - 2*(hbar*Coupling[A, {}, 0]^2 + 
            (hbar*Coupling[A, {}, 0]^2)/\[Epsilon] + 
            (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/2 + 
            (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
             (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
             Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
             Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
             (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
              Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
             2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2)))/Coupling[M, {}, 0]^4)/
      2 + hbar*((3*Coupling[M, {}, 0]^6*Coupling[\[Kappa], {}, 0]^2 - 
         12*Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 0]*
          (hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
            \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
              0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
            (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
            Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
            Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
            (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
             Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
            2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2) + 
         24*Coupling[A, {}, 0]^4*(-Coupling[M, {}, 0]^2 + 
           5*(hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
              \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
                0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
              (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
              Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
              Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
              (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*Log[\[Mu]bar2/
                Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*Coupling[
                \[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/2)) - Coupling[A, {}, 0]^2*
          (3*Coupling[M, {}, 0]^4*(8*Coupling[\[Kappa], {}, 0] - 
             12*Coupling[\[Lambda], {}, 0] - Coupling[\[Lambda]\[Phi], {}, 
              0]) + 2*Coupling[M, {}, 0]^2*(5*Coupling[gL, {}, 0]^2 + 
             5*Coupling[gY, {}, 0]^2 + 6*(-7*Coupling[\[Kappa], {}, 0] + 8*
                Coupling[\[Lambda], {}, 0] + Coupling[\[Lambda]\[Phi], {}, 
                0]))*(hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
              \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
                0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
              (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
              Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
              Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
              (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*Log[\[Mu]bar2/
                Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*Coupling[
                \[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/2)))/
        (12*\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (3*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]^2*
          (-(hbar*Coupling[A, {}, 0]^2) - (hbar*Coupling[A, {}, 0]^2)/
            \[Epsilon] - (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
              0])/2 - (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
            (2*\[Epsilon]) - Coupling[\[Mu], {}, 1]^2 + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
            Coupling[M, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) - 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
            Coupling[M, {}, 0]^4 - (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 + 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
            (2*\[Epsilon]) - hbar*Coupling[A, {}, 0]^2*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 3*Coupling[M, {}, 0]^2*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] - (hbar*Coupling[M, {}, 0]^2*
             Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
            2 + (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 - 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 + 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2) + 6*Coupling[A, {}, 0]*
          Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
          Coupling[\[Mu]\[Phi], {}, 0]*(3*Coupling[M, {}, 0]^2 - 
           5*(hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
              \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
                0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
              (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
              Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
              Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
              (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*Log[\[Mu]bar2/
                Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*Coupling[
                \[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/2)) - 
         12*Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 0]*
          (-3*Coupling[M, {}, 0]^2 + (14 + 3*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                 2])*(hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
              \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
                0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
              (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
              Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
              Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
              (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*Log[\[Mu]bar2/
                Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*Coupling[
                \[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/2)) + 
         18*Coupling[A, {}, 0]^4*(-(Coupling[M, {}, 0]^2*
             (7 + 4*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])) + 
           (38 + 20*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])*
            (hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
              \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
                0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
              (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
              Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
              Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
              (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*Log[\[Mu]bar2/
                Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*Coupling[
                \[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/2)) - Coupling[A, {}, 0]^2*
          ((hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
              \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
                0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
              (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
              Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
              Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*Coupling[
                 \[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
              (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*Log[\[Mu]bar2/
                Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*Coupling[
                \[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2 - 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
             (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
             (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*Log[
                \[Mu]bar2/Coupling[M, {}, 0]^2])/2)*
            (-348*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] + 
             480*Coupling[M, {}, 0]^2*Coupling[\[Lambda], {}, 0] + 
             36*Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0] - 
             33*Coupling[\[Mu]\[Phi], {}, 0]^2 - 252*Coupling[M, {}, 0]^2*
              Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 
             288*Coupling[M, {}, 0]^2*Coupling[\[Lambda], {}, 0]*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + 36*Coupling[M, {}, 0]^2*
              Coupling[\[Lambda]\[Phi], {}, 0]*Log[\[Mu]bar2/
                Coupling[M, {}, 0]^2] + Coupling[gL, {}, 0]^2*
              Coupling[M, {}, 0]^2*(31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                   2]) + Coupling[gY, {}, 0]^2*Coupling[M, {}, 0]^2*
              (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])) + 
           9*Coupling[M, {}, 0]^2*(Coupling[\[Mu]\[Phi], {}, 0]^2 - 
             Coupling[M, {}, 0]^2*(Coupling[\[Lambda]\[Phi], {}, 0]*
                (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 4*Coupling[
                 \[Kappa], {}, 0]*(3 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                     2]) + 2*Coupling[\[Lambda], {}, 0]*(7 + 
                 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))))/
        (36*Coupling[M, {}, 0]^6))) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
    ((Coupling[A, {}, 0]^2*(-6*Coupling[A, {}, 0]^2 - 3*Coupling[M, {}, 0]^2*
         (Coupling[\[Kappa], {}, 0] - 2*Coupling[\[Lambda], {}, 0]) + 
        Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]))/
      (6*Coupling[M, {}, 0]^6) + 
     hbar*((Coupling[A, {}, 0]^2*(192*Coupling[A, {}, 0]^4 - 
          2*Coupling[A, {}, 0]^2*Coupling[M, {}, 0]^2*
           (5*Coupling[gL, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2 - 
            111*Coupling[\[Kappa], {}, 0] + 168*Coupling[\[Lambda], {}, 0] + 
            9*Coupling[\[Lambda]\[Phi], {}, 0]) + Coupling[M, {}, 0]^4*
           (30*Coupling[\[Kappa], {}, 0]^2 - 3*Coupling[\[Kappa], {}, 0]*
             (52*Coupling[\[Lambda], {}, 0] + Coupling[\[Lambda]\[Phi], {
                }, 0]) + 2*Coupling[\[Lambda], {}, 0]*
             (5*Coupling[gL, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2 + 
              60*Coupling[\[Lambda], {}, 0] + 6*Coupling[\[Lambda]\[Phi], {}, 
                0])) - 42*Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 0] + 
          Coupling[A, {}, 0]*Coupling[M, {}, 0]^2*
           (-12*Coupling[\[Kappa], {}, 0] + 36*Coupling[\[Lambda], {}, 0] + 
            Coupling[\[Lambda]\[Phi], {}, 0])*Coupling[\[Mu]\[Phi], {}, 0]))/
        (12*\[Epsilon]*Coupling[M, {}, 0]^8) + 
       (3*Coupling[M, {}, 0]^6*Coupling[\[Kappa], {}, 0]^2*
          (-Coupling[\[Kappa], {}, 0] + Coupling[\[Lambda], {}, 0]) + 
         3*Coupling[A, {}, 0]*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]*
          (-3*Coupling[\[Kappa], {}, 0] + 10*Coupling[\[Lambda], {}, 0])*
          Coupling[\[Mu]\[Phi], {}, 0] - 3*Coupling[A, {}, 0]^5*
          Coupling[\[Mu]\[Phi], {}, 0]*(149 + 
           42*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 6*Coupling[A, {}, 0]^6*
          (175 + 96*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 
         3*Coupling[A, {}, 0]^3*(2*Coupling[\[Mu]\[Phi], {}, 0]^3 + 
           Coupling[M, {}, 0]^2*Coupling[\[Mu]\[Phi], {}, 0]*
            (-(Coupling[\[Lambda]\[Phi], {}, 0]*(4 + Log[\[Mu]bar2/
                  Coupling[M, {}, 0]^2])) + 2*Coupling[\[Kappa], {}, 0]*
              (41 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 
             4*Coupling[\[Lambda], {}, 0]*(26 + 9*Log[\[Mu]bar2/
                  Coupling[M, {}, 0]^2]))) - Coupling[A, {}, 0]^4*
          (-87*Coupling[\[Mu]\[Phi], {}, 0]^2 + Coupling[gL, {}, 0]^2*
            Coupling[M, {}, 0]^2*(31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                 2]) + Coupling[gY, {}, 0]^2*Coupling[M, {}, 0]^2*
            (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           3*Coupling[M, {}, 0]^2*(6*Coupling[\[Lambda]\[Phi], {}, 0]*
              (4 + 3*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
             6*Coupling[\[Lambda], {}, 0]*(87 + 56*Log[\[Mu]bar2/
                  Coupling[M, {}, 0]^2]) - Coupling[\[Kappa], {}, 0]*
              (371 + 222*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))) + 
         Coupling[A, {}, 0]^2*(3*Coupling[M, {}, 0]^2*
            (6*Coupling[\[Kappa], {}, 0] - 11*Coupling[\[Lambda], {}, 0])*
            Coupling[\[Mu]\[Phi], {}, 0]^2 + Coupling[M, {}, 0]^4*
            (15*Coupling[\[Kappa], {}, 0]^2*(13 + 6*Log[\[Mu]bar2/
                  Coupling[M, {}, 0]^2]) + Coupling[\[Lambda], {}, 0]*
              (36*Coupling[\[Lambda]\[Phi], {}, 0]*(1 + Log[\[Mu]bar2/
                   Coupling[M, {}, 0]^2]) + Coupling[gL, {}, 0]^2*
                (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
               Coupling[gY, {}, 0]^2*(31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 
                      0]^2]) + 12*Coupling[\[Lambda], {}, 0]*
                (41 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])) - 
             3*Coupling[\[Kappa], {}, 0]*(3*Coupling[\[Lambda]\[Phi], {}, 0]*
                (2 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 4*Coupling[
                 \[Lambda], {}, 0]*(53 + 39*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                     2])))))/(36*Coupling[M, {}, 0]^8))) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    (-Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]] + 
     hbar*(-1/2*(Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 
            0]]*Coupling[A, {}, 0]^2*(hbar*Coupling[A, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2)/\[Epsilon] + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/2 + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
            (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
            Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
            Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
            (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
             Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
            2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2))/
         (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*(3*Coupling[M, {}, 0]^2 - 
          (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])*
           (hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
             \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/(2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
             Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
             Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
             (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
              Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
             2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2)))/
        (12*Coupling[M, {}, 0]^4)))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2)/(2*Coupling[M, {}, 0]^4) + 
     hbar*((Coupling[A, {}, 0]^2*(18*Bar[Coupling[Yd, {Index[d$$1, Flavor], 
              Index[d$$3, Flavor]}, 0]]*Bar[Coupling[Yd, 
             {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[M, {}, 0]^2*Coupling[Yd, {Index[d$$4, Flavor], 
             Index[d$$3, Flavor]}, 0] + 
          Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
           (-18*Coupling[A, {}, 0]^2 + Coupling[M, {}, 0]^2*
             (5*Coupling[gL, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2 + 
              6*(-4*Coupling[\[Kappa], {}, 0] + Coupling[\[Lambda], {}, 0] + 
                Coupling[\[Lambda]\[Phi], {}, 0])))))/
        (12*\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (18*Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[Yd, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[A, {}, 0]^2*Coupling[M, {}, 0]^2*Coupling[Yd, 
           {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
          (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
         Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
          (3*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]^2 + 
           96*Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 0] + 
           30*Coupling[A, {}, 0]*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
             0]*Coupling[\[Mu]\[Phi], {}, 0] - 27*Coupling[A, {}, 0]^4*
            (11 + 4*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           Coupling[A, {}, 0]^2*(-33*Coupling[\[Mu]\[Phi], {}, 0]^2 + 
             Coupling[gL, {}, 0]^2*Coupling[M, {}, 0]^2*(31 + 30*
                Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + Coupling[gY, {}, 0]^2*
              Coupling[M, {}, 0]^2*(31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                   2]) + 6*Coupling[M, {}, 0]^2*(6*Coupling[\[Lambda]\[Phi], 
                 {}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
               Coupling[\[Lambda], {}, 0]*(29 + 6*Log[\[Mu]bar2/
                    Coupling[M, {}, 0]^2]) - 2*Coupling[\[Kappa], {}, 0]*
                (17 + 12*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))))/
        (72*Coupling[M, {}, 0]^6)))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*(((-1/36*I)*Coupling[A, {}, 0]^2*
       (9*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] - 
        Coupling[gY, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]]))/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
     ((I/216)*Coupling[A, {}, 0]^2*
       (27*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - Coupling[gY, {}, 0]^2*
         Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
         (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/Coupling[M, {}, 0]^4)*
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
      {Index[d$$1, Lorentz]}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    (((I/2)*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/4)*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    (-Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]] + 
     hbar*(-1/2*(Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 
            0]]*Coupling[A, {}, 0]^2*(hbar*Coupling[A, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2)/\[Epsilon] + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/2 + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
            (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
            Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
            Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
            (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
             Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
            2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2))/
         (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*(3*Coupling[M, {}, 0]^2 - 
          (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])*
           (hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
             \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/(2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
             Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
             Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
             (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
              Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
             2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2)))/
        (12*Coupling[M, {}, 0]^4)))*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2)/(2*Coupling[M, {}, 0]^4) + 
     hbar*((Coupling[A, {}, 0]^2*(18*Bar[Coupling[Ye, {Index[d$$1, Flavor], 
              Index[d$$3, Flavor]}, 0]]*Bar[Coupling[Ye, 
             {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[M, {}, 0]^2*Coupling[Ye, {Index[d$$4, Flavor], 
             Index[d$$3, Flavor]}, 0] + 
          Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
           (-18*Coupling[A, {}, 0]^2 + Coupling[M, {}, 0]^2*
             (5*Coupling[gL, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2 + 
              6*(-4*Coupling[\[Kappa], {}, 0] + Coupling[\[Lambda], {}, 0] + 
                Coupling[\[Lambda]\[Phi], {}, 0])))))/
        (12*\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (18*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[A, {}, 0]^2*Coupling[M, {}, 0]^2*Coupling[Ye, 
           {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
          (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
         Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
          (3*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]^2 + 
           96*Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 0] + 
           30*Coupling[A, {}, 0]*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
             0]*Coupling[\[Mu]\[Phi], {}, 0] - 27*Coupling[A, {}, 0]^4*
            (11 + 4*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           Coupling[A, {}, 0]^2*(-33*Coupling[\[Mu]\[Phi], {}, 0]^2 + 
             Coupling[gL, {}, 0]^2*Coupling[M, {}, 0]^2*(31 + 30*
                Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + Coupling[gY, {}, 0]^2*
              Coupling[M, {}, 0]^2*(31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                   2]) + 6*Coupling[M, {}, 0]^2*(6*Coupling[\[Lambda]\[Phi], 
                 {}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
               Coupling[\[Lambda], {}, 0]*(29 + 6*Log[\[Mu]bar2/
                    Coupling[M, {}, 0]^2]) - 2*Coupling[\[Kappa], {}, 0]*
                (17 + 12*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))))/
        (72*Coupling[M, {}, 0]^6)))*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*(((-1/12*I)*Coupling[A, {}, 0]^2*
       (3*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] - 
        Coupling[gY, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]]))/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
     ((I/72)*Coupling[A, {}, 0]^2*
       (9*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - Coupling[gY, {}, 0]^2*
         Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
         (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/Coupling[M, {}, 0]^4)*
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
   Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (-Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
     hbar*(-1/2*(Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*(hbar*Coupling[A, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2)/\[Epsilon] + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/2 + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
            (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
            Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
            Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
            (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
             Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
            2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2))/
         (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*(3*Coupling[M, {}, 0]^2 - 
          (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])*
           (hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
             \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/(2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
             Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
             Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
             (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
              Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
             2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2)))/
        (12*Coupling[M, {}, 0]^4)))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] + 
   (hbar*Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$4, Flavor], 
       Index[d$$1, Flavor]}, 0]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
       {}])/(6*Coupling[M, {}, 0]^4) + 
   (hbar*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$4, Flavor], 
       Index[d$$1, Flavor]}, 0]*Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[l, Fermion, 
       {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}]*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
       {}])/(6*Coupling[M, {}, 0]^4) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
         Index[d$$1, Flavor]}, 0])/(2*Coupling[M, {}, 0]^4) + 
     hbar*((-18*Coupling[A, {}, 0]^4*Coupling[Ye, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0] + Coupling[A, {}, 0]^2*
          Coupling[M, {}, 0]^2*(5*Coupling[gL, {}, 0]^2*Coupling[Ye, 
             {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
           5*Coupling[gY, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
              Index[d$$1, Flavor]}, 0] + 18*Bar[Coupling[Ye, {Index[d$$3, 
                Flavor], Index[d$$4, Flavor]}, 0]]*Coupling[Ye, 
             {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] + 
           6*Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (-4*Coupling[\[Kappa], {}, 0] + Coupling[\[Lambda], {}, 0] + 
             Coupling[\[Lambda]\[Phi], {}, 0])))/(12*\[Epsilon]*
         Coupling[M, {}, 0]^6) + (3*Coupling[M, {}, 0]^4*
          Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[\[Kappa], {}, 0]^2 + 96*Coupling[A, {}, 0]^3*
          Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[\[Mu]\[Phi], {}, 0] + 30*Coupling[A, {}, 0]*
          Coupling[M, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[\[Kappa], {}, 0]*
          Coupling[\[Mu]\[Phi], {}, 0] - 27*Coupling[A, {}, 0]^4*
          Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          (11 + 4*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
         Coupling[A, {}, 0]^2*(18*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
               Index[d$$4, Flavor]}, 0]]*Coupling[M, {}, 0]^2*
            Coupling[Ye, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
            (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           Coupling[gL, {}, 0]^2*Coupling[M, {}, 0]^2*Coupling[Ye, 
             {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           Coupling[gY, {}, 0]^2*Coupling[M, {}, 0]^2*Coupling[Ye, 
             {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           3*Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (-11*Coupling[\[Mu]\[Phi], {}, 0]^2 + 2*Coupling[M, {}, 0]^2*
              (6*Coupling[\[Lambda]\[Phi], {}, 0]*(1 + Log[\[Mu]bar2/
                   Coupling[M, {}, 0]^2]) + Coupling[\[Lambda], {}, 0]*
                (29 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 2*
                Coupling[\[Kappa], {}, 0]*(17 + 12*Log[\[Mu]bar2/
                    Coupling[M, {}, 0]^2])))))/(72*Coupling[M, {}, 0]^6)))*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + hbar*(((I/12)*Coupling[A, {}, 0]^2*
       (3*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] - 
        Coupling[gL, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]]))/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/72)*Coupling[A, {}, 0]^2*
       (9*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - Coupling[gL, {}, 0]^2*
         Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
         (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/Coupling[M, {}, 0]^4)*
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
        {}]) + hbar*(((I/24)*Coupling[A, {}, 0]^2*(Coupling[gL, {}, 0]^2 + 
        Coupling[gY, {}, 0]^2)*Delta[Index[d$$1, Flavor], 
        Index[d$$2, Flavor]])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/144)*Coupling[A, {}, 0]^2*(Coupling[gL, {}, 0]^2 + 
        Coupling[gY, {}, 0]^2)*Delta[Index[d$$1, Flavor], 
        Index[d$$2, Flavor]]*(17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
      Coupling[M, {}, 0]^4)*
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
        {}]) + Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (-Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
     hbar*(-1/2*(Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*(hbar*Coupling[A, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2)/\[Epsilon] + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/2 + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
            (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
            Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
            Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
            (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
             Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
            2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2))/
         (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*(3*Coupling[M, {}, 0]^2 - 
          (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])*
           (hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
             \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/(2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
             Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
             Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
             (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
              Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
             2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2)))/
        (12*Coupling[M, {}, 0]^4)))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] + 
   (hbar*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$4, Flavor], 
       Index[d$$1, Flavor]}, 0]*Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[l, Fermion, 
       {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[Proj[1]]**
      Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (6*Coupling[M, {}, 0]^4) + 
   (hbar*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
     Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$3, Flavor], 
       Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
       Index[d$$2, Flavor]}, 0]*
     Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
       {}]*Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]**
      DiracProduct[Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
        Index[d$$2, Flavor]}, {}])/(6*Coupling[M, {}, 0]^4) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
         Index[d$$1, Flavor]}, 0])/(2*Coupling[M, {}, 0]^4) + 
     hbar*((-18*Coupling[A, {}, 0]^4*Coupling[Yd, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0] + Coupling[A, {}, 0]^2*
          Coupling[M, {}, 0]^2*(5*Coupling[gL, {}, 0]^2*Coupling[Yd, 
             {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
           5*Coupling[gY, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
              Index[d$$1, Flavor]}, 0] + 18*Bar[Coupling[Yd, {Index[d$$3, 
                Flavor], Index[d$$4, Flavor]}, 0]]*Coupling[Yd, 
             {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[Yd, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] + 
           6*Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (-4*Coupling[\[Kappa], {}, 0] + Coupling[\[Lambda], {}, 0] + 
             Coupling[\[Lambda]\[Phi], {}, 0])))/(12*\[Epsilon]*
         Coupling[M, {}, 0]^6) + (3*Coupling[M, {}, 0]^4*
          Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[\[Kappa], {}, 0]^2 + 96*Coupling[A, {}, 0]^3*
          Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[\[Mu]\[Phi], {}, 0] + 30*Coupling[A, {}, 0]*
          Coupling[M, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[\[Kappa], {}, 0]*
          Coupling[\[Mu]\[Phi], {}, 0] - 27*Coupling[A, {}, 0]^4*
          Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          (11 + 4*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
         Coupling[A, {}, 0]^2*(18*Bar[Coupling[Yd, {Index[d$$3, Flavor], 
               Index[d$$4, Flavor]}, 0]]*Coupling[M, {}, 0]^2*
            Coupling[Yd, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[Yd, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
            (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           Coupling[gL, {}, 0]^2*Coupling[M, {}, 0]^2*Coupling[Yd, 
             {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           Coupling[gY, {}, 0]^2*Coupling[M, {}, 0]^2*Coupling[Yd, 
             {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           3*Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (-11*Coupling[\[Mu]\[Phi], {}, 0]^2 + 2*Coupling[M, {}, 0]^2*
              (6*Coupling[\[Lambda]\[Phi], {}, 0]*(1 + Log[\[Mu]bar2/
                   Coupling[M, {}, 0]^2]) + Coupling[\[Lambda], {}, 0]*
                (29 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 2*
                Coupling[\[Kappa], {}, 0]*(17 + 12*Log[\[Mu]bar2/
                    Coupling[M, {}, 0]^2])))))/(72*Coupling[M, {}, 0]^6)))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    (-Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
     hbar*(-1/2*(Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*(hbar*Coupling[A, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2)/\[Epsilon] + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/2 + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
            (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
            Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
            Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
            (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
             Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
            2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2))/
         (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*(3*Coupling[M, {}, 0]^2 - 
          (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])*
           (hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
             \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/(2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
             Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
             Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
             (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
              Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
             2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2)))/
        (12*Coupling[M, {}, 0]^4)))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(((I/12)*Coupling[A, {}, 0]^2*
       (3*Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] + 
        3*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] - 
        Coupling[gL, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]]))/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/72)*Coupling[A, {}, 0]^2*
       (9*Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
        9*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - Coupling[gL, {}, 0]^2*
         Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
         (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/Coupling[M, {}, 0]^4)*
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
   hbar*(((-1/72*I)*Coupling[A, {}, 0]^2*
       (18*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] + 
        (-3*Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]))/
      (\[Epsilon]*Coupling[M, {}, 0]^4) - 
     ((I/432)*Coupling[A, {}, 0]^2*
       (54*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 
        (3*Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
         (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/Coupling[M, {}, 0]^4)*
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
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$3, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
         Index[d$$1, Flavor]}, 0])/(2*Coupling[M, {}, 0]^4) + 
     hbar*((-18*Coupling[A, {}, 0]^4*Coupling[Yu, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0] + Coupling[A, {}, 0]^2*
          Coupling[M, {}, 0]^2*(5*Coupling[gL, {}, 0]^2*Coupling[Yu, 
             {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
           5*Coupling[gY, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
              Index[d$$1, Flavor]}, 0] + 18*Bar[Coupling[Yu, {Index[d$$3, 
                Flavor], Index[d$$4, Flavor]}, 0]]*Coupling[Yu, 
             {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[Yu, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] + 
           6*Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (-4*Coupling[\[Kappa], {}, 0] + Coupling[\[Lambda], {}, 0] + 
             Coupling[\[Lambda]\[Phi], {}, 0])))/(12*\[Epsilon]*
         Coupling[M, {}, 0]^6) + (3*Coupling[M, {}, 0]^4*
          Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[\[Kappa], {}, 0]^2 + 96*Coupling[A, {}, 0]^3*
          Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[\[Mu]\[Phi], {}, 0] + 30*Coupling[A, {}, 0]*
          Coupling[M, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[\[Kappa], {}, 0]*
          Coupling[\[Mu]\[Phi], {}, 0] - 27*Coupling[A, {}, 0]^4*
          Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          (11 + 4*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
         Coupling[A, {}, 0]^2*(18*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
               Index[d$$4, Flavor]}, 0]]*Coupling[M, {}, 0]^2*
            Coupling[Yu, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[Yu, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
            (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           Coupling[gL, {}, 0]^2*Coupling[M, {}, 0]^2*Coupling[Yu, 
             {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           Coupling[gY, {}, 0]^2*Coupling[M, {}, 0]^2*Coupling[Yu, 
             {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           3*Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (-11*Coupling[\[Mu]\[Phi], {}, 0]^2 + 2*Coupling[M, {}, 0]^2*
              (6*Coupling[\[Lambda]\[Phi], {}, 0]*(1 + Log[\[Mu]bar2/
                   Coupling[M, {}, 0]^2]) + Coupling[\[Lambda], {}, 0]*
                (29 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 2*
                Coupling[\[Kappa], {}, 0]*(17 + 12*Log[\[Mu]bar2/
                    Coupling[M, {}, 0]^2])))))/(72*Coupling[M, {}, 0]^6)))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   (hbar*Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$4, Flavor], 
       Index[d$$1, Flavor]}, 0]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[Proj[1]]**
      Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (6*Coupling[M, {}, 0]^4) + 
   (hbar*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
     Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$4, Flavor], 
       Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$3, Flavor], 
       Index[d$$2, Flavor]}, 0]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[Proj[1]]**
      Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (6*Coupling[M, {}, 0]^4) + 
   CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {}]*
    (-Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]] + 
     hbar*(-1/2*(Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 
            0]]*Coupling[A, {}, 0]^2*(hbar*Coupling[A, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2)/\[Epsilon] + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/2 + 
           (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
            (2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
            Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
            Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
             Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
            (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
            Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
             Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
            2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
           (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
           (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2))/
         (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*(3*Coupling[M, {}, 0]^2 - 
          (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])*
           (hbar*Coupling[A, {}, 0]^2 + (hbar*Coupling[A, {}, 0]^2)/
             \[Epsilon] + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/2 + (hbar*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {
                }, 0])/(2*\[Epsilon]) + Coupling[\[Mu], {}, 1]^2 - 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
             Coupling[M, {}, 0]^2 - (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^2)/(\[Epsilon]*Coupling[M, {}, 0]^2) + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
             Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
              Coupling[\[Mu], {}, 1]^4)/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/2 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/
             (2*\[Epsilon]) + hbar*Coupling[A, {}, 0]^2*
             Log[\[Mu]bar2/Coupling[M, {}, 0]^2] + (hbar*Coupling[M, {}, 0]^2*
              Coupling[\[Kappa], {}, 0]*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/
             2 - (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^2 + 
            (hbar*Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/Coupling[M, {}, 0]^4 - 
            (hbar*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
              Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/2)))/
        (12*Coupling[M, {}, 0]^4)))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[Bar[eps[SU2L]], {Bar[Index[d$$2, SU2L[fund]]], 
      Bar[Index[d$$3, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$1, SU2L[fund]]}, {}]*Field[H, Scalar, 
     {Index[d$$3, SU2L[fund]]}, {}]*
    ((Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2)/(2*Coupling[M, {}, 0]^4) + 
     hbar*((Coupling[A, {}, 0]^2*(18*Bar[Coupling[Yu, {Index[d$$1, Flavor], 
              Index[d$$3, Flavor]}, 0]]*Bar[Coupling[Yu, 
             {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[M, {}, 0]^2*Coupling[Yu, {Index[d$$4, Flavor], 
             Index[d$$3, Flavor]}, 0] + 
          Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
           (-18*Coupling[A, {}, 0]^2 + Coupling[M, {}, 0]^2*
             (5*Coupling[gL, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2 + 
              6*(-4*Coupling[\[Kappa], {}, 0] + Coupling[\[Lambda], {}, 0] + 
                Coupling[\[Lambda]\[Phi], {}, 0])))))/
        (12*\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (18*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[A, {}, 0]^2*Coupling[M, {}, 0]^2*Coupling[Yu, 
           {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
          (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
         Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
          (3*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]^2 + 
           96*Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 0] + 
           30*Coupling[A, {}, 0]*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
             0]*Coupling[\[Mu]\[Phi], {}, 0] - 27*Coupling[A, {}, 0]^4*
            (11 + 4*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
           Coupling[A, {}, 0]^2*(-33*Coupling[\[Mu]\[Phi], {}, 0]^2 + 
             Coupling[gL, {}, 0]^2*Coupling[M, {}, 0]^2*(31 + 30*
                Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + Coupling[gY, {}, 0]^2*
              Coupling[M, {}, 0]^2*(31 + 30*Log[\[Mu]bar2/Coupling[M, {}, 0]^
                   2]) + 6*Coupling[M, {}, 0]^2*(6*Coupling[\[Lambda]\[Phi], 
                 {}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) + 
               Coupling[\[Lambda], {}, 0]*(29 + 6*Log[\[Mu]bar2/
                    Coupling[M, {}, 0]^2]) - 2*Coupling[\[Kappa], {}, 0]*
                (17 + 12*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))))/
        (72*Coupling[M, {}, 0]^6)))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    (((-1/2*I)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
     ((I/4)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(((I/36)*Coupling[A, {}, 0]^2*
       (9*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] - 
        2*Coupling[gY, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]]))/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
     ((I/216)*Coupling[A, {}, 0]^2*
       (27*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]) - 
        2*Coupling[gY, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]]*(17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/
      Coupling[M, {}, 0]^4)*
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
   (hbar*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
     Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]]*
     CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[A, {}, 0]^2*
     Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
      DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/(6*Coupling[M, {}, 0]^4) + 
   (hbar*Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
     CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[A, {}, 0]^2*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/(6*Coupling[M, {}, 0]^4) + 
   (hbar*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
     Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
       Index[d$$2, Flavor]}, 0]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/(6*Coupling[M, {}, 0]^4), 
 "SuperTraces" -> 
  <|"hScalar" -> hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      ((Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
         Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])/(2*\[Epsilon]) + 
       ((Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/2) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
       {Index[d$$1, Lorentz]}]*
      (-((Coupling[A, {}, 0]*(Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
            Coupling[\[Mu]\[Phi], {}, 0] + Coupling[A, {}, 0]*
            (Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0] - 
             Coupling[\[Mu]\[Phi], {}, 0]^2)))/(\[Epsilon]*
          Coupling[M, {}, 0]^6)) - (Coupling[A, {}, 0]*
         (Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
           Coupling[\[Mu]\[Phi], {}, 0] + Coupling[A, {}, 0]*
           (Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0] - 
            Coupling[\[Mu]\[Phi], {}, 0]^2))*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^6) + 
     hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
          {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
          Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
         {}])*(-1/2*(Coupling[A, {}, 0]*(Coupling[M, {}, 0]^2*
            Coupling[\[Kappa], {}, 0]*Coupling[\[Mu]\[Phi], {}, 0] + 
           Coupling[A, {}, 0]*(Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], 
               {}, 0] - Coupling[\[Mu]\[Phi], {}, 0]^2)))/
         (\[Epsilon]*Coupling[M, {}, 0]^6) - 
       (Coupling[A, {}, 0]*(Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
           Coupling[\[Mu]\[Phi], {}, 0] + Coupling[A, {}, 0]*
           (Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0] - 
            Coupling[\[Mu]\[Phi], {}, 0]^2))*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (2*Coupling[M, {}, 0]^6)) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Coupling[A, {}, 0]*(2*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
           Coupling[\[Mu]\[Phi], {}, 0] + Coupling[A, {}, 0]*
           (Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0] - 
            Coupling[\[Mu]\[Phi], {}, 0]^2)))/(4*\[Epsilon]*
         Coupling[M, {}, 0]^4) + (Coupling[A, {}, 0]*
         (2*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
           Coupling[\[Mu]\[Phi], {}, 0] + Coupling[A, {}, 0]*
           (Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0] - 
            Coupling[\[Mu]\[Phi], {}, 0]^2))*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (4*Coupling[M, {}, 0]^4)) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
      ((Coupling[A, {}, 0]*(-6*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]^
            2*Coupling[\[Mu]\[Phi], {}, 0] + 3*Coupling[A, {}, 0]*
           Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
           (-2*Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0] + 
            3*Coupling[\[Mu]\[Phi], {}, 0]^2) + Coupling[A, {}, 0]^2*
           (4*Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0]*
             Coupling[\[Mu]\[Phi], {}, 0] - 3*Coupling[\[Mu]\[Phi], {}, 0]^
              3)))/(12*\[Epsilon]*Coupling[M, {}, 0]^8) + 
       (Coupling[A, {}, 0]*(-6*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]^
            2*Coupling[\[Mu]\[Phi], {}, 0] + 3*Coupling[A, {}, 0]*
           Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
           (-2*Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0] + 
            3*Coupling[\[Mu]\[Phi], {}, 0]^2) + Coupling[A, {}, 0]^2*
           (4*Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0]*
             Coupling[\[Mu]\[Phi], {}, 0] - 3*Coupling[\[Mu]\[Phi], {}, 0]^
              3))*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (12*Coupling[M, {}, 0]^8)), "hScalar-hScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - Coupling[A, {}, 0]*
           Coupling[\[Mu]\[Phi], {}, 0])^2/(4*\[Epsilon]*
         Coupling[M, {}, 0]^4) + 
       ((Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - Coupling[A, {}, 0]*
            Coupling[\[Mu]\[Phi], {}, 0])^2*
         Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/(4*Coupling[M, {}, 0]^4)) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
      ((Coupling[A, {}, 0]*(Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
         (2*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
           Coupling[\[Mu]\[Phi], {}, 0] + Coupling[A, {}, 0]*
           (Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0] - 
            Coupling[\[Mu]\[Phi], {}, 0]^2)))/(4*\[Epsilon]*
         Coupling[M, {}, 0]^8) + (Coupling[A, {}, 0]*
         (Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
         (2*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
           Coupling[\[Mu]\[Phi], {}, 0] + Coupling[A, {}, 0]*
           (Coupling[M, {}, 0]^2*Coupling[\[Lambda]\[Phi], {}, 0] - 
            Coupling[\[Mu]\[Phi], {}, 0]^2))*
         Log[\[Mu]bar2/Coupling[M, {}, 0]^2])/(4*Coupling[M, {}, 0]^8)) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
       {Index[d$$1, Lorentz]}]*((Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 
          0]*(Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]))/
        (\[Epsilon]*Coupling[M, {}, 0]^6) - 
       ((Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
         (Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
           (1 + 12*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/
        (12*Coupling[M, {}, 0]^6)) + 
     hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
          {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
          Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
         {}])*((Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
         (Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]))/
        (2*\[Epsilon]*Coupling[M, {}, 0]^6) - 
       ((Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
         (Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]*
           (1 + 12*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])))/
        (24*Coupling[M, {}, 0]^6)), "hScalar-lScalar" -> 
    (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Coupling[A, {}, 0]^2*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}])/
      (2*Coupling[M, {}, 0]^2) + 
     (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*Coupling[A, {}, 0]^2*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$2, Lorentz], 
         Index[d$$2, Lorentz]}])/(6*Coupling[M, {}, 0]^4) + 
     (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Coupling[A, {}, 0]^2*Coupling[gY, {}, 0]^2*Field[H, Scalar, 
        {Index[d$$1, SU2L[fund]]}, {}]*
       FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^
        2)/(12*Coupling[M, {}, 0]^4) + 
     (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
         Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[A, {}, 0]^2*
       Coupling[gL, {}, 0]*Coupling[gY, {}, 0]*Field[H, Scalar, 
        {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[B, 
        {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
       FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
        {Index[d$$1, SU2L[adj]]}, {}])/(3*Coupling[M, {}, 0]^4) + 
     (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Coupling[A, {}, 0]^2*Coupling[gL, {}, 0]^2*Field[H, Scalar, 
        {Index[d$$1, SU2L[fund]]}, {}]*
       FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
         {Index[d$$1, SU2L[adj]]}, {}]^2)/(12*Coupling[M, {}, 0]^4) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      (Coupling[A, {}, 0]^2/\[Epsilon] + Coupling[A, {}, 0]^2*
        (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2])) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
       {Index[d$$1, Lorentz]}]*((4*Coupling[A, {}, 0]^2*Coupling[\[Kappa], 
          {}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (4*Coupling[A, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((-2*Coupling[A, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^2) - 
       (2*Coupling[A, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^2) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
      ((Coupling[A, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
         (3*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]))/
        (\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (Coupling[A, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
         (3*Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^6) + 
     hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
          {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
          Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
         {}])*((2*Coupling[A, {}, 0]^2*Coupling[\[Kappa], {}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Coupling[A, {}, 0]^2*Coupling[\[Kappa], {}, 0]*
         (5 + 4*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (2*Coupling[M, {}, 0]^4)) + 
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
      (((I/6)*Coupling[A, {}, 0]^2*Coupling[gL, {}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + ((I/36)*Coupling[A, {}, 0]^2*
         Coupling[gL, {}, 0]*(17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        Coupling[M, {}, 0]^4) + 
     hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
          {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
         {Index[d$$1, SU2L[fund]]}, {}]*FieldStrength[B, 
         {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
         {Index[d$$2, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
         {Index[d$$2, Lorentz]}])*(((I/12)*Coupling[A, {}, 0]^2*
         Coupling[gY, {}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
       ((I/72)*Coupling[A, {}, 0]^2*Coupling[gY, {}, 0]*
         (17 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4), 
   "hScalar-hScalar-hScalar" -> 
    -1/12*(hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
       (Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
         Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])^3*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
       Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}])/Coupling[M, {}, 0]^8, 
   "hScalar-hScalar-lScalar" -> 
    (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
       Coupling[A, {}, 0]^2*(-(Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
           0]) + Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}])/
      Coupling[M, {}, 0]^4 + (hbar*Coupling[A, {}, 0]^2*
       (Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
        4*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
           {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
           Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
          {}]))/(3*Coupling[M, {}, 0]^6) + 
     (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Coupling[A, {}, 0]^2*
       (Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
        13*Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}])/
      (6*Coupling[M, {}, 0]^6) + 
     (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
       Coupling[A, {}, 0]^2*(4*Coupling[M, {}, 0]^4*Coupling[\[Kappa], {}, 0]^
          2 + Coupling[A, {}, 0]^2*Coupling[\[Mu]\[Phi], {}, 0]^2 - 
        Coupling[A, {}, 0]*Coupling[M, {}, 0]^2*
         (Coupling[A, {}, 0]*Coupling[\[Lambda]\[Phi], {}, 0] + 
          6*Coupling[\[Kappa], {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]))*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
       Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}])/
      (2*Coupling[M, {}, 0]^8), "hScalar-lScalar-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      (-((Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2)/
         (\[Epsilon]*Coupling[M, {}, 0]^2)) - 
       (Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^2) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Coupling[A, {}, 0]^2*(-Coupling[A, {}, 0]^2 + 3*Coupling[M, {}, 0]^2*
           Coupling[\[Lambda], {}, 0] + 2*Coupling[\[Kappa], {}, 0]*
           Coupling[\[Mu], {}, 1]^2))/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
       (Coupling[A, {}, 0]^2*(Coupling[A, {}, 0]^2 - 3*Coupling[M, {}, 0]^2*
           Coupling[\[Lambda], {}, 0] - 2*Coupling[\[Kappa], {}, 0]*
           Coupling[\[Mu], {}, 1]^2)*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^
             2]))/Coupling[M, {}, 0]^4) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
      (-1/2*(-7*Coupling[A, {}, 0]^4*Coupling[M, {}, 0]^2*Coupling[\[Kappa], 
            {}, 0] + 12*Coupling[A, {}, 0]^2*Coupling[M, {}, 0]^4*
           Coupling[\[Kappa], {}, 0]*Coupling[\[Lambda], {}, 0] + 
          Coupling[A, {}, 0]^5*Coupling[\[Mu]\[Phi], {}, 0])/
         (\[Epsilon]*Coupling[M, {}, 0]^8) - 
       (Coupling[A, {}, 0]^2*(-7*Coupling[A, {}, 0]^2*Coupling[M, {}, 0]^2*
           Coupling[\[Kappa], {}, 0] + 12*Coupling[M, {}, 0]^4*
           Coupling[\[Kappa], {}, 0]*Coupling[\[Lambda], {}, 0] + 
          Coupling[A, {}, 0]^3*Coupling[\[Mu]\[Phi], {}, 0])*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (2*Coupling[M, {}, 0]^8)) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
       {Index[d$$1, Lorentz]}]*(Coupling[A, {}, 0]^4/
        (\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (Coupling[A, {}, 0]^4*(1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (2*Coupling[M, {}, 0]^6)) - 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {Index[d$$1, Lorentz]}]*((Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^
          2)/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (2*Coupling[M, {}, 0]^4)) + 
     hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
          {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
          Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
         {}])*((Coupling[A, {}, 0]^4/Coupling[M, {}, 0]^6 - 
         (Coupling[A, {}, 0]^2*Coupling[\[Lambda], {}, 0])/
          (2*Coupling[M, {}, 0]^4))/\[Epsilon] + 
       (-(Coupling[A, {}, 0]^2*Coupling[M, {}, 0]^2*Coupling[\[Lambda], {}, 
            0]*(9 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2])) + 
         Coupling[A, {}, 0]^4*(6 + 4*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (4*Coupling[M, {}, 0]^6)), "hScalar-hScalar-hScalar-lScalar" -> 
    (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
      Coupling[A, {}, 0]^2*(Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
        Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])^2*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}])/
     (2*Coupling[M, {}, 0]^8), "hScalar-hScalar-lScalar-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
         (Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]))/
        (\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^2*
         (Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
         (2 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^6) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
      (-((Coupling[A, {}, 0]^2*(Coupling[A, {}, 0]^2 - 3*Coupling[M, {}, 0]^2*
            Coupling[\[Lambda], {}, 0])*(-(Coupling[M, {}, 0]^2*
             Coupling[\[Kappa], {}, 0]) + Coupling[A, {}, 0]*
            Coupling[\[Mu]\[Phi], {}, 0]))/(\[Epsilon]*Coupling[M, {}, 0]^
           8)) - (Coupling[A, {}, 0]^2*(Coupling[A, {}, 0]^2 - 
          3*Coupling[M, {}, 0]^2*Coupling[\[Lambda], {}, 0])*
         (-(Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0]) + 
          Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
         (2 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^8), 
   "hScalar-lScalar-hScalar-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (-(Coupling[A, {}, 0]^4/(\[Epsilon]*Coupling[M, {}, 0]^4)) - 
       (Coupling[A, {}, 0]^4*(2 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        Coupling[M, {}, 0]^4) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
      ((4*Coupling[A, {}, 0]^4*Coupling[\[Kappa], {}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (4*Coupling[A, {}, 0]^4*Coupling[\[Kappa], {}, 0]*
         (2 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^6) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
       {Index[d$$1, Lorentz]}]*(Coupling[A, {}, 0]^4/
        (\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (Coupling[A, {}, 0]^4*(5 + 3*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (3*Coupling[M, {}, 0]^6)) + 
     hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
          {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
          Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
         {}])*(Coupling[A, {}, 0]^4/(2*\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (Coupling[A, {}, 0]^4*(11 + 3*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (6*Coupling[M, {}, 0]^6)), "hScalar-lScalar-lScalar-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
      ((Coupling[A, {}, 0]^3 - 3*Coupling[A, {}, 0]*Coupling[M, {}, 0]^2*
           Coupling[\[Lambda], {}, 0])^2/(\[Epsilon]*Coupling[M, {}, 0]^8) + 
       ((Coupling[A, {}, 0]^3 - 3*Coupling[A, {}, 0]*Coupling[M, {}, 0]^2*
            Coupling[\[Lambda], {}, 0])^2*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^8) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((2*(Coupling[A, {}, 0]^4 - 3*Coupling[A, {}, 0]^2*Coupling[M, {}, 0]^2*
           Coupling[\[Lambda], {}, 0])*Coupling[\[Mu], {}, 1]^2)/
        (\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (2*Coupling[A, {}, 0]^2*(Coupling[A, {}, 0]^2 - 3*Coupling[M, {}, 0]^2*
           Coupling[\[Lambda], {}, 0])*Coupling[\[Mu], {}, 1]^2*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^6) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      ((Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4)/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Coupling[A, {}, 0]^2*Coupling[\[Mu], {}, 1]^4*
         (1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4), 
   "hScalar-lScalar-lFermion-lScalar" -> 
    hbar*(((-1/4*I)*Bar[Coupling[Yd, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[A, {}, 0]^2*
         Coupling[Yd, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) - 
       ((I/8)*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[1]]**Field[d, Fermion, {Index[d$$1, SU3c[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
         Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
          {}]) + hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*CG[eps[SU2L], {Index[d$$2, SU2L[fund]], 
        Index[d$$1, SU2L[fund]]}]*
      (((I/2)*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
       ((I/4)*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
      Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {}] + hbar*(((I/4)*Bar[Coupling[Yd, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[A, {}, 0]^2*
         Coupling[Yd, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       ((I/8)*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
         Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[d, Fermion, 
          {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]) + 
     hbar*(((-1/4*I)*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[A, {}, 0]^2*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) - 
       ((I/8)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
     hbar*(((I/4)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, 
             Flavor]}, 0]]*Coupling[A, {}, 0]^2*Coupling[Ye, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       ((I/8)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
          {Index[d$$1, Flavor]}, {}]) + 
     hbar*(((I/4)*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, 
             Flavor]}, 0]]*Coupling[A, {}, 0]^2*Coupling[Ye, 
          {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       ((I/8)*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
           Index[d$$3, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
          {}]) + 
     hbar*(((I/4)*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, 
             Flavor]}, 0]]*Coupling[A, {}, 0]^2*Coupling[Ye, 
          {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       ((I/8)*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
           Index[d$$3, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
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
     hbar*(((I/4)*Coupling[A, {}, 0]^2*
         (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] + 
          Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]))/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + ((I/8)*Coupling[A, {}, 0]^2*
         (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] + 
          Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0])*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
             SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
         DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
           Index[d$$1, Flavor]}, {}]) + 
     hbar*(((-1/4*I)*Bar[Coupling[Yu, {Index[d$$1, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Coupling[A, {}, 0]^2*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) - 
       ((I/8)*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
           Index[d$$3, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
             SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
         DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
           Index[d$$1, Flavor]}, {}]) + 
     hbar*(((I/4)*Coupling[A, {}, 0]^2*
         (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] - 
          Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]))/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + ((I/8)*Coupling[A, {}, 0]^2*
         (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] - 
          Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0])*
         (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
             SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
         DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
           Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
        Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
             SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
         DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
           Index[d$$1, Flavor]}, {}]) + 
     hbar*(((I/4)*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, 
             Flavor]}, 0]]*Coupling[A, {}, 0]^2*Coupling[Yu, 
          {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       ((I/8)*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
           Index[d$$3, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
             SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
         DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
           Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
             SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
         DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
         Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
           Index[d$$1, Flavor]}, {}]) + 
     hbar*CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
        Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
       {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      (((-1/2*I)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) - 
       ((I/4)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {}] + hbar*(((I/4)*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[A, {}, 0]^2*
         Coupling[Yu, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       ((I/8)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
      (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
           {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
          {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
            Index[d$$1, Flavor]}, {}]) + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
        Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
         Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
          {}]) + 
     hbar*(((I/4)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, 
             Flavor]}, 0]]*Coupling[A, {}, 0]^2*Coupling[Yu, 
          {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M, {}, 0]^4) + 
       ((I/8)*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (1 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^4)*
      (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
         Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$1, Lorentz]}] - 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[u, Fermion, 
          {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]), 
   "hScalar-lScalar-lVector-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
       {}]*((-3*Coupling[A, {}, 0]^2*Coupling[gY, {}, 0]^2)/
        (2*\[Epsilon]*Coupling[M, {}, 0]^4) - 
       (Coupling[A, {}, 0]^2*Coupling[gY, {}, 0]^2*
         (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (4*Coupling[M, {}, 0]^4)) + 
     hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
          {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
          Index[d$$1, Lorentz]}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
         {}])*((-3*Coupling[A, {}, 0]^2*(Coupling[gL, {}, 0]^2 + 
          Coupling[gY, {}, 0]^2))/(8*\[Epsilon]*Coupling[M, {}, 0]^4) - 
       (Coupling[A, {}, 0]^2*(Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         (5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (16*Coupling[M, {}, 0]^4)) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
       {Index[d$$1, Lorentz]}]*((-3*Coupling[A, {}, 0]^2*
         (3*Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2))/
        (4*\[Epsilon]*Coupling[M, {}, 0]^4) - 
       (Coupling[A, {}, 0]^2*(3*Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^
           2)*(5 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
        (8*Coupling[M, {}, 0]^4)), 
   "hScalar-hScalar-lScalar-hScalar-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
     ((2*Coupling[A, {}, 0]^4*(Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 
           0] - Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0]))/
       (\[Epsilon]*Coupling[M, {}, 0]^8) + 
      (Coupling[A, {}, 0]^4*(Coupling[M, {}, 0]^2*Coupling[\[Kappa], {}, 0] - 
         Coupling[A, {}, 0]*Coupling[\[Mu]\[Phi], {}, 0])*
        (5 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^8), 
   "hScalar-hScalar-lScalar-lVector-lScalar" -> 0, 
   "hScalar-lScalar-hScalar-lScalar-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
      ((4*(Coupling[A, {}, 0]^6 - 3*Coupling[A, {}, 0]^4*Coupling[M, {}, 0]^2*
           Coupling[\[Lambda], {}, 0]))/(\[Epsilon]*Coupling[M, {}, 0]^8) + 
       (2*Coupling[A, {}, 0]^4*(Coupling[A, {}, 0]^2 - 3*Coupling[M, {}, 0]^2*
           Coupling[\[Lambda], {}, 0])*
         (3 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^8) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((4*Coupling[A, {}, 0]^4*Coupling[\[Mu], {}, 1]^2)/
        (\[Epsilon]*Coupling[M, {}, 0]^6) + 
       (2*Coupling[A, {}, 0]^4*Coupling[\[Mu], {}, 1]^2*
         (3 + 2*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/Coupling[M, {}, 0]^6), 
   "hScalar-lScalar-lScalar-lVector-lScalar" -> 0, 
   "hScalar-lScalar-lFermion-lFermion-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yd, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yd, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^
             2]))/Coupling[M, {}, 0]^4)*
      Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^
             2]))/Coupling[M, {}, 0]^4)*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Ye, {Index[d$$2, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^
             2]))/Coupling[M, {}, 0]^4)*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Yd, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Yd, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^
             2]))/Coupling[M, {}, 0]^4)*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
       Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {}] + hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      CG[eps[SU2L], {Index[d$$3, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$2, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^
             2]))/Coupling[M, {}, 0]^4)*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
       Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {}] + hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      CG[Bar[eps[SU2L]], {Bar[Index[d$$2, SU2L[fund]]], 
        Bar[Index[d$$3, SU2L[fund]]]}]*Field[H, Scalar, 
       {Index[d$$1, SU2L[fund]]}, {}]*Field[H, Scalar, 
       {Index[d$$3, SU2L[fund]]}, {}]*
      ((Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M, {}, 0]^4) + 
       (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[A, {}, 0]^2*Coupling[Yu, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M, {}, 0]^
             2]))/Coupling[M, {}, 0]^4)*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}], 
   "hScalar-lScalar-lFermion-lVector-lScalar" -> 0, 
   "hScalar-lScalar-lVector-lScalar-lScalar" -> 0, 
   "hScalar-lScalar-lVector-lFermion-lScalar" -> 0, 
   "hScalar-lScalar-lVector-lVector-lScalar" -> 0, 
   "hScalar-lScalar-hScalar-lScalar-hScalar-lScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
     ((4*Coupling[A, {}, 0]^6)/(\[Epsilon]*Coupling[M, {}, 0]^8) + 
      (2*Coupling[A, {}, 0]^6*(11 + 6*Log[\[Mu]bar2/Coupling[M, {}, 0]^2]))/
       (3*Coupling[M, {}, 0]^8)), 
   "hScalar-lScalar-hScalar-lScalar-lVector-lScalar" -> 0, 
   "hScalar-lScalar-lVector-lScalar-lVector-lScalar" -> 0|>|>
