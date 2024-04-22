(* Created with the Wolfram Language : www.wolfram.com *)
<|"Model" -> "S1S3LQs", "Version" -> "0.2.0", 
 "Date" -> DateObject[{2024, 2, 23}, "Day"], "Time (Match)" -> 15.274028, 
 "Time (GreensSimplify)" -> 1.932541, "Time (EOMSimplify)" -> 90.891162, 
 "UV Lagrangian" -> Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Coupling[\[Mu], {}, 1]^2*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
     {}] + Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
     {Index[d$$1, Lorentz]}] - 
   (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
     Coupling[\[Lambda], {}, 0]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}])/2 - 
   Bar[Field[S1, Scalar, {Bar[Index[d$$1, SU3c[fund]]]}, {}]]*
    Coupling[M1, {}, 0]^2*Field[S1, Scalar, {Bar[Index[d$$1, SU3c[fund]]]}, 
     {}] - Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[S1, Scalar, {Bar[Index[d$$1, SU3c[fund]]]}, {}]]*
    Coupling[\[Lambda]H1, {}, 0]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
     {}]*Field[S1, Scalar, {Bar[Index[d$$1, SU3c[fund]]]}, {}] - 
   2*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[S3, Scalar, {Bar[Index[d$$1, SU3c[fund]]], 
       Index[d$$1, SU2L[adj]]}, {}]]*CG[gen[SU2L[fund]], 
     {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[\[Lambda]H13, {}, 0]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    Field[S1, Scalar, {Bar[Index[d$$1, SU3c[fund]]]}, {}] + 
   Bar[Field[S1, Scalar, {Bar[Index[d$$1, SU3c[fund]]]}, 
      {Index[d$$1, Lorentz]}]]*Field[S1, Scalar, 
     {Bar[Index[d$$1, SU3c[fund]]]}, {Index[d$$1, Lorentz]}] - 
   Bar[Field[S3, Scalar, {Bar[Index[d$$1, SU3c[fund]]], 
       Index[d$$1, SU2L[adj]]}, {}]]*Coupling[M3, {}, 0]^2*
    Field[S3, Scalar, {Bar[Index[d$$1, SU3c[fund]]], Index[d$$1, SU2L[adj]]}, 
     {}] - Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[S3, Scalar, {Bar[Index[d$$1, SU3c[fund]]], 
       Index[d$$1, SU2L[adj]]}, {}]]*Coupling[\[Lambda]H3, {}, 0]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[S3, Scalar, {Bar[Index[d$$1, SU3c[fund]]], Index[d$$1, SU2L[adj]]}, 
     {}] - 2*Bar[Coupling[\[Lambda]H13, {}, 0]]*
    Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[S1, Scalar, {Bar[Index[d$$1, SU3c[fund]]]}, {}]]*
    CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {}]*Field[S3, Scalar, 
     {Bar[Index[d$$1, SU3c[fund]]], Index[d$$1, SU2L[adj]]}, {}] + 
   Bar[Field[S3, Scalar, {Bar[Index[d$$1, SU3c[fund]]], 
       Index[d$$1, SU2L[adj]]}, {Index[d$$1, Lorentz]}]]*
    Field[S3, Scalar, {Bar[Index[d$$1, SU3c[fund]]], Index[d$$1, SU2L[adj]]}, 
     {Index[d$$1, Lorentz]}] + 
   (2*I)*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[S3, Scalar, {Bar[Index[d$$1, SU3c[fund]]], 
       Index[d$$1, SU2L[adj]]}, {}]]*CG[fStruct[SU2L], 
     {Index[d$$1, SU2L[adj]], Index[d$$2, SU2L[adj]], 
      Index[d$$3, SU2L[adj]]}]*CG[gen[SU2L[fund]], {Index[d$$2, SU2L[adj]], 
      Index[d$$1, SU2L[fund]], Bar[Index[d$$2, SU2L[fund]]]}]*
    Coupling[\[Lambda]H3p, {}, 0]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
     {}]*Field[S3, Scalar, {Bar[Index[d$$1, SU3c[fund]]], 
      Index[d$$3, SU2L[adj]]}, {}] - 
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
       Index[d$$1, Flavor]}, {}] + 
   Bar[Coupling[y1R, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    Bar[Field[S1, Scalar, {Bar[Index[d$$1, SU3c[fund]]]}, {}]]*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[GammaCC, Proj[-1]]**
     Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, Flavor]}, {}]]] - 
   Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$2, Flavor]}, 
      {}] + I*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
      {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] + 
   Bar[Coupling[y1L, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    Bar[Field[S1, Scalar, {Bar[Index[d$$1, SU3c[fund]]]}, {}]]*
    CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]]] + 
   2*Bar[Coupling[y3L, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
    Bar[Field[S3, Scalar, {Bar[Index[d$$1, SU3c[fund]]], 
       Index[d$$1, SU2L[adj]]}, {}]]*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], 
      Index[d$$2, SU2L[fund]]}]*CG[gen[SU2L[fund]], 
     {Index[d$$1, SU2L[adj]], Index[d$$3, SU2L[fund]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*
    Bar[Field[l, Fermion, {Index[d$$3, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]]] - 
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
       Index[d$$1, Flavor]}, {}] + 
   Coupling[y1R, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]*
    Field[S1, Scalar, {Bar[Index[d$$1, SU3c[fund]]]}, {}]*
    Transp[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[y1L, {Index[d$$1, Flavor], 
      Index[d$$2, Flavor]}, 0]*Field[S1, Scalar, 
     {Bar[Index[d$$1, SU3c[fund]]]}, {}]*
    Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   2*CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*CG[gen[SU2L[fund]], 
     {Index[d$$1, SU2L[adj]], Index[d$$2, SU2L[fund]], 
      Bar[Index[d$$3, SU2L[fund]]]}]*Coupling[y3L, {Index[d$$1, Flavor], 
      Index[d$$2, Flavor]}, 0]*Field[S3, Scalar, 
     {Bar[Index[d$$1, SU3c[fund]]], Index[d$$1, SU2L[adj]]}, {}]*
    Transp[Field[l, Fermion, {Index[d$$3, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}], "Off-shell EFT Lagrangian" -> 
  Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}] + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[gY, {}, 0]^2*(Coupling[\[Lambda]H1, {}, 0]/
       Coupling[M1, {}, 0]^2 + (3*Coupling[\[Lambda]H3, {}, 0])/
       Coupling[M3, {}, 0]^2)*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^
      2)/36 + (hbar*Coupling[gY, {}, 0]^2*(-Coupling[M1, {}, 0]^(-2) - 
      3/Coupling[M3, {}, 0]^2)*FieldStrength[B, {Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]}, {}, {Index[d$$2, Lorentz]}]*
     FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$3, Lorentz]}, {}, 
      {Index[d$$3, Lorentz]}])/180 + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[gs, {}, 0]^2*(Coupling[\[Lambda]H1, {}, 0]/
       Coupling[M1, {}, 0]^2 + (3*Coupling[\[Lambda]H3, {}, 0])/
       Coupling[M3, {}, 0]^2)*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU3c[adj]]}, {}]^2)/24 + 
   (hbar*Coupling[gs, {}, 0]^2*(-Coupling[M1, {}, 0]^(-2) - 
      3/Coupling[M3, {}, 0]^2)*FieldStrength[G, {Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]}, {Index[d$$1, SU3c[adj]]}, 
      {Index[d$$2, Lorentz]}]*FieldStrength[G, {Index[d$$1, Lorentz], 
       Index[d$$3, Lorentz]}, {Index[d$$1, SU3c[adj]]}, 
      {Index[d$$3, Lorentz]}])/120 + 
   (hbar*CG[fStruct[SU3c], {Index[d$$1, SU3c[adj]], Index[d$$2, SU3c[adj]], 
       Index[d$$3, SU3c[adj]]}]*Coupling[gs, {}, 0]^3*
     (Coupling[M1, {}, 0]^(-2) + 3/Coupling[M3, {}, 0]^2)*
     FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$2, SU3c[adj]]}, {}]*FieldStrength[G, 
      {Index[d$$1, Lorentz], Index[d$$3, Lorentz]}, {Index[d$$3, SU3c[adj]]}, 
      {}]*FieldStrength[G, {Index[d$$2, Lorentz], Index[d$$3, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}])/360 - 
   (2*hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[gL, {}, 0]*Coupling[gY, {}, 0]*
     Coupling[\[Lambda]H3p, {}, 0]*Field[H, Scalar, 
      {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[B, 
      {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}])/(3*Coupling[M3, {}, 0]^2) + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[gL, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {}]^2)/(2*Coupling[M3, {}, 0]^2) - 
   (hbar*Coupling[gL, {}, 0]^2*FieldStrength[W, {Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
      {Index[d$$2, Lorentz]}]*FieldStrength[W, {Index[d$$1, Lorentz], 
       Index[d$$3, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
      {Index[d$$3, Lorentz]}])/(10*Coupling[M3, {}, 0]^2) + 
   (hbar*CG[fStruct[SU2L], {Index[d$$1, SU2L[adj]], Index[d$$2, SU2L[adj]], 
       Index[d$$3, SU2L[adj]]}]*Coupling[gL, {}, 0]^3*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$2, SU2L[adj]]}, {}]*FieldStrength[W, 
      {Index[d$$1, Lorentz], Index[d$$3, Lorentz]}, {Index[d$$3, SU2L[adj]]}, 
      {}]*FieldStrength[W, {Index[d$$2, Lorentz], Index[d$$3, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}])/(30*Coupling[M3, {}, 0]^2) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {Index[d$$1, Lorentz]}]]*Bar[Field[H, Scalar, 
      {Index[d$$2, SU2L[fund]]}, {}]]*Field[H, Scalar, 
     {Index[d$$1, SU2L[fund]]}, {}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    ((-2*Coupling[\[Lambda]H3p, {}, 0]^2)/Coupling[M3, {}, 0]^2 + 
     12*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 0]*
      (LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] - 
       LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 3, -1}])) + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
     (-(Coupling[\[Lambda]H1, {}, 0]^2/Coupling[M1, {}, 0]^2) + 
      (-3*Coupling[\[Lambda]H3, {}, 0]^2 + 
        2*(Coupling[\[Lambda]H3p, {}, 0]^2 + 
          6*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
           Coupling[\[Lambda]H13, {}, 0]*(-LF[{Coupling[M1, {}, 0], Coupling[
                M3, {}, 0]}, {1, 2, 0}] + LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 3, -1}])))/Coupling[M3, {}, 0]^2))/
    2 + hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz], 
         Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
       {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz], 
        Index[d$$1, Lorentz]}])*
    (-1/4*Coupling[\[Lambda]H1, {}, 0]^2/Coupling[M1, {}, 0]^2 - 
     (3*Coupling[\[Lambda]H3, {}, 0]^2 + 2*(Coupling[\[Lambda]H3p, {}, 0]^2 + 
         6*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
          Coupling[\[Lambda]H13, {}, 0]*
          (-LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] + 
           LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 3, -1}])))/
      (4*Coupling[M3, {}, 0]^2)) + 
   FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}]^2*
    (-1/4 + hbar*(-1/2*Coupling[gL, {}, 0]^2/\[Epsilon] - 
       (Coupling[gL, {}, 0]^2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])/2)) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (Coupling[\[Mu], {}, 1]^2 + 
     hbar*((3*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0] + 
         9*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0])/\[Epsilon] + 
       3*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0]*
        (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 9*Coupling[M3, {}, 0]^2*
        Coupling[\[Lambda]H3, {}, 0]*
        (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
    ((-3*(Coupling[\[Lambda]H3, {}, 0]^3 + 2*Coupling[\[Lambda]H3, {}, 0]*
         Coupling[\[Lambda]H3p, {}, 0]^2))/(2*Coupling[M3, {}, 0]^2) + 
     3*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 0]*
      (-Coupling[\[Lambda]H1, {}, 0] + Coupling[\[Lambda]H3, {}, 0])*
      LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] - 
     (Coupling[\[Lambda]H1, {}, 0]*(Coupling[\[Lambda]H1, {}, 0]^2 + 
        6*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 0]*
         (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (2*Coupling[M1, {}, 0]^2)) + 
   FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]^2*
    (-1/4 + hbar*(-1/6*Coupling[gs, {}, 0]^2/\[Epsilon] - 
       (Coupling[gs, {}, 0]^2*(Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
          3*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/24)) + 
   FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^2*
    (-1/4 + hbar*(-1/9*Coupling[gY, {}, 0]^2/\[Epsilon] - 
       (Coupling[gY, {}, 0]^2*(Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
          3*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/36)) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    (-1/2*Coupling[\[Lambda], {}, 0] + 
     hbar*((3*(Coupling[\[Lambda]H1, {}, 0]^2 + 
          2*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 
            0] + 3*Coupling[\[Lambda]H3, {}, 0]^2 + 
          2*Coupling[\[Lambda]H3p, {}, 0]^2))/(2*\[Epsilon]) + 
       (3*(2*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 0]*
           LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Coupling[\[Lambda]H1, {}, 0]^2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
              2] + (3*Coupling[\[Lambda]H3, {}, 0]^2 + 
            2*Coupling[\[Lambda]H3p, {}, 0]^2)*
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/2)) - 
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
      {Index[d$$1, Lorentz]}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
    ((3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
      (2*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    (-Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]] + 
     hbar*((3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
        \[Epsilon] + 3*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
           Index[d$$2, Flavor]}, 0]]*Coupling[y1L, {Index[d$$4, Flavor], 
          Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
          Index[d$$3, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
            2])))*Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    ((3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       (-(Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[\[Lambda]H1, {}, 0]) + 
        Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
        Coupling[y3L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda]H13, {}, 0]*(-1 + LF[{Coupling[M1, {}, 0], 
            Coupling[M3, {}, 0]}, {1, 1, 0}] - 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2)*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] - 
   hbar*FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
     {Index[d$$2, Lorentz]}]*
    ((-2*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0])/(3*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (5 + 4*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (6*Coupling[M1, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {}] + 
   hbar*((((-3*I)/2)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$4, Flavor], 
          Index[d$$5, Flavor]}, 0]]*Coupling[y1R, {Index[d$$5, Flavor], 
         Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (((3*I)/2)*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
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
   (I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]] + 
     hbar*((((3*I)/2)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[y1R, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0])/\[Epsilon] + 
       ((3*I)/4)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
           Index[d$$2, Flavor]}, 0]]*Coupling[y1R, {Index[d$$3, Flavor], 
          Index[d$$1, Flavor]}, 0]*
        (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])))*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
    ((((5*I)/8)*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[gY, {}, 0]*Coupling[y1L, {Index[d$$4, Flavor], 
         Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     ((I/16)*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[gY, {}, 0]*Coupling[y1L, {Index[d$$4, Flavor], 
         Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (19 + 10*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], 
      Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
     {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
     {}]*((((-3*I)/4)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Coupling[gL, {}, 0]*
       Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (((3*I)/8)*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[gL, {}, 0]*Coupling[y1L, {Index[d$$4, Flavor], 
         Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], 
      Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   (3*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
     Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
     Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
     Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], 
       GammaM[Index[d$$2, Lorentz]], Proj[-1]]**Field[l, Fermion, 
       {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {Index[d$$2, Lorentz]}])/(2*Coupling[M1, {}, 0]^2) - 
   (((3*I)/4)*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
        Index[d$$2, Flavor]}, 0]]*
     (Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0] + 
      Coupling[y1R, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[\[Lambda]H1, {}, 0])*
     (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[e, Fermion, {Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
      Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[e, Fermion, {Index[d$$1, Flavor]}, {}]))/
    Coupling[M1, {}, 0]^2 + 
   (3*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
     Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
     Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], 
       GammaM[Index[d$$2, Lorentz]], Proj[-1]]**Field[l, Fermion, 
       {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {Index[d$$2, Lorentz]}])/(2*Coupling[M1, {}, 0]^2) + 
   (3*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
     Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
     Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
     Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {Index[d$$2, Lorentz]}]]**
      DiracProduct[GammaM[Index[d$$2, Lorentz]], 
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
       {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}])/
    (2*Coupling[M1, {}, 0]^2) - 
   (hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
     Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$3, Flavor], 
       Index[d$$1, Flavor]}, 0]*
     (FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
       Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
         GammaM[Index[d$$3, Lorentz]], Proj[1]]**Field[e, Fermion, 
         {Index[d$$1, Flavor]}, {Index[d$$3, Lorentz]}] + 
      FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
       Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {Index[d$$3, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$3, Lorentz]], 
         GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[1]]**
        Field[e, Fermion, {Index[d$$1, Flavor]}, {}]))/
    (4*Coupling[M1, {}, 0]^2) + 
   ((I/4)*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
       0]]*Coupling[y1R, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
     (Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[e, Fermion, {Index[d$$1, Flavor]}, {Index[d$$2, Lorentz], 
         Index[d$$2, Lorentz]}] - 
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {Index[d$$1, Lorentz], 
          Index[d$$1, Lorentz]}]]**DiracProduct[GammaM[Index[d$$2, Lorentz]], 
        Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
        {Index[d$$2, Lorentz]}]))/Coupling[M1, {}, 0]^2 - 
   (3*hbar*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
     Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]]*
     Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
     Coupling[y1R, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
     Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
     Bar[Field[e, Fermion, {Index[d$$4, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[e, Fermion, {Index[d$$2, Flavor]}, {}])/
    (8*Coupling[M1, {}, 0]^2) + 
   hbar*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
     {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]*
    ((3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
      (2*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (-Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
     hbar*((3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
        \[Epsilon] + 3*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
           Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
           Index[d$$4, Flavor]}, 0]]*Coupling[y1R, {Index[d$$4, Flavor], 
          Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
            2])))*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {}] - 
   hbar*FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
     {Index[d$$2, Lorentz]}]*
    ((Coupling[gY, {}, 0]*
       (-((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
          Coupling[M1, {}, 0]^2) - 
        (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         Coupling[M3, {}, 0]^2))/(6*\[Epsilon]) + 
     (Coupling[gY, {}, 0]*
       (-((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
           2) - (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], 
             Index[d$$2, Flavor]}, 0]]*Coupling[y3L, {Index[d$$3, Flavor], 
            Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
              2]))/Coupling[M3, {}, 0]^2))/6)*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   (I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]] + 
     hbar*((((3*I)/2)*(Bar[Coupling[y1L, {Index[d$$3, Flavor], 
              Index[d$$2, Flavor]}, 0]]*Coupling[y1L, {Index[d$$3, Flavor], 
             Index[d$$1, Flavor]}, 0] + 
          3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]))/
        \[Epsilon] + ((3*I)/4)*(Bar[Coupling[y1L, {Index[d$$3, Flavor], 
             Index[d$$2, Flavor]}, 0]]*Coupling[y1L, {Index[d$$3, Flavor], 
            Index[d$$1, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
         3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] - hbar*CG[gen[SU2L[fund]], 
     {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
     {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
     {Index[d$$2, Lorentz]}]*
    ((Coupling[gL, {}, 0]*
       ((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         Coupling[M1, {}, 0]^2 - 
        (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         Coupling[M3, {}, 0]^2))/\[Epsilon] + 
     (Coupling[gL, {}, 0]*
       ((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
          (4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
          2 - (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, 
              Flavor]}, 0]]*Coupling[y3L, {Index[d$$3, Flavor], 
            Index[d$$1, Flavor]}, 0]*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
              2]))/Coupling[M3, {}, 0]^2))/3)*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[W, 
     {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
     {}]*((((3*I)/4)*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
          Index[d$$4, Flavor]}, 0]]*Coupling[gL, {}, 0]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (((3*I)/8)*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[gL, {}, 0]*Coupling[y1R, {Index[d$$4, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
      Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, {}] + 
   hbar*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
    ((((-5*I)/8)*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
          Index[d$$4, Flavor]}, 0]]*Coupling[gY, {}, 0]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     ((I/16)*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$4, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (19 + 10*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
      Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, {}] + 
   (3*hbar*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
     Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
     Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
       GammaM[Index[d$$2, Lorentz]], Proj[1]]**Field[e, Fermion, 
       {Index[d$$1, Flavor]}, {Index[d$$2, Lorentz]}])/
    (2*Coupling[M1, {}, 0]^2) + 
   (3*hbar*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
     Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
     Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
        {Index[d$$1, Lorentz]}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
       GammaM[Index[d$$2, Lorentz]], Proj[1]]**Field[e, Fermion, 
       {Index[d$$1, Flavor]}, {Index[d$$2, Lorentz]}])/
    (2*Coupling[M1, {}, 0]^2) + 
   (3*hbar*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
     Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
     Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
        {Index[d$$2, Lorentz]}]]**DiracProduct[GammaM[Index[d$$2, Lorentz]], 
       GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[e, Fermion, 
       {Index[d$$1, Flavor]}, {}])/(2*Coupling[M1, {}, 0]^2) + 
   (hbar*Coupling[gY, {}, 0]*
     (-((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        Coupling[M1, {}, 0]^2) - 
      (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
        Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
       Coupling[M3, {}, 0]^2)*
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
         {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/16 + 
   (3*hbar*Coupling[gL, {}, 0]*
     ((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
       Coupling[M1, {}, 0]^2 - 
      (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
        Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
       Coupling[M3, {}, 0]^2)*
     (CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
         Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
        {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
        {Index[d$$1, SU2L[adj]]}, {}]*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
          Index[d$$1, Lorentz]], GammaM[Index[d$$3, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
         {Index[d$$3, Lorentz]}] + CG[gen[SU2L[fund]], 
        {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
         Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
        {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
        {Index[d$$1, SU2L[adj]]}, {}]*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
          {Index[d$$3, Lorentz]}]]**DiracProduct[
         GammaM[Index[d$$3, Lorentz]], GammaM[Index[d$$1, Lorentz], 
          Index[d$$2, Lorentz]], Proj[-1]]**Field[l, Fermion, 
         {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/8 + 
   (I/4)*hbar*((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 + 
     (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M3, {}, 0]^2)*
    (Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
        {Index[d$$1, Lorentz]}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
       Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {Index[d$$2, Lorentz], Index[d$$2, Lorentz]}] - 
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
        {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]**
      DiracProduct[GammaM[Index[d$$2, Lorentz]], Proj[-1]]**
      Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {Index[d$$2, Lorentz]}]) - 
   (3*hbar*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
     Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
     Coupling[y1L, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
     Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
     Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
      Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}])/
    (4*Coupling[M1, {}, 0]^2) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (3*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         (-(Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
            Coupling[\[Lambda]H1, {}, 0]) + 
          Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) + 
        Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[y1R, 
          {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2)*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + 
   hbar*((((3*I)/2)*(Bar[Coupling[y1L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
         Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] - 
        Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
           Index[d$$1, Flavor]}, 0])*
       (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
        Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]))/
      (\[Epsilon]*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
     (((3*I)/2)*(Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
        Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])*
       (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
           Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
             2]) - Bar[Coupling[y3L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
   hbar*
    ((((-3*I)/2)*((Bar[Coupling[y1L, {Index[d$$3, Flavor], 
             Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yd, {Index[d$$3, Flavor], 
             Index[d$$4, Flavor]}, 0]]*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[Yd, {Index[d$$5, Flavor], 
            Index[d$$4, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
        (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
          (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
            Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
           2*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
            Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]))/
         Coupling[M3, {}, 0]^2))/\[Epsilon] - 
     ((3*I)/2)*((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, 
             Flavor]}, 0]]*Bar[Coupling[Yd, {Index[d$$3, Flavor], 
            Index[d$$4, Flavor]}, 0]]*Coupling[y1L, {Index[d$$5, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[Yd, {Index[d$$5, Flavor], 
           Index[d$$4, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
             2]))/Coupling[M1, {}, 0]^2 + 
       (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
         (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
          2*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])*
         (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^2))*
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
        {}]) - (((3*I)/4)*hbar*
     (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       (Coupling[M1, {}, 0]^2*(Bar[Coupling[Yd, {Index[d$$3, Flavor], 
              Index[d$$4, Flavor]}, 0]]*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[Yd, {Index[d$$5, Flavor], 
             Index[d$$4, Flavor]}, 0] - 
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
          4*Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[\[Lambda]H3p, {}, 0]) + 
        2*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
         Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) + 
      Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*
       (-(Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]) + 
        Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
        2*Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda]H13, {}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
            Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))*
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
         {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
    (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) - 
   (((3*I)/2)*hbar*(Bar[Coupling[y3L, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Bar[Coupling[\[Lambda]H13, {}, 0]]*
       Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] - 
      Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[\[Lambda]H13, {}, 0])*
     (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
      2*Coupling[M1, {}, 0]^2*LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, 
        {1, 2, 0}] + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])*
     (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
       Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
         {Index[d$$1, Lorentz]}] + 
      Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
       Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
          {Index[d$$1, Lorentz]}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
         {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
    Coupling[M1, {}, 0]^2 - 
   (((3*I)/4)*hbar*(Bar[Coupling[y3L, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*(Coupling[M1, {}, 0]^2*
         (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
          2*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
          Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (3*Coupling[\[Lambda]H3, {}, 0] - 2*Coupling[\[Lambda]H3p, {}, 
              0])) + Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
         Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) + 
      Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*
       (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
        Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda]H1, {}, 0] + Coupling[y3L, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H13, {}, 0]*
         (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))*
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
         {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
    (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   (((3*I)/4)*hbar*(Bar[Coupling[y3L, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Bar[Coupling[\[Lambda]H13, {}, 0]]*
       Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] - 
      Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[\[Lambda]H13, {}, 0])*
     (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
      2*Coupling[M1, {}, 0]^2*LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, 
        {1, 2, 0}] + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])*
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
         {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
    Coupling[M1, {}, 0]^2 + 
   (3*hbar*((-2*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
          0]]*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
          0]]*Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        Coupling[y3L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0])/
       Coupling[M3, {}, 0]^2 + 
      (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
        Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
        Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
         Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M1, {}, 0]^2 + 
      (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
        Coupling[y3L, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
        (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
         Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
      Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}]*
     Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
      Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}])/
    4 + hbar*((-3*Bar[Coupling[y3L, {Index[d$$5, Flavor], 
          Index[d$$3, Flavor]}, 0]]*Bar[Coupling[y3L, {Index[d$$6, Flavor], 
          Index[d$$4, Flavor]}, 0]]*Coupling[y3L, {Index[d$$5, Flavor], 
         Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$6, Flavor], 
         Index[d$$2, Flavor]}, 0])/(8*Coupling[M3, {}, 0]^2) - 
     (3*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
       (Bar[Coupling[y1L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] + 
        2*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
         (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/(8*Coupling[M1, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}] - 
   Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
      {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
    CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
    ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0])/
      (2*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] - 
   hbar*FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
     {Index[d$$2, Lorentz]}]*
    ((Coupling[gY, {}, 0]*
       ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
         Coupling[M1, {}, 0]^2 + 
        (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
         Coupling[M3, {}, 0]^2))/(6*\[Epsilon]) + 
     (Coupling[gY, {}, 0]*
       ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
          (13 + 9*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
         Coupling[M1, {}, 0]^2 + 
        (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
          (13 + 9*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/
         Coupling[M3, {}, 0]^2))/54)*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   (I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]] + 
     hbar*(((I/2)*(Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, 
               Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$3, Flavor]}, 0] + 
          3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]))/
        \[Epsilon] + (I/4)*(Bar[Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
            Index[d$$3, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
         3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
   hbar*CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
     {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
     {Index[d$$2, Lorentz]}]*
    ((Coupling[gL, {}, 0]*
       ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
         Coupling[M1, {}, 0]^2 - 
        (Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
         Coupling[M3, {}, 0]^2))/(3*\[Epsilon]) + 
     (Coupling[gL, {}, 0]*
       ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
          (4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
          2 - (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, 
              Flavor]}, 0]]*Coupling[y3L, {Index[d$$1, Flavor], 
            Index[d$$3, Flavor]}, 0]*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
              2]))/Coupling[M3, {}, 0]^2))/9)*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] - 
   (hbar*CG[gen[SU3c[fund]], {Index[d$$1, SU3c[adj]], 
       Index[d$$1, SU3c[fund]], Bar[Index[d$$2, SU3c[fund]]]}]*
     Coupling[gs, {}, 0]*
     (-((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
        Coupling[M1, {}, 0]^2) - 
      (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
       Coupling[M3, {}, 0]^2)*FieldStrength[G, {Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]}, {Index[d$$1, SU3c[adj]]}, 
      {Index[d$$2, Lorentz]}]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/18 + 
   (hbar*Coupling[gY, {}, 0]*
     ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
       Coupling[M1, {}, 0]^2 + 
      (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
       Coupling[M3, {}, 0]^2)*
     (FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
            SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
         GammaM[Index[d$$3, Lorentz]], Proj[-1]]**Field[q, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {Index[d$$3, Lorentz]}] + 
      FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
            SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$3, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$3, Lorentz]], 
         GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]))/16 + 
   (hbar*Coupling[gL, {}, 0]*
     ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
       Coupling[M1, {}, 0]^2 - 
      (Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
       Coupling[M3, {}, 0]^2)*
     (CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
         Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
        {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
        {Index[d$$1, SU2L[adj]]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
            SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
         GammaM[Index[d$$3, Lorentz]], Proj[-1]]**Field[q, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {Index[d$$3, Lorentz]}] + 
      CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
         Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
        {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
        {Index[d$$1, SU2L[adj]]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
            SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$3, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$3, Lorentz]], 
         GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]))/8 + 
   (I/12)*hbar*
    ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 + 
     (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
      Coupling[M3, {}, 0]^2)*
    (Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
      Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {Index[d$$2, Lorentz], Index[d$$2, Lorentz]}] - 
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {Index[d$$1, Lorentz], 
         Index[d$$1, Lorentz]}]]**DiracProduct[GammaM[Index[d$$2, Lorentz]], 
       Proj[-1]]**Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
        Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {Index[d$$2, Lorentz]}]) - 
   (hbar*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
     Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
     Coupling[y1L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
     Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
     Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/(4*Coupling[M1, {}, 0]^2) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    (-Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
     hbar*((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0])/
        \[Epsilon] + Bar[Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$3, Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
           Index[d$$4, Flavor]}, 0]]*Coupling[y1R, {Index[d$$1, Flavor], 
          Index[d$$4, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
            2])))*Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
        Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*(((I/2)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
         0]]*(Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0] - 
        Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0])*Coupling[Ye, {Index[d$$5, Flavor], 
         Index[d$$4, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     ((I/2)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
       (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
             2]) - Bar[Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
   hbar*(((-1/2*I)*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
          Index[d$$4, Flavor]}, 0]]*
       (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0] + 
        Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0])*Coupling[Ye, {Index[d$$5, Flavor], 
         Index[d$$4, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) - 
     ((I/2)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
       (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
             2]) + Bar[Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[cg1, {Index[d$$1, SU2L[fund]], Index[d$$1, SU2L[adj]], 
      Index[d$$2, SU2L[fund]]}]*FieldStrength[W, {Index[d$$1, Lorentz], 
      Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, {}]*
    (((I/4)*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[gL, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     ((I/8)*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[gL, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
    ((((-3*I)/8)*Bar[Coupling[y1L, {Index[d$$2, Flavor], 
          Index[d$$3, Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
          Index[d$$4, Flavor]}, 0]]*Coupling[gY, {}, 0]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     ((I/48)*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
         0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*
       (23 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] - 
   ((I/4)*hbar*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
       0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
     CG[gen[SU3c[fund]], {Index[d$$1, SU3c[adj]], Index[d$$1, SU3c[fund]], 
       Bar[Index[d$$2, SU3c[fund]]]}]*Coupling[gs, {}, 0]*
     Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
     FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    Coupling[M1, {}, 0]^2 + 
   (hbar*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
     CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
     Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], GammaM[Index[d$$2, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
       {Index[d$$2, Lorentz]}])/(2*Coupling[M1, {}, 0]^2) - 
   ((I/4)*hbar*(Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
         0]]*(Coupling[M1, {}, 0]^2*
         (Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
          4*Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
           Coupling[\[Lambda]H3p, {}, 0]) + 
        2*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
         (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) - 
      Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*
       (Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
        2*Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[\[Lambda]H13, {}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
            Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))*
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
          Index[d$$1, Flavor]}, {}]))/(Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) + 
   ((I/2)*hbar*(Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
         0]]*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[y1L, 
        {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0] - 
      Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
       Coupling[\[Lambda]H13, {}, 0])*
     (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
      2*Coupling[M1, {}, 0]^2*LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, 
        {1, 2, 0}] + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])*
     (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] + 
      Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]))/Coupling[M1, {}, 0]^2 - 
   ((I/4)*hbar*(Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
         0]]*(Coupling[M1, {}, 0]^2*
         (Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
           (3*Coupling[\[Lambda]H3, {}, 0] - 2*Coupling[\[Lambda]H3p, {}, 
              0])) + Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
         (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) + 
      Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*
       (Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
        Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[\[Lambda]H1, {}, 0] + Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda]H13, {}, 0]*
         (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))*
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
          Index[d$$1, Flavor]}, {}]))/(Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) - 
   ((I/4)*hbar*(Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
         0]]*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[y1L, 
        {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0] - 
      Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
       Coupling[\[Lambda]H13, {}, 0])*
     (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
      2*Coupling[M1, {}, 0]^2*LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, 
        {1, 2, 0}] + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])*
     (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] + 
      Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]))/Coupling[M1, {}, 0]^2 + 
   (hbar*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
     Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], 
       GammaM[Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
       {Index[d$$2, Lorentz]}])/(2*Coupling[M1, {}, 0]^2) + 
   (hbar*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
     Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
     CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
     Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {Index[d$$2, Lorentz]}]]**
      DiracProduct[GammaM[Index[d$$2, Lorentz]], 
       GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[u, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (2*Coupling[M1, {}, 0]^2) + 
   (hbar*((-2*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
          0]]*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
          0]]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
        Coupling[y3L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])/
       Coupling[M3, {}, 0]^2 + 
      (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
        Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
        (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
         Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M1, {}, 0]^2 + 
      (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
        Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
         Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
      Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/2 + 
   (hbar*(-((Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
           0]]*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[y3L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])/
        Coupling[M3, {}, 0]^2) + 
      (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
        Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
         Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M1, {}, 0]^2 - 
      (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
        (Bar[Coupling[y1L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0] + 
         Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
          (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2)*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
      Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/4 + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$3, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         (-(Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[\[Lambda]H1, {}, 0]) + 
          Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) + 
        Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[y1R, 
          {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2)*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] - 
   (hbar*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
     Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
     (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
         Index[d$$6, Flavor]}, 0] + 
      Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
         Index[d$$6, Flavor]}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
          Coupling[M3, {}, 0]}, {1, 1, 0}] + 
        Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/(2*Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) + 
   (hbar*(-((Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 
           0]]*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 
           0]]*Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0])/
        Coupling[M3, {}, 0]^2) + 
      (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
        (-(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]) + 
         2*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
          (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2)*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/8 + 
   hbar*CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]*
    ((Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
      (2*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {}]*
    (-Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]] + 
     hbar*((Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
        \[Epsilon] + Bar[Coupling[y1R, {Index[d$$2, Flavor], 
           Index[d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
          Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
          Index[d$$3, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
            2])))*Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[-1]]**
     Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[Bar[eps[SU2L]], {Bar[Index[d$$2, SU2L[fund]]], 
      Bar[Index[d$$3, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$1, SU2L[fund]]}, {}]*Field[H, Scalar, 
     {Index[d$$3, SU2L[fund]]}, {}]*
    ((Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       (-(Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
          Coupling[\[Lambda]H1, {}, 0]) + 
        Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
        Coupling[y3L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[\[Lambda]H13, {}, 0]*(-1 + LF[{Coupling[M1, {}, 0], 
            Coupling[M3, {}, 0]}, {1, 1, 0}] - 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2)*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] - 
   hbar*FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
     {Index[d$$2, Lorentz]}]*
    ((Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$3, Flavor]}, 0])/(3*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (25 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (54*Coupling[M1, {}, 0]^2))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(((I/2)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
         0]]*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     ((I/2)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
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
        {}]) + (I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]] + 
     hbar*(((I/2)*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Coupling[y1R, {Index[d$$1, Flavor], 
           Index[d$$3, Flavor]}, 0])/\[Epsilon] + 
       (I/4)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
          0]]*Coupling[y1R, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
        (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] + 
   (hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     CG[gen[SU3c[fund]], {Index[d$$1, SU3c[adj]], Index[d$$1, SU3c[fund]], 
       Bar[Index[d$$2, SU3c[fund]]]}]*Coupling[gs, {}, 0]*
     Coupling[y1R, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
     FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {Index[d$$2, Lorentz]}]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (18*Coupling[M1, {}, 0]^2) + 
   hbar*CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[B, 
     {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
    ((((3*I)/8)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
         0]]*Coupling[gY, {}, 0]*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     ((I/48)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
         0]]*Coupling[gY, {}, 0]*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (23 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
      Proj[-1]]**Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
       Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*CG[Bar[cg1], {Bar[Index[d$$1, SU2L[fund]]], Index[d$$1, SU2L[adj]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$1, SU2L[fund]]}, {}]*FieldStrength[W, 
     {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
     {}]*(((-1/4*I)*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
          Index[d$$3, Flavor]}, 0]]*Coupling[gL, {}, 0]*
       Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     ((I/8)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[gL, {}, 0]*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
      Proj[-1]]**Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
       Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   ((I/4)*hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
       0]]*CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*CG[gen[SU3c[fund]], 
      {Index[d$$1, SU3c[adj]], Index[d$$1, SU3c[fund]], 
       Bar[Index[d$$2, SU3c[fund]]]}]*Coupling[gs, {}, 0]*
     Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
     Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
     FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
        Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/Coupling[M1, {}, 0]^2 + 
   (hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[y1L, {Index[d$$1, Flavor], 
       Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
       Index[d$$3, Flavor]}, 0]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
      {Index[d$$1, Lorentz]}]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
       GammaM[Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {Index[d$$2, Lorentz]}])/
    (2*Coupling[M1, {}, 0]^2) - 
   ((I/4)*hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
       0]]*(Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0] + 
      Coupling[y1R, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
       Coupling[\[Lambda]H1, {}, 0])*
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
         {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]))/
    Coupling[M1, {}, 0]^2 + 
   (hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[y1L, {Index[d$$1, Flavor], 
       Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
       Index[d$$3, Flavor]}, 0]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
      {}]*Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], 
       GammaM[Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {Index[d$$2, Lorentz]}])/
    (2*Coupling[M1, {}, 0]^2) + 
   (hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[y1L, {Index[d$$1, Flavor], 
       Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
       Index[d$$3, Flavor]}, 0]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
      {Index[d$$1, Lorentz]}]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
        {Index[d$$2, Lorentz]}]]**DiracProduct[GammaM[Index[d$$2, Lorentz]], 
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/(2*Coupling[M1, {}, 0]^2) + 
   (hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
     Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
       Index[d$$3, Flavor]}, 0]*
     (FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
       Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
          Index[d$$1, Lorentz]], GammaM[Index[d$$3, Lorentz]], Proj[1]]**
        Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
         {Index[d$$3, Lorentz]}] + FieldStrength[B, {Index[d$$1, Lorentz], 
         Index[d$$2, Lorentz]}, {}, {}]*
       Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
          {Index[d$$3, Lorentz]}]]**DiracProduct[
         GammaM[Index[d$$3, Lorentz]], GammaM[Index[d$$1, Lorentz], 
          Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]))/
    (8*Coupling[M1, {}, 0]^2) + 
   ((I/12)*hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
       0]]*Coupling[y1R, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
     (Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {Index[d$$1, Lorentz]}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
        Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, Flavor]}, {Index[d$$2, Lorentz], 
         Index[d$$2, Lorentz]}] - 
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]**
       DiracProduct[GammaM[Index[d$$2, Lorentz]], Proj[1]]**
       Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {Index[d$$2, Lorentz]}]))/Coupling[M1, {}, 0]^2 - 
   (hbar*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
     Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
     Coupling[y1R, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
     Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
     Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (4*Coupling[M1, {}, 0]^2) - 
   (hbar*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
     Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
     Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
     Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
     Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
      Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (4*Coupling[M1, {}, 0]^2) - 
   (hbar*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
     Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
     Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
     Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (4*Coupling[M1, {}, 0]^2) - 
   (hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
     Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
     Coupling[y1R, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
     Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (8*Coupling[M1, {}, 0]^2) + 
   hbar*((Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0] + 
        3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0])*Coupling[Yd, {Index[d$$6, Flavor], 
         Index[d$$1, Flavor]}, 0])/(4*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     (Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[Yd, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
        3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (8*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], 
      Proj[1]]**Transp[Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*((Coupling[Yd, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       (-(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
            Index[d$$2, Flavor]}, 0]) + 
        3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0] + 
        Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
           Index[d$$5, Flavor]}, 0]))/(4*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     (Coupling[Yd, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       (-(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
            Index[d$$2, Flavor]}, 0]*
          (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) + 
        Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
           Index[d$$5, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
        3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (8*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
   ((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 + 
     hbar*((-16*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[gs, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/(3*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (16*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[gs, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
             2]))/(3*Coupling[M1, {}, 0]^2)))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Proj[-1]]**
     Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
    ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 + 
     hbar*((-16*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[gs, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/(3*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (16*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[gs, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
             2]))/(3*Coupling[M1, {}, 0]^2)))*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*((Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       (3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
           Index[d$$1, Flavor]}, 0] + 
        Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(Bar[Coupling[Yu, {Index[d$$2, Flavor], 
              Index[d$$6, Flavor]}, 0]]*Coupling[y1R, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0] - Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0])))/(4*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     (Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(Bar[Coupling[Yu, {Index[d$$2, Flavor], 
              Index[d$$6, Flavor]}, 0]]*Coupling[y1R, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0] - Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0])*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
        3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (8*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], 
      Proj[1]]**Transp[Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*(((3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
           0]]*Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])/
        Coupling[M3, {}, 0]^2 + 
       (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         (-(Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]]*
            Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]) + 
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]))/
        Coupling[M1, {}, 0]^2 + 
       (Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         (Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0] - 
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0])/
        Coupling[M1, {}, 0]^2)/(4*\[Epsilon]) + 
     (-((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          (Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]]*
            Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0] - 
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])*
          (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
          2) + (Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
           0]]*(Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
             0]]*Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 
            0] - Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
         2 + (3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
           0]]*Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^2)/
      8)*Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (12*Coupling[gs, {}, 0]^2 + 25*Coupling[gY, {}, 0]^2)*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      (36*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (12*Coupling[gs, {}, 0]^2 + 25*Coupling[gY, {}, 0]^2)*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (72*Coupling[M1, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz], 
        Index[d$$2, Lorentz]]], Proj[-1]]**
     Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
    ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      (18*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (36*Coupling[M1, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz], 
        Index[d$$2, Lorentz]]], Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 + 
     (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M3, {}, 0]^2 + 
     hbar*((16*Coupling[gs, {}, 0]^2*
         (-((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
               0]]*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 
              0])/Coupling[M1, {}, 0]^2) - 
          (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
            Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
           Coupling[M3, {}, 0]^2))/(3*\[Epsilon]) + 
       (16*Coupling[gs, {}, 0]^2*
         (-((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
               0]]*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 
              0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
            Coupling[M1, {}, 0]^2) - 
          (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
            Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^
            2))/3))*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*(((3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
           0]]*Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[y3L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0])/
        Coupling[M3, {}, 0]^2 + 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]*
         (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] - 
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]))/
        Coupling[M1, {}, 0]^2 + 
       (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         (-(Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]]*
            Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]) + 
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]))/
        Coupling[M1, {}, 0]^2)/(4*\[Epsilon]) + 
     (-((Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
          (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]]*
            Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] - 
           Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
            Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0])*
          (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
          2) + (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
           0]]*Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]*
         (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] - 
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0])*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
         2 + (3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
           0]]*Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[y3L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^2)/
      8)*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[GammaCC, 
      Transp[GammaM[Index[d$$1, Lorentz]]], Proj[-1]]**
     Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (9*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
       (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (27*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/(36*\[Epsilon]) + 
     ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (9*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
         2 + (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
           0]]*(27*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^2)/
      72)*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[GammaCC, 
      Transp[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]]], Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*
    ((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 + 
     hbar*((-16*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[gs, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/(3*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (16*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[gs, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
             2]))/(3*Coupling[M1, {}, 0]^2)))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Proj[-1]]**
     Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   (-((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
       Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M3, {}, 0]^2 + 
     hbar*((16*Coupling[gs, {}, 0]^2*
         ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
            Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
           Coupling[M1, {}, 0]^2 - (Bar[Coupling[y3L, {Index[d$$4, Flavor], 
               Index[d$$3, Flavor]}, 0]]*Coupling[y3L, {Index[d$$2, Flavor], 
              Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2))/
        (3*\[Epsilon]) + (16*Coupling[gs, {}, 0]^2*
         ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
            Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
            2 - (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, 
                Flavor]}, 0]]*Coupling[y3L, {Index[d$$2, Flavor], 
              Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
                2]))/Coupling[M3, {}, 0]^2))/3))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*
    ((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
       Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      (18*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
       Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (36*Coupling[M1, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz], 
        Index[d$$2, Lorentz]]], Proj[-1]]**
     Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (9*Coupling[gL, {}, 0]^2 - 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
       (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (-27*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/(36*\[Epsilon]) + 
     ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (9*Coupling[gL, {}, 0]^2 - 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
         2 - (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
           0]]*(27*Coupling[gL, {}, 0]^2 - 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^2)/
      72)*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[GammaCC, 
      Transp[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]]], Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}], "On-shell EFT Lagrangian" -> 
  Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}] + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[gY, {}, 0]^2*(Coupling[\[Lambda]H1, {}, 0]/
       Coupling[M1, {}, 0]^2 + (3*Coupling[\[Lambda]H3, {}, 0])/
       Coupling[M3, {}, 0]^2)*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^
      2)/36 + (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[gs, {}, 0]^2*(Coupling[\[Lambda]H1, {}, 0]/
       Coupling[M1, {}, 0]^2 + (3*Coupling[\[Lambda]H3, {}, 0])/
       Coupling[M3, {}, 0]^2)*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU3c[adj]]}, {}]^2)/24 + 
   (hbar*CG[fStruct[SU3c], {Index[d$$1, SU3c[adj]], Index[d$$2, SU3c[adj]], 
       Index[d$$3, SU3c[adj]]}]*Coupling[gs, {}, 0]^3*
     (Coupling[M1, {}, 0]^(-2) + 3/Coupling[M3, {}, 0]^2)*
     FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$2, SU3c[adj]]}, {}]*FieldStrength[G, 
      {Index[d$$1, Lorentz], Index[d$$3, Lorentz]}, {Index[d$$3, SU3c[adj]]}, 
      {}]*FieldStrength[G, {Index[d$$2, Lorentz], Index[d$$3, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}])/360 - 
   (2*hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[gL, {}, 0]*Coupling[gY, {}, 0]*
     Coupling[\[Lambda]H3p, {}, 0]*Field[H, Scalar, 
      {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[B, 
      {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}])/(3*Coupling[M3, {}, 0]^2) + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[gL, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {}]^2)/(2*Coupling[M3, {}, 0]^2) + 
   (hbar*CG[fStruct[SU2L], {Index[d$$1, SU2L[adj]], Index[d$$2, SU2L[adj]], 
       Index[d$$3, SU2L[adj]]}]*Coupling[gL, {}, 0]^3*
     FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$2, SU2L[adj]]}, {}]*FieldStrength[W, 
      {Index[d$$1, Lorentz], Index[d$$3, Lorentz]}, {Index[d$$3, SU2L[adj]]}, 
      {}]*FieldStrength[W, {Index[d$$2, Lorentz], Index[d$$3, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}])/(30*Coupling[M3, {}, 0]^2) - 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
     (54*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2 + 
      Coupling[gY, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^
         2) + 180*(Coupling[M1, {}, 0]^2*(3*Coupling[\[Lambda]H3, {}, 0]^2 - 
          2*Coupling[\[Lambda]H3p, {}, 0]^2) + Coupling[M3, {}, 0]^2*
         (Coupling[\[Lambda]H1, {}, 0]^2 + 12*Bar[Coupling[\[Lambda]H13, {}, 
             0]]*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H13, {}, 0]*
           (LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] - 
            LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 3, -1}])))))/
    (360*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {Index[d$$1, Lorentz]}]]*Bar[Field[H, Scalar, 
      {Index[d$$2, SU2L[fund]]}, {}]]*Field[H, Scalar, 
     {Index[d$$1, SU2L[fund]]}, {}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    ((Coupling[gY, {}, 0]^4*(-Coupling[M1, {}, 0]^(-2) - 
        3/Coupling[M3, {}, 0]^2))/180 - (2*Coupling[\[Lambda]H3p, {}, 0]^2)/
      Coupling[M3, {}, 0]^2 + 12*Bar[Coupling[\[Lambda]H13, {}, 0]]*
      Coupling[\[Lambda]H13, {}, 0]*
      (LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] - 
       LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 3, -1}])) + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
     (18*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2*Coupling[\[Lambda], {}, 
        0] + Coupling[gY, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + 
        Coupling[M3, {}, 0]^2)*Coupling[\[Lambda], {}, 0] + 
      180*(Coupling[M1, {}, 0]^2*(Coupling[\[Lambda], {}, 0]*
           (3*Coupling[\[Lambda]H3, {}, 0]^2 + 
            2*Coupling[\[Lambda]H3p, {}, 0]^2) - 
          3*(Coupling[\[Lambda]H3, {}, 0]^3 + 2*Coupling[\[Lambda]H3, {}, 0]*
             Coupling[\[Lambda]H3p, {}, 0]^2)) + Coupling[M3, {}, 0]^2*
         (-Coupling[\[Lambda]H1, {}, 0]^3 + 
          6*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M1, {}, 0]^2*
           Coupling[\[Lambda]H13, {}, 0]*Coupling[\[Lambda]H3, {}, 0]*
           LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] + 
          Coupling[\[Lambda], {}, 0]*(Coupling[\[Lambda]H1, {}, 0]^2 + 
            12*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M1, {}, 0]^2*
             Coupling[\[Lambda]H13, {}, 0]*(-LF[{Coupling[M1, {}, 0], 
                 Coupling[M3, {}, 0]}, {1, 2, 0}] + LF[{Coupling[M1, {}, 0], 
                Coupling[M3, {}, 0]}, {1, 3, -1}])) + 
          6*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H1, {}, 0]*
           Coupling[\[Lambda]H13, {}, 0]*(-1 + LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 1, 0}] - Coupling[M1, {}, 0]^2*
             LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] - 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))))/
    (360*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0] + 
     (3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0])/\[Epsilon] + 
     9*hbar*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0] + 
     (9*hbar*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0])/\[Epsilon] + 
     Coupling[\[Mu], {}, 1]^2 + 3*hbar*Coupling[M1, {}, 0]^2*
      Coupling[\[Lambda]H1, {}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
     9*hbar*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0]*
      Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]) + 
   FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}]^2*
    (-1/4 + hbar*(-1/2*Coupling[gL, {}, 0]^2/\[Epsilon] - 
       (Coupling[gL, {}, 0]^2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])/2)) + 
   FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]^2*
    (-1/4 + hbar*(-1/6*Coupling[gs, {}, 0]^2/\[Epsilon] - 
       (Coupling[gs, {}, 0]^2*(Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
          3*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/24)) + 
   FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]^2*
    (-1/4 + hbar*(-1/9*Coupling[gY, {}, 0]^2/\[Epsilon] - 
       (Coupling[gY, {}, 0]^2*(Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
          3*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/36)) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    (-1/2*Coupling[\[Lambda], {}, 0] + 
     hbar*((3*(Coupling[\[Lambda]H1, {}, 0]^2 + 
          2*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 
            0] + 3*Coupling[\[Lambda]H3, {}, 0]^2 + 
          2*Coupling[\[Lambda]H3p, {}, 0]^2))/(2*\[Epsilon]) - 
       ((18*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2 + 
          Coupling[gY, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + 
            Coupling[M3, {}, 0]^2) + 180*(Coupling[M1, {}, 0]^2*
             (3*Coupling[\[Lambda]H3, {}, 0]^2 + 2*Coupling[\[Lambda]H3p, {}, 
                 0]^2) + Coupling[M3, {}, 0]^2*(Coupling[\[Lambda]H1, {}, 
                0]^2 + 12*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M1, {}, 
                 0]^2*Coupling[\[Lambda]H13, {}, 0]*(-LF[{Coupling[M1, {}, 
                    0], Coupling[M3, {}, 0]}, {1, 2, 0}] + 
                LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 3, 
                  -1}]))))*(3*hbar*Coupling[M1, {}, 0]^2*
           Coupling[\[Lambda]H1, {}, 0] + (3*hbar*Coupling[M1, {}, 0]^2*
            Coupling[\[Lambda]H1, {}, 0])/\[Epsilon] + 
          9*hbar*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0] + 
          (9*hbar*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0])/
           \[Epsilon] + Coupling[\[Mu], {}, 1]^2 + 
          3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0]*
           Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
          9*hbar*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0]*
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/(360*Coupling[M1, {}, 0]^2*
         Coupling[M3, {}, 0]^2) + 
       (3*(2*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 0]*
           LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Coupling[\[Lambda]H1, {}, 0]^2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
              2] + (3*Coupling[\[Lambda]H3, {}, 0]^2 + 
            2*Coupling[\[Lambda]H3p, {}, 0]^2)*
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/2)) + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
     (Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
       (18*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2 + 
        Coupling[gY, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^
           2) + 180*(Coupling[M1, {}, 0]^2*(3*Coupling[\[Lambda]H3, {}, 0]^
              2 + 2*Coupling[\[Lambda]H3p, {}, 0]^2) + Coupling[M3, {}, 0]^2*
           (Coupling[\[Lambda]H1, {}, 0]^2 + 12*Bar[Coupling[\[Lambda]H13, {
                }, 0]]*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H13, {}, 0]*
             (-LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] + 
              LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 3, 
                -1}])))) + 60*Bar[Coupling[Yd, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*
       (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*(Bar[Coupling[Yd, {Index[d$$1, Flavor], 
              Index[d$$5, Flavor]}, 0]]*Coupling[y3L, {Index[d$$6, Flavor], 
             Index[d$$4, Flavor]}, 0]*Coupling[Yd, {Index[d$$6, Flavor], 
             Index[d$$5, Flavor]}, 0] - 
          2*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] - 
          3*Coupling[y3L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
           Coupling[\[Lambda]H3, {}, 0] - 2*Coupling[y3L, 
            {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
           Coupling[\[Lambda]H3p, {}, 0] - 2*Bar[Coupling[\[Lambda]H13, {}, 
             0]]*Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$4, Flavor]}, 0]*LF[{Coupling[M1, {}, 0], 
             Coupling[M3, {}, 0]}, {1, 2, 0}]) + 
        Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(Bar[Coupling[Yd, {Index[d$$1, Flavor], 
              Index[d$$5, Flavor]}, 0]]*Coupling[y1L, {Index[d$$6, Flavor], 
             Index[d$$4, Flavor]}, 0]*Coupling[Yd, {Index[d$$6, Flavor], 
             Index[d$$5, Flavor]}, 0] - 3*Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$4, Flavor]}, 0]*Coupling[\[Lambda]H1, {}, 0] + 
          6*Coupling[y3L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
           Coupling[\[Lambda]H13, {}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 1, 0}] + Coupling[M1, {}, 0]^2*
             LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] + 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/(720*Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) + Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {}]]*(-Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 
        0]] + hbar*((Bar[Coupling[Yd, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*
         (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0] + 
          3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]))/
        (4*\[Epsilon]) + (Bar[Coupling[Yd, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*
         (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
           (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
          3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
           (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/8))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   ((I/540)*hbar*(45*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
          Index[d$$4, Flavor]}, 0]]*Bar[Coupling[Yd, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
       Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Yd, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] + 
      135*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Yd, {Index[d$$5, Flavor], 
         Index[d$$1, Flavor]}, 0] + Coupling[gY, {}, 0]^4*
       (3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^2)*
       Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]])*
     (-(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
          {Index[d$$1, Lorentz]}]]*Field[H, Scalar, 
         {Index[d$$1, SU2L[fund]]}, {}]*
        Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
           {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
         Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
          {}]) + Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
       Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
         {}]))/(Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] + 
   ((I/6)*hbar*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
       0]]*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]]*
     CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
     (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$5, Flavor], 
         Index[d$$1, Flavor]}, 0] + 
      Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*
       (3*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0] + 
        Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]))*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   ((I/18)*hbar*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
       0]]*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Coupling[gY, {}, 0]*
     (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0] + 
      3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0])*FieldStrength[B, {Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]}, {}, {}]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz], 
        Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/(Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) + 
   ((I/12)*hbar*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
       0]]*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[gL, {}, 0]*
     (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0] - 
      3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0])*FieldStrength[W, {Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, {}]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz], 
        Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/(Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) + 
   ((I/24)*hbar*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
       0]]*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[gen[SU3c[fund]], {Index[d$$1, SU3c[adj]], Index[d$$1, SU3c[fund]], 
       Bar[Index[d$$2, SU3c[fund]]]}]*Coupling[gs, {}, 0]*
     (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0] + 
      3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0])*FieldStrength[G, {Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]}, {Index[d$$1, SU3c[adj]]}, {}]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
        Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/(Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) - (hbar*Coupling[gs, {}, 0]^4*
     (3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^2)*
     Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
     Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, Flavor]}, {}]*
     Bar[Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (240*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   (hbar*(9*Coupling[gs, {}, 0]^4 - 4*Coupling[gY, {}, 0]^4)*
     (3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^2)*
     Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
     Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (6480*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    (-Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]] + 
     hbar*((3*(Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
             0]]*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 
             0]]*Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 
            0] + 3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, 
               Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$4, Flavor], 
              Index[d$$2, Flavor]}, 0]]*Coupling[y3L, {Index[d$$3, Flavor], 
             Index[d$$1, Flavor]}, 0] + 
          (Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
            (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
              Coupling[M1, {}, 0]^2*Coupling[y1R, {Index[d$$3, Flavor], 
                Index[d$$4, Flavor]}, 0] + 2*Coupling[y1L, {Index[d$$4, 
                 Flavor], Index[d$$1, Flavor]}, 0]*Coupling[Yu, {
                Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
              (2*Coupling[M1, {}, 0]^2 + 3*hbar*Coupling[M1, {}, 0]^2*
                Coupling[\[Lambda]H1, {}, 0] + (3*hbar*Coupling[M1, {}, 0]^2*
                 Coupling[\[Lambda]H1, {}, 0])/\[Epsilon] + 9*hbar*
                Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0] + 
               (9*hbar*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0])/
                \[Epsilon] + Coupling[\[Mu], {}, 1]^2 + 3*hbar*
                Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0]*
                Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 9*hbar*
                Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0]*
                Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^
            2))/(4*\[Epsilon]) + 
       (3*(Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
          3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]) + 
          (Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
            (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
              Coupling[M1, {}, 0]^2*Coupling[y1R, {Index[d$$3, Flavor], 
                Index[d$$4, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/
                  Coupling[M1, {}, 0]^2]) + 2*Coupling[y1L, {Index[d$$4, 
                 Flavor], Index[d$$1, Flavor]}, 0]*Coupling[Yu, {
                Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
              (4*Coupling[M1, {}, 0]^2*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                    2]) + (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])*
                (3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0] + 
                 (3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0])/
                  \[Epsilon] + 9*hbar*Coupling[M3, {}, 0]^2*Coupling[
                   \[Lambda]H3, {}, 0] + (9*hbar*Coupling[M3, {}, 0]^2*
                   Coupling[\[Lambda]H3, {}, 0])/\[Epsilon] + 
                 Coupling[\[Mu], {}, 1]^2 + 3*hbar*Coupling[M1, {}, 0]^2*
                  Coupling[\[Lambda]H1, {}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 
                      0]^2] + 9*hbar*Coupling[M3, {}, 0]^2*Coupling[
                   \[Lambda]H3, {}, 0]*Log[\[Mu]bar2/Coupling[M3, {}, 0]^
                     2]))))/Coupling[M1, {}, 0]^2))/8))*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    ((3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       (2*Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] - 
        Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda], {}, 0]))/(2*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
        (18*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2 + 
         Coupling[gY, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^
            2) + 180*(Coupling[M1, {}, 0]^2*(3*Coupling[\[Lambda]H3, {}, 
                0]^2 + 2*Coupling[\[Lambda]H3p, {}, 0]^2) + 
           Coupling[M3, {}, 0]^2*(Coupling[\[Lambda]H1, {}, 0]^2 + 
             12*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M1, {}, 0]^2*
              Coupling[\[Lambda]H13, {}, 0]*(-LF[{Coupling[M1, {}, 0], 
                  Coupling[M3, {}, 0]}, {1, 2, 0}] + LF[{Coupling[M1, {}, 0], 
                 Coupling[M3, {}, 0]}, {1, 3, -1}])))) - 
       180*(3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
            0]]*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 
            0]]*Coupling[M1, {}, 0]^2*
          (2*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
            Coupling[y3L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
            Coupling[Yd, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] - 
           Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
            Coupling[y3L, {Index[d$$3, Flavor], Index[d$$6, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] + 
           Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
            Coupling[y3L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
            Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] + 
           3*Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
            Coupling[\[Lambda]H3, {}, 0] + 2*Coupling[y3L, 
             {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
            Coupling[\[Lambda]H3p, {}, 0] - 2*Bar[Coupling[\[Lambda]H13, {}, 
              0]]*Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$3, Flavor], 
              Index[d$$1, Flavor]}, 0]*LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 2, 0}]) + Coupling[M3, {}, 0]^2*
          (-(Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
               0]]*(Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$5, 
                   Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$6, Flavor], 
                  Index[d$$2, Flavor]}, 0]]*Coupling[y1R, {Index[d$$3, 
                  Flavor], Index[d$$5, Flavor]}, 0]*Coupling[Ye, 
                {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0] + 
              3*Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 
                 0]]*Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, 
                  Flavor]}, 0]*Coupling[Ye, {Index[d$$5, Flavor], 
                 Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$6, Flavor], 
                 Index[d$$3, Flavor]}, 0])) + 
           Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
            Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
            (-(Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 
                 0]]*Coupling[y1L, {Index[d$$3, Flavor], Index[d$$6, 
                  Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
                 Index[d$$5, Flavor]}, 0]) + 3*Bar[Coupling[Yu, 
                {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
              Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
              Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] + 
             3*Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
              Coupling[\[Lambda]H1, {}, 0] + 6*Coupling[y3L, {Index[d$$3, 
                 Flavor], Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H13, {
                }, 0] - 6*Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, 
                 Flavor]}, 0]*Coupling[\[Lambda]H13, {}, 0]*
              LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
             6*Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$3, Flavor], 
                Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H13, {}, 0]*
              LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] + 
             6*Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
              Coupling[\[Lambda]H13, {}, 0]*Log[\[Mu]bar2/Coupling[M3, {}, 0]^
                 2]) + 3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, 
                Flavor]}, 0]]*(Bar[Coupling[Ye, {Index[d$$1, Flavor], 
                 Index[d$$4, Flavor]}, 0]]*(Bar[Coupling[Yu, {Index[d$$5, 
                    Flavor], Index[d$$6, Flavor]}, 0]]*Coupling[y1R, 
                 {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]*Coupling[Yu, 
                 {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0] - 
               Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]*
                Coupling[Ye, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]*
                Coupling[Yu, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0] + 
               Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
                Coupling[\[Lambda]H1, {}, 0]) + Coupling[Yu, {Index[d$$4, 
                 Flavor], Index[d$$3, Flavor]}, 0]*(-4*Bar[Coupling[Yu, 
                  {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
                Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
                Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
                (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + Coupling[y1L, 
                 {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
                (4*Coupling[\[Lambda]H1, {}, 0] + Coupling[\[Lambda], {}, 0]*
                  (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) + 4*
                Coupling[y3L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
                Coupling[\[Lambda]H13, {}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
                   Coupling[M3, {}, 0]}, {1, 1, 0}] + Log[\[Mu]bar2/
                   Coupling[M3, {}, 0]^2]))))))/(720*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2))*Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[l, Fermion, 
      {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(((I/6)*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*(2*Coupling[gY, {}, 0]^2*Coupling[y1R, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0] - 
        9*Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]))/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     ((I/180)*(135*Bar[Coupling[y3L, {Index[d$$3, Flavor], 
            Index[d$$4, Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$4, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[y3L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] + 
        45*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(3*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
              Index[d$$5, Flavor]}, 0]]*Coupling[y1R, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0] + Coupling[y1L, {Index[d$$3, Flavor], 
             Index[d$$5, Flavor]}, 0]*Coupling[Ye, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0]) + 3*Coupling[gY, {}, 0]^4*
         Coupling[M1, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]] + Coupling[gY, {}, 0]^4*Coupling[M3, {}, 0]^2*
         Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]] + 
        15*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(Coupling[gY, {}, 0]^2*Coupling[y1R, 
            {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (5 + 4*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
          9*Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
           (Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] - 
            2*Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
               0]]*Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 
              0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])))))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
    ((((5*I)/8)*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[gY, {}, 0]*Coupling[y1L, {Index[d$$4, Flavor], 
         Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     ((I/16)*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Coupling[gY, {}, 0]*
       (2*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0] - 
        Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         (19 + 10*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])))/
      Coupling[M1, {}, 0]^2)*Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], 
      Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
     {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
     {}]*((((-3*I)/4)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Coupling[gL, {}, 0]*
       Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     ((I/8)*Coupling[gL, {}, 0]*
       (2*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0] - 
        6*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0] - 
        3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$4, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], 
      Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*((-2*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
         0]]*Coupling[gY, {}, 0]^2*Coupling[y1R, {Index[d$$5, Flavor], 
         Index[d$$2, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
        Index[d$$3, Flavor]])/(9*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
       (Coupling[gY, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^
           2)*Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]] + 
        15*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[M3, {}, 0]^2*Coupling[y1R, 
          {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
         (5 + 4*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])))/
      (270*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[e, Fermion, {Index[d$$4, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$2, Flavor]}, {}] + 
   hbar*((-2*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
         0]]*Coupling[gY, {}, 0]^2*Coupling[y1R, {Index[d$$5, Flavor], 
         Index[d$$1, Flavor]}, 0]*Delta[Index[d$$2, Flavor], 
        Index[d$$4, Flavor]])/(3*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (2*Coupling[gY, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + 
         Coupling[M3, {}, 0]^2)*Delta[Index[d$$1, Flavor], 
         Index[d$$3, Flavor]]*Delta[Index[d$$2, Flavor], 
         Index[d$$4, Flavor]] + 15*Bar[Coupling[y1R, {Index[d$$5, Flavor], 
           Index[d$$3, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
        Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        (9*Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[y1R, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0] + 
         4*Coupling[gY, {}, 0]^2*Delta[Index[d$$2, Flavor], 
           Index[d$$4, Flavor]]*(5 + 4*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
               2])))/(360*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
    Bar[Field[e, Fermion, {Index[d$$4, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$2, Flavor]}, {}] + 
   Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (-Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
     hbar*((3*(Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
             0]]*Coupling[y1R, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
          3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0] + 
          (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
            (Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$3, Flavor], 
                Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
                Index[d$$1, Flavor]}, 0] + 2*Bar[Coupling[Yu, 
                {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
              Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
              (2*Coupling[M1, {}, 0]^2 + 3*hbar*Coupling[M1, {}, 0]^2*
                Coupling[\[Lambda]H1, {}, 0] + (3*hbar*Coupling[M1, {}, 0]^2*
                 Coupling[\[Lambda]H1, {}, 0])/\[Epsilon] + 9*hbar*
                Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0] + 
               (9*hbar*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0])/
                \[Epsilon] + Coupling[\[Mu], {}, 1]^2 + 3*hbar*
                Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0]*
                Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 9*hbar*
                Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0]*
                Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^
            2))/(4*\[Epsilon]) + 
       (3*(Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
           (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
          3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]) + 
          (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
            (Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$3, Flavor], 
                Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
                Index[d$$1, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/
                  Coupling[M1, {}, 0]^2]) + 2*Bar[Coupling[Yu, 
                {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
              Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
              (4*Coupling[M1, {}, 0]^2*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                    2]) + (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])*
                (3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0] + 
                 (3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0])/
                  \[Epsilon] + 9*hbar*Coupling[M3, {}, 0]^2*Coupling[
                   \[Lambda]H3, {}, 0] + (9*hbar*Coupling[M3, {}, 0]^2*
                   Coupling[\[Lambda]H3, {}, 0])/\[Epsilon] + 
                 Coupling[\[Mu], {}, 1]^2 + 3*hbar*Coupling[M1, {}, 0]^2*
                  Coupling[\[Lambda]H1, {}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 
                      0]^2] + 9*hbar*Coupling[M3, {}, 0]^2*Coupling[
                   \[Lambda]H3, {}, 0]*Log[\[Mu]bar2/Coupling[M3, {}, 0]^
                     2]))))/Coupling[M1, {}, 0]^2))/8))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
      {Index[d$$1, Lorentz]}] + 
   hbar*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
    ((((-5*I)/8)*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
          Index[d$$4, Flavor]}, 0]]*Coupling[gY, {}, 0]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     ((I/16)*Coupling[gY, {}, 0]*
       (-2*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
        Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         (19 + 10*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])))/
      Coupling[M1, {}, 0]^2)*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
      Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, {}] + 
   hbar*CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[W, 
     {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
     {}]*((((3*I)/4)*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
          Index[d$$4, Flavor]}, 0]]*Coupling[gL, {}, 0]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) + (I/8)*Coupling[gL, {}, 0]*
      ((6*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
        Coupling[M3, {}, 0]^2 + 
       (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         (-2*Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0] + 
          3*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
           (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])))/
        Coupling[M1, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
      Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, {}] + 
   hbar*((-3*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
         0]]*Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])/
      (2*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (3*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Yd, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + 
   hbar*((-3*(Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
           0]]*Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
           0]]*Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
           0]]*Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0] + 
        Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]))/
      (2*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (3*(Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0] + 
        Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + 
   hbar*(-1/18*(Coupling[gY, {}, 0]^2*
        (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$2, Flavor]}, 0] + 
         3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$2, Flavor]}, 0])*Delta[Index[d$$1, Flavor], 
         Index[d$$3, Flavor]])/(\[Epsilon]*Coupling[M1, {}, 0]^2*
        Coupling[M3, {}, 0]^2) - (Coupling[gY, {}, 0]^2*
       Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
       (Coupling[gY, {}, 0]^2*(3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^
           2)*Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]] + 
        30*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
           Index[d$$2, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
             2]) + 90*Bar[Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$4, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[y3L, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (540*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*(-1/6*(Coupling[gY, {}, 0]^2*
        (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$2, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
           Index[d$$3, Flavor]] + 3*Bar[Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$4, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
          Coupling[y3L, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
          Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]] + 
         2*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Delta[Index[d$$2, Flavor], 
           Index[d$$4, Flavor]]))/(\[Epsilon]*Coupling[M1, {}, 0]^2*
        Coupling[M3, {}, 0]^2) - 
     (15*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
        Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
          Index[d$$2, Flavor]}, 0]*
        (9*Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0] + 
         2*Coupling[gY, {}, 0]^2*Delta[Index[d$$1, Flavor], 
           Index[d$$3, Flavor]]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) + 
       Coupling[gY, {}, 0]^2*(Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
          (Coupling[gY, {}, 0]^2*(3*Coupling[M1, {}, 0]^2 + 
             Coupling[M3, {}, 0]^2)*Delta[Index[d$$1, Flavor], 
             Index[d$$3, Flavor]] + 15*Bar[Coupling[y1R, {Index[d$$5, 
                Flavor], Index[d$$3, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
            Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
            (5 + 4*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) + 
         90*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$2, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
           Index[d$$3, Flavor]]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (180*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    ((Coupling[gY, {}, 0]^4*Coupling[Ye, {Index[d$$2, Flavor], 
         Index[d$$1, Flavor]}, 0])/(720*Coupling[M1, {}, 0]^2) + 
     (Coupling[gL, {}, 0]^4*Coupling[Ye, {Index[d$$2, Flavor], 
         Index[d$$1, Flavor]}, 0])/(40*Coupling[M3, {}, 0]^2) + 
     (Coupling[gY, {}, 0]^4*Coupling[Ye, {Index[d$$2, Flavor], 
         Index[d$$1, Flavor]}, 0])/(240*Coupling[M3, {}, 0]^2) + 
     (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0])/
      (4*Coupling[M1, {}, 0]^2) + 
     (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
      (4*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$3, Flavor], Index[d$$6, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0])/
      (4*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$3, Flavor], Index[d$$6, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])/
      (4*Coupling[M1, {}, 0]^2) + 
     (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$3, Flavor], Index[d$$6, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])/
      (4*Coupling[M3, {}, 0]^2) - 
     (3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0])/
      (4*Coupling[M1, {}, 0]^2) + 
     (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 - 
     (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])/
      (4*Coupling[M1, {}, 0]^2) - 
     (9*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[\[Lambda], {}, 0])/(4*Coupling[M1, {}, 0]^2) + 
     (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       (2*Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
        Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda], {}, 0]))/(2*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[\[Lambda]H1, {}, 0])/Coupling[M1, {}, 0]^2 - 
     (3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[\[Lambda]H1, {}, 0])/(4*Coupling[M1, {}, 0]^2) - 
     (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[\[Lambda]H1, {}, 0])/(4*Coupling[M1, {}, 0]^2) + 
     (Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[\[Lambda]H1, {}, 0]^2)/(4*Coupling[M1, {}, 0]^2) + 
     (3*Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[\[Lambda]H3, {}, 0]^2)/(4*Coupling[M3, {}, 0]^2) + 
     (Coupling[Ye, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[\[Lambda]H3p, {}, 0]^2)/(2*Coupling[M3, {}, 0]^2) - 
     3*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[Ye, 
       {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
      Coupling[\[Lambda]H13, {}, 0]*LF[{Coupling[M1, {}, 0], 
        Coupling[M3, {}, 0]}, {1, 2, 0}] + 
     (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[\[Lambda]H13, {}, 0]*LF[{Coupling[M1, {}, 0], 
         Coupling[M3, {}, 0]}, {1, 2, 0}])/2 + 
     3*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[Ye, 
       {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
      Coupling[\[Lambda]H13, {}, 0]*LF[{Coupling[M1, {}, 0], 
        Coupling[M3, {}, 0]}, {1, 3, -1}] + 
     (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
       Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])/Coupling[M1, {}, 0]^2 - 
     (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[\[Lambda], {}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])/
      (2*Coupling[M1, {}, 0]^2) - 
     (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       (Coupling[M1, {}, 0]^2*(2*Bar[Coupling[Yd, {Index[d$$3, Flavor], 
              Index[d$$4, Flavor]}, 0]]*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[Yd, {Index[d$$5, Flavor], 
             Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0] + Coupling[y3L, {Index[d$$3, Flavor], 
             Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
             Index[d$$1, Flavor]}, 0]*(3*Coupling[\[Lambda]H3, {}, 0] + 
            2*Coupling[\[Lambda]H3p, {}, 0])) + 
        2*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
         Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Coupling[M1, {}, 0]^2*LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 
              0]}, {1, 2, 0}] + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]) + 
        Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         (Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$5, Flavor], 
             Index[d$$4, Flavor]}, 0] + 4*Bar[Coupling[\[Lambda]H13, {}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$4, Flavor], 
             Index[d$$1, Flavor]}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 1, 0}] + 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/(4*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}] + 
   hbar*
    (((I/2)*((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
            0]]*(-(Coupling[gL, {}, 0]^2*Coupling[y1L, {Index[d$$3, Flavor], 
               Index[d$$1, Flavor]}, 0]) + 3*Coupling[y1L, 
             {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
            (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
              Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
             Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
              Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])))/
         Coupling[M1, {}, 0]^2 + 
        (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          (Coupling[gL, {}, 0]^2*Coupling[y3L, {Index[d$$3, Flavor], 
              Index[d$$1, Flavor]}, 0] - 3*Coupling[y3L, 
             {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
            (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
              Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
             Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
              Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])))/
         Coupling[M3, {}, 0]^2))/\[Epsilon] - 
     ((I/60)*(15*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, 
             Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$1, Flavor], 
            Index[d$$5, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
         Coupling[y1R, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0] + 
        45*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[Ye, {Index[d$$2, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$5, Flavor], 
           Index[d$$3, Flavor]}, 0] + 6*Coupling[gL, {}, 0]^4*
         Coupling[M1, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]] + 5*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
         (9*Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
           Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
          18*Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
           (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
             Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
            Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
             Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])*
           (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
          2*Coupling[gL, {}, 0]^2*Coupling[y1L, {Index[d$$3, Flavor], 
             Index[d$$1, Flavor]}, 0]*(4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 
                 0]^2])) - 30*Bar[Coupling[y3L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
         (-3*Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
           (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
             Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
            Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
             Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])*
           (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]) + Coupling[gL, {}, 0]^2*
           Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
   hbar*
    (((I/12)*((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
            0]]*(3*Coupling[gL, {}, 0]^2*Coupling[y1L, {Index[d$$3, Flavor], 
              Index[d$$1, Flavor]}, 0] + Coupling[gY, {}, 0]^2*
            Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] - 
           18*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
              0]]*Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 
             0]*Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]))/
         Coupling[M1, {}, 0]^2 + 
        (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          (-(Coupling[gL, {}, 0]^2*Coupling[y3L, {Index[d$$3, Flavor], Index[
                d$$1, Flavor]}, 0]) + Coupling[gY, {}, 0]^2*
            Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] - 
           6*Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
            (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
              Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
             2*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
                0]]*Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
               0])))/Coupling[M3, {}, 0]^2))/\[Epsilon] + 
     ((I/360)*((18*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2 + 
          Coupling[gY, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + 
            Coupling[M3, {}, 0]^2))*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]] + 30*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
         ((Coupling[gY, {}, 0]^2*Coupling[y1L, {Index[d$$3, Flavor], Index[
                d$$1, Flavor]}, 0] - 18*Bar[Coupling[Yd, {Index[d$$3, 
                 Flavor], Index[d$$4, Flavor]}, 0]]*Coupling[y1L, 
              {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
             Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])*
           (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + Coupling[gL, {}, 0]^2*
           Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) - 
        90*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*
         (-((Coupling[gY, {}, 0]^2*Coupling[y3L, {Index[d$$3, Flavor], 
                Index[d$$1, Flavor]}, 0] - 6*Coupling[y3L, {Index[d$$5, 
                 Flavor], Index[d$$1, Flavor]}, 0]*(Bar[Coupling[Yd, 
                  {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
                Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
               2*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
                  0]]*Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, 
                   Flavor]}, 0]))*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
                2])) + Coupling[gL, {}, 0]^2*Coupling[y3L, 
            {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
        {}]) + 
   hbar*((Coupling[gL, {}, 0]^2*
       (-(Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$2, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
           Index[d$$4, Flavor]]) + Bar[Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[y3L, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
         Delta[Index[d$$1, Flavor], Index[d$$4, Flavor]] + 
        (-(Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
            Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
              Index[d$$1, Flavor]}, 0]) + 
          Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0])*Delta[Index[d$$2, Flavor], 
          Index[d$$3, Flavor]]))/(4*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     ((-5*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0]*Delta[Index[d$$2, Flavor], 
            Index[d$$3, Flavor]]*(4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                2]) + 9*Bar[Coupling[y3L, {Index[d$$6, Flavor], 
              Index[d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$6, Flavor], 
             Index[d$$2, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 1, 0}] + 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2 - 
       (5*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$2, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
            Index[d$$4, Flavor]]*(4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                2]) + 9*Bar[Coupling[y3L, {Index[d$$6, Flavor], 
              Index[d$$4, Flavor]}, 0]]*Coupling[y1L, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$2, Flavor]}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 1, 0}] + 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2 + 
       (3*(Coupling[gL, {}, 0]^2*Delta[Index[d$$1, Flavor], 
            Index[d$$4, Flavor]]*(-(Coupling[gL, {}, 0]^2*Delta[Index[d$$2, 
                Flavor], Index[d$$3, Flavor]]) + 
            5*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
               0]]*Coupling[y3L, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 
              0]*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) + 
          5*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
           (-6*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
               0]]*Coupling[y3L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 
              0] + Coupling[gL, {}, 0]^2*Delta[Index[d$$2, Flavor], 
              Index[d$$3, Flavor]]*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
                 2]))))/Coupling[M3, {}, 0]^2)/60)*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(-1/12*(Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[gY, {}, 0]^2*Coupling[M3, {}, 0]^2*
         Coupling[y1L, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
         Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]] + 
        3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[gY, {}, 0]^2*Coupling[M1, {}, 0]^2*Coupling[y3L, 
          {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
         Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]] + 
        3*Coupling[gL, {}, 0]^2*
         (-(Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
            Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
              Index[d$$1, Flavor]}, 0]) + 
          Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0])*Delta[Index[d$$2, Flavor], 
          Index[d$$4, Flavor]])/(\[Epsilon]*Coupling[M1, {}, 0]^2*
        Coupling[M3, {}, 0]^2) - 
     (30*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[M3, {}, 0]^2*(9*Bar[Coupling[y1L, {Index[d$$6, Flavor], 
             Index[d$$4, Flavor]}, 0]]*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y1L, {Index[d$$6, Flavor], 
            Index[d$$2, Flavor]}, 0] - 2*Coupling[gL, {}, 0]^2*
          Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
          Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
          (4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
         18*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
          Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
          (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) + 
       Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
        ((-18*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2 + 
           Coupling[gY, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + 
             Coupling[M3, {}, 0]^2))*Delta[Index[d$$2, Flavor], 
           Index[d$$4, Flavor]] + 60*Bar[Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$4, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$2, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
              2]) + 180*Bar[Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$4, Flavor]}, 0]]*Coupling[gY, {}, 0]^2*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$2, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
              2])) + 90*Bar[Coupling[y3L, {Index[d$$5, Flavor], 
           Index[d$$3, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
        Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        (3*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0] + 
         2*Coupling[gL, {}, 0]^2*Delta[Index[d$$2, Flavor], 
           Index[d$$4, Flavor]]*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (720*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
   Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    (-Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
     hbar*(((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
             0]]*Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0] + 3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, 
               Flavor]}, 0]]*Coupling[y3L, {Index[d$$4, Flavor], 
             Index[d$$3, Flavor]}, 0])*Coupling[Yd, {Index[d$$4, Flavor], 
           Index[d$$1, Flavor]}, 0])/(4*\[Epsilon]) + 
       (Coupling[Yd, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
           (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
          3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
           (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/8))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   I*Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
   ((I/24)*hbar*CG[gen[SU3c[fund]], {Index[d$$1, SU3c[adj]], 
       Index[d$$1, SU3c[fund]], Bar[Index[d$$2, SU3c[fund]]]}]*
     Coupling[gs, {}, 0]*
     (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0] + 
      3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0])*Coupling[Yd, {Index[d$$4, Flavor], 
       Index[d$$1, Flavor]}, 0]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {}]*FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) - 
   ((I/18)*hbar*Coupling[gY, {}, 0]*
     (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0] + 
      3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0])*Coupling[Yd, {Index[d$$4, Flavor], 
       Index[d$$1, Flavor]}, 0]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
      {}]*FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
      {}]*Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
      DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
       Proj[1]]**Field[d, Fermion, {Index[d$$1, SU3c[fund]], 
        Index[d$$1, Flavor]}, {}])/(Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) + 
   ((I/12)*hbar*CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], 
       Index[d$$1, SU2L[fund]], Bar[Index[d$$2, SU2L[fund]]]}]*
     Coupling[gL, {}, 0]*
     (-(Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$4, Flavor], 
          Index[d$$3, Flavor]}, 0]) + 
      3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0])*Coupling[Yd, {Index[d$$4, Flavor], 
       Index[d$$1, Flavor]}, 0]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
      {}]*FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU2L[adj]]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   hbar*((-3*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
         0]]*Coupling[y1L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
       Coupling[Yd, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])/
      (2*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (3*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
       Coupling[Yd, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$4, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
    (-1/2*(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] + 
        3*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0])/
       (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] + 
        3*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$2, Flavor]}, 0])*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
      {}]*Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
        Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]**
     DiracProduct[Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*((Coupling[gY, {}, 0]^2*
       (3*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$5, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
          Index[d$$3, Flavor]] + 9*Bar[Coupling[y3L, {Index[d$$4, Flavor], 
            Index[d$$5, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
         Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]] + 
        2*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$5, Flavor], 
           Index[d$$1, Flavor]}, 0]*Delta[Index[d$$2, Flavor], 
          Index[d$$4, Flavor]]))/(18*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     (5*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
          Index[d$$5, Flavor]}, 0]*
        (-27*Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
            0]]*Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 
           0] + 2*Coupling[gY, {}, 0]^2*Delta[Index[d$$1, Flavor], 
           Index[d$$3, Flavor]]*(13 + 9*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
               2])) + Coupling[gY, {}, 0]^2*
        (Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
          (Coupling[gY, {}, 0]^2*(3*Coupling[M1, {}, 0]^2 + 
             Coupling[M3, {}, 0]^2)*Delta[Index[d$$1, Flavor], 
             Index[d$$3, Flavor]] + 15*Bar[Coupling[y1R, {Index[d$$5, 
                Flavor], Index[d$$3, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
            Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
            (5 + 4*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) + 
         30*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$5, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
           Index[d$$3, Flavor]]*(13 + 9*Log[\[Mu]bar2/Coupling[M3, {}, 0]^
               2])))/(540*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$4, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
     (18*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2*
       Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
      Coupling[gY, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^2)*
       Coupling[Yd, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
      60*(Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Yd, {Index[d$$2, Flavor], 
           Index[d$$5, Flavor]}, 0]*Coupling[Yd, {Index[d$$6, Flavor], 
           Index[d$$1, Flavor]}, 0] + 
        3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Yd, {Index[d$$2, Flavor], 
           Index[d$$5, Flavor]}, 0]*Coupling[Yd, {Index[d$$6, Flavor], 
           Index[d$$1, Flavor]}, 0] - 
        3*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0]*Coupling[Yd, {Index[d$$4, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H1, {}, 0] + 
        3*Coupling[M3, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H1, {}, 0]^2 + 
        9*Coupling[M1, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H3, {}, 0]^2 + 
        6*Coupling[M1, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H3p, {}, 0]^2 - 
        36*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[M3, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H13, {}, 0]*
         LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] - 
        6*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2*Coupling[y3L, 
          {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[Yd, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda]H13, {}, 0]*LF[{Coupling[M1, {}, 0], 
           Coupling[M3, {}, 0]}, {1, 2, 0}] + 
        36*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[M3, {}, 0]^2*Coupling[Yd, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H13, {}, 0]*
         LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 3, -1}] + 
        Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         (-3*Coupling[M1, {}, 0]^2*(2*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
                Index[d$$4, Flavor]}, 0]]*Coupling[y3L, {Index[d$$5, Flavor], 
               Index[d$$6, Flavor]}, 0]*Coupling[Yd, {Index[d$$5, Flavor], 
               Index[d$$1, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
               Index[d$$4, Flavor]}, 0] + Coupling[y3L, {Index[d$$4, Flavor], 
               Index[d$$3, Flavor]}, 0]*Coupling[Yd, {Index[d$$4, Flavor], 
               Index[d$$1, Flavor]}, 0]*(3*Coupling[\[Lambda]H3, {}, 0] + 
              2*Coupling[\[Lambda]H3p, {}, 0])) + 
          6*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
           Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
           Coupling[Yd, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
            Coupling[M1, {}, 0]^2*LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 
                0]}, {1, 2, 0}] + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
      Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (720*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    (-Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
     hbar*((Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
          Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] + 
         3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
          Coupling[Yu, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0] + 
         (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           (Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$4, Flavor], Index[
                d$$3, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], Index[
                d$$1, Flavor]}, 0] + 2*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
                Index[d$$4, Flavor]}, 0]]*Coupling[y1R, {Index[d$$1, Flavor], 
               Index[d$$4, Flavor]}, 0]*(2*Coupling[M1, {}, 0]^2 + 
              3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0] + 
              (3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0])/
               \[Epsilon] + 9*hbar*Coupling[M3, {}, 0]^2*Coupling[
                \[Lambda]H3, {}, 0] + (9*hbar*Coupling[M3, {}, 0]^2*
                Coupling[\[Lambda]H3, {}, 0])/\[Epsilon] + Coupling[\[Mu], 
                {}, 1]^2 + 3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, 
                {}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
              9*hbar*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0]*Log[
                \[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2)/
        (4*\[Epsilon]) + 
       (Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
          Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
         3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
          Coupling[Yu, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]) + 
         (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           (Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$4, Flavor], Index[
                d$$3, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], Index[
                d$$1, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                  2]) + 2*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
                Index[d$$4, Flavor]}, 0]]*Coupling[y1R, {Index[d$$1, Flavor], 
               Index[d$$4, Flavor]}, 0]*(4*Coupling[M1, {}, 0]^2*(1 + 
                Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
              (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])*(3*hbar*
                 Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0] + 
                (3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0])/
                 \[Epsilon] + 9*hbar*Coupling[M3, {}, 0]^2*Coupling[
                  \[Lambda]H3, {}, 0] + (9*hbar*Coupling[M3, {}, 0]^2*
                  Coupling[\[Lambda]H3, {}, 0])/\[Epsilon] + 
                Coupling[\[Mu], {}, 1]^2 + 3*hbar*Coupling[M1, {}, 0]^2*
                 Coupling[\[Lambda]H1, {}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 
                     0]^2] + 9*hbar*Coupling[M3, {}, 0]^2*Coupling[
                  \[Lambda]H3, {}, 0]*Log[\[Mu]bar2/Coupling[M3, {}, 0]^
                    2]))))/Coupling[M1, {}, 0]^2)/8))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*
    (((I/6)*((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
            0]]*(-(Coupling[gL, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
               Index[d$$3, Flavor]}, 0]) + 
           3*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
            Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]))/
         Coupling[M1, {}, 0]^2 + 
        (Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          (Coupling[gL, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
              Index[d$$3, Flavor]}, 0] - 3*Bar[Coupling[Ye, {Index[d$$3, 
                Flavor], Index[d$$4, Flavor]}, 0]]*Coupling[y3L, 
             {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]))/
         Coupling[M3, {}, 0]^2))/\[Epsilon] - 
     ((I/180)*(5*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, 
             Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
         (2*Coupling[gL, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$3, Flavor]}, 0]*(4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 
                 0]^2]) + 9*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
              Index[d$$4, Flavor]}, 0]]*
           (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
             Coupling[y1R, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
            2*Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
             (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))) + 
        3*(5*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
             0]]*Coupling[M3, {}, 0]^2*
           (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
             Coupling[y1R, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
            3*Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])*
           Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] + 
          6*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2*
           Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]] - 
          10*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
             0]]*Coupling[M1, {}, 0]^2*
           (-3*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
               0]]*Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 
              0]*Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
             (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]) + 
            Coupling[gL, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], Index[
                d$$3, Flavor]}, 0]*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
                 2])))))/(Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
   hbar*
    (((-1/12*I)*((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, 
              Flavor]}, 0]]*(-(Coupling[gL, {}, 0]^2*Coupling[y1L, 
              {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]) + 
           Coupling[gY, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
              Index[d$$3, Flavor]}, 0] + 6*Bar[Coupling[Ye, {Index[d$$3, 
                Flavor], Index[d$$4, Flavor]}, 0]]*Coupling[y1L, 
             {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]))/
         Coupling[M1, {}, 0]^2 + 
        (Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          (Coupling[gL, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
              Index[d$$3, Flavor]}, 0] + 3*Coupling[gY, {}, 0]^2*
            Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0] + 
           6*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
            Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]))/
         Coupling[M3, {}, 0]^2))/\[Epsilon] + 
     ((I/1080)*(90*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
            Index[d$$4, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$1, Flavor], 
            Index[d$$5, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
         Coupling[y1R, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0] + 
        270*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0]*Coupling[Ye, {Index[d$$5, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$2, Flavor], 
           Index[d$$3, Flavor]}, 0] + 54*Coupling[gL, {}, 0]^4*
         Coupling[M1, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]] - 3*Coupling[gY, {}, 0]^4*
         Coupling[M1, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]] - Coupling[gY, {}, 0]^4*Coupling[M3, {}, 0]^2*
         Delta[Index[d$$1, Flavor], Index[d$$2, Flavor]] + 
        10*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(3*Coupling[gL, {}, 0]^2*Coupling[y1L, 
            {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
           (4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) - 
          Coupling[gY, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$3, Flavor]}, 0]*(13 + 9*Log[\[Mu]bar2/Coupling[M1, {}, 
                 0]^2]) + 27*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
              Index[d$$4, Flavor]}, 0]]*
           (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
             Coupling[y1R, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
            2*Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
             (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))) - 
        30*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*(18*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
              Index[d$$4, Flavor]}, 0]]*Coupling[y3L, {Index[d$$1, Flavor], 
             Index[d$$5, Flavor]}, 0]*Coupling[Ye, {Index[d$$5, Flavor], 
             Index[d$$4, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 
                0]^2]) + 3*Coupling[gL, {}, 0]^2*Coupling[y3L, 
            {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
           (2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]) + Coupling[gY, {}, 0]^2*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
           (13 + 9*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[cg1, {Index[d$$1, SU2L[fund]], Index[d$$1, SU2L[adj]], 
      Index[d$$2, SU2L[fund]]}]*FieldStrength[W, {Index[d$$1, Lorentz], 
      Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, {}]*
    (((I/4)*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[gL, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (I/24)*Coupling[gL, {}, 0]*
      ((6*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
        Coupling[M3, {}, 0]^2 + 
       (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         (-2*Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0] + 
          3*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
           (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])))/
        Coupling[M1, {}, 0]^2))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
    FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
    ((((-3*I)/8)*Bar[Coupling[y1L, {Index[d$$2, Flavor], 
          Index[d$$3, Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
          Index[d$$4, Flavor]}, 0]]*Coupling[gY, {}, 0]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     ((I/144)*Coupling[gY, {}, 0]*
       (14*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$2, Flavor], 
           Index[d$$3, Flavor]}, 0] + 
        24*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
           Index[d$$1, Flavor]}, 0] + 
        Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(8*Coupling[y1L, {Index[d$$4, Flavor], 
             Index[d$$3, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
             Index[d$$1, Flavor]}, 0] - 
          3*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
           (23 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] - 
   ((I/24)*hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
     CG[gen[SU3c[fund]], {Index[d$$1, SU3c[adj]], Index[d$$1, SU3c[fund]], 
       Bar[Index[d$$2, SU3c[fund]]]}]*Coupling[gs, {}, 0]*
     (Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$2, Flavor], 
         Index[d$$3, Flavor]}, 0] + 
      3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
         Index[d$$1, Flavor]}, 0] + 
      Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*
       (6*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0] + 
        Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]))*
     FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
    (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   hbar*((Coupling[gL, {}, 0]^2*
       (-(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$5, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
           Index[d$$3, Flavor]]) + Bar[Coupling[y3L, {Index[d$$4, Flavor], 
            Index[d$$5, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
         Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]] + 
        3*(-(Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
              0]]*Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
              Index[d$$1, Flavor]}, 0]) + 
          Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0])*Delta[Index[d$$2, Flavor], 
          Index[d$$4, Flavor]]))/(6*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     ((-5*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$5, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
            Index[d$$3, Flavor]]*(4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                2]) + 9*Bar[Coupling[y3L, {Index[d$$6, Flavor], 
              Index[d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$5, Flavor]}, 0]*(-1 + LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 1, 0}] - 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2 - 
       (15*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         (Coupling[gL, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0]*Delta[Index[d$$2, Flavor], 
            Index[d$$4, Flavor]]*(4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                2]) + 3*Bar[Coupling[y3L, {Index[d$$4, Flavor], 
              Index[d$$6, Flavor]}, 0]]*Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0]*(-1 + LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 1, 0}] - 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2 + 
       (3*(3*Coupling[gL, {}, 0]^2*Delta[Index[d$$2, Flavor], 
            Index[d$$4, Flavor]]*(-(Coupling[gL, {}, 0]^2*Delta[Index[d$$1, 
                Flavor], Index[d$$3, Flavor]]) + 
            5*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
               0]]*Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 
              0]*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) + 
          5*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
           (-6*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
               0]]*Coupling[y3L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 
              0] + Coupling[gL, {}, 0]^2*Delta[Index[d$$1, Flavor], 
              Index[d$$3, Flavor]]*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
                 2]))))/Coupling[M3, {}, 0]^2)/90)*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$4, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*((3*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*Coupling[M3, {}, 0]^2*
        Coupling[y1L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
        Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]] - 
       3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        (Coupling[gL, {}, 0]^2 - 3*Coupling[gY, {}, 0]^2)*
        Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
          Index[d$$5, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
         Index[d$$3, Flavor]] + 
       (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          (9*Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0] + 
         3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          (-3*Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0])*Delta[Index[d$$2, Flavor], 
         Index[d$$4, Flavor]])/(36*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     (-270*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
          Index[d$$5, Flavor]}, 0]*Coupling[y3L, {Index[d$$6, Flavor], 
          Index[d$$1, Flavor]}, 0] - 
       180*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[gL, {}, 0]^2*Coupling[M1, {}, 0]^2*Coupling[y3L, 
         {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
        Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]] + 
       390*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[gY, {}, 0]^2*Coupling[M1, {}, 0]^2*Coupling[y3L, 
         {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
        Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]] - 
       540*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[gL, {}, 0]^2*Coupling[M1, {}, 0]^2*Coupling[y3L, 
         {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]] + 
       90*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[gY, {}, 0]^2*Coupling[M1, {}, 0]^2*Coupling[y3L, 
         {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]] + 
       54*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2*
        Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
        Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]] + 
       3*Coupling[gY, {}, 0]^4*Coupling[M1, {}, 0]^2*
        Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
        Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]] + 
       Coupling[gY, {}, 0]^4*Coupling[M3, {}, 0]^2*Delta[Index[d$$1, Flavor], 
         Index[d$$3, Flavor]]*Delta[Index[d$$2, Flavor], 
         Index[d$$4, Flavor]] - 10*Bar[Coupling[y1L, {Index[d$$4, Flavor], 
           Index[d$$5, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
        (27*Bar[Coupling[y1L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0] - 
         Coupling[y1L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
          Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
          (3*Coupling[gL, {}, 0]^2*(4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                 2]) + Coupling[gY, {}, 0]^2*(13 + 9*Log[\[Mu]bar2/
                Coupling[M1, {}, 0]^2])) - 
         27*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
          (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) + 
       30*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[M3, {}, 0]^2*(Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Delta[Index[d$$2, Flavor], 
           Index[d$$4, Flavor]]*(Coupling[gY, {}, 0]^2*
            (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
           3*Coupling[gL, {}, 0]^2*(4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                 2])) + 9*Bar[Coupling[y3L, {Index[d$$4, Flavor], 
             Index[d$$6, Flavor]}, 0]]*Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*(-1 + LF[{Coupling[M1, {}, 0], 
             Coupling[M3, {}, 0]}, {1, 1, 0}] - 
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) - 
       90*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[gL, {}, 0]^2*Coupling[M1, {}, 0]^2*Coupling[y3L, 
         {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
        Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
        Log[\[Mu]bar2/Coupling[M3, {}, 0]^2] + 
       270*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[gY, {}, 0]^2*Coupling[M1, {}, 0]^2*Coupling[y3L, 
         {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
        Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
        Log[\[Mu]bar2/Coupling[M3, {}, 0]^2] - 
       270*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[gL, {}, 0]^2*Coupling[M1, {}, 0]^2*Coupling[y3L, 
         {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
        Log[\[Mu]bar2/Coupling[M3, {}, 0]^2] + 
       90*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[gY, {}, 0]^2*Coupling[M1, {}, 0]^2*Coupling[y3L, 
         {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
        Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
        Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])/(1080*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2))*
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
    ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       (2*Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
        Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[\[Lambda], {}, 0]))/(2*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     ((Coupling[gY, {}, 0]^4*Coupling[Yu, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
       (18*Coupling[gL, {}, 0]^4*Coupling[Yu, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2 + 
       (3*Coupling[gY, {}, 0]^4*Coupling[Yu, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2 - 
       (180*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0])/
        Coupling[M1, {}, 0]^2 + 
       (180*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0])/
        Coupling[M1, {}, 0]^2 + 
       (60*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0])/
        Coupling[M1, {}, 0]^2 + 
       (60*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])/
        Coupling[M1, {}, 0]^2 + 
       (180*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])/
        Coupling[M3, {}, 0]^2 - 
       (180*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[\[Lambda]H1, {}, 0])/Coupling[M1, {}, 0]^2 + 
       (180*Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda]H1, {}, 0]^2)/Coupling[M1, {}, 0]^2 + 
       (540*Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda]H3, {}, 0]^2)/Coupling[M3, {}, 0]^2 + 
       (360*Coupling[Yu, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda]H3p, {}, 0]^2)/Coupling[M3, {}, 0]^2 - 
       2160*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[Yu, 
         {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
        Coupling[\[Lambda]H13, {}, 0]*LF[{Coupling[M1, {}, 0], 
          Coupling[M3, {}, 0]}, {1, 2, 0}] + 
       2160*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[Yu, 
         {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
        Coupling[\[Lambda]H13, {}, 0]*LF[{Coupling[M1, {}, 0], 
          Coupling[M3, {}, 0]}, {1, 3, -1}] + 
       (180*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         (Coupling[Yu, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
           (-(Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
              Coupling[\[Lambda]H1, {}, 0]) + 2*Coupling[M1, {}, 0]^2*
             Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
             Coupling[\[Lambda]H13, {}, 0]*LF[{Coupling[M1, {}, 0], Coupling[
                M3, {}, 0]}, {1, 2, 0}]) + 
          Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           (Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
             Coupling[y1R, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]*
             Coupling[Yu, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] - 
            Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]*
             Coupling[Yu, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] - 
            3*Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
             Coupling[\[Lambda], {}, 0] - 4*Coupling[y1R, {Index[d$$1, 
                Flavor], Index[d$$4, Flavor]}, 0]*Coupling[\[Lambda]H1, {}, 
              0] - 2*Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, 
                Flavor]}, 0]*Coupling[\[Lambda], {}, 0]*
             Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
            4*Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
               0]]*Coupling[y1R, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 
              0]*Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
             (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))))/
        Coupling[M1, {}, 0]^2 - 
       (180*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         (Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           (Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], Index[
                d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], Index[
                d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$5, Flavor], Index[
                d$$1, Flavor]}, 0] + 4*Bar[Coupling[\[Lambda]H13, {}, 0]]*
             Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$1, Flavor], Index[
                d$$4, Flavor]}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
                Coupling[M3, {}, 0]}, {1, 1, 0}] + Log[\[Mu]bar2/
                Coupling[M3, {}, 0]^2])) + Coupling[Yu, {Index[d$$4, Flavor], 
             Index[d$$1, Flavor]}, 0]*(Coupling[M1, {}, 0]^2*
             Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
             (3*Coupling[\[Lambda]H3, {}, 0] - 2*Coupling[\[Lambda]H3p, {}, 
                0]) + 2*Bar[Coupling[\[Lambda]H13, {}, 0]]*
             Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$4, Flavor], Index[
                d$$3, Flavor]}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
                Coupling[M3, {}, 0]}, {1, 1, 0}] + Coupling[M1, {}, 0]^2*LF[
                {Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] + 
              Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/(Coupling[M1, {}, 0]^2*
         Coupling[M3, {}, 0]^2))/720)*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
    (-1/2*(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
        Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
        Coupling[Yd, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
       (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
       Coupling[Yd, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$4, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   (hbar*Coupling[gs, {}, 0]^2*Delta[Index[d$$1, Flavor], 
      Index[d$$3, Flavor]]*
     (10*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
         Index[d$$5, Flavor]}, 0] + 
      30*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
         Index[d$$5, Flavor]}, 0] - 3*Coupling[gs, {}, 0]^2*
       (3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^2)*
       Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]])*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/(360*Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) + 
   hbar*((Coupling[gY, {}, 0]^2*
       (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$5, Flavor]}, 0] + 
        3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$5, Flavor]}, 0])*Delta[Index[d$$1, Flavor], 
        Index[d$$3, Flavor]])/(18*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     (Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
       ((9*Coupling[gs, {}, 0]^4 + 2*Coupling[gY, {}, 0]^4)*
         (3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^2)*
         Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]] + 
        10*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$5, Flavor]}, 0]*(-3*Coupling[gs, {}, 0]^2 + 
          2*Coupling[gY, {}, 0]^2*(13 + 9*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                2])) + 30*Bar[Coupling[y3L, {Index[d$$4, Flavor], 
            Index[d$$5, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
         (-3*Coupling[gs, {}, 0]^2 + 2*Coupling[gY, {}, 0]^2*
           (13 + 9*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/
      (3240*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$4, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*((Coupling[gL, {}, 0]^2*
       (-(Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
            Index[d$$5, Flavor]}, 0]) + 
        Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0])*Delta[Index[d$$2, Flavor], 
        Index[d$$4, Flavor]])/(6*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + (Coupling[gL, {}, 0]^2*
       Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
       ((-10*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 
            0]]*Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
          (4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
          2 + (-9*Coupling[gL, {}, 0]^2*Delta[Index[d$$1, Flavor], 
            Index[d$$3, Flavor]] + 30*Bar[Coupling[y3L, {Index[d$$3, Flavor], 
              Index[d$$5, Flavor]}, 0]]*Coupling[y3L, {Index[d$$1, Flavor], 
             Index[d$$5, Flavor]}, 0]*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 
                0]^2]))/Coupling[M3, {}, 0]^2))/180)*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$4, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*((((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
          (3*Coupling[gL, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
          Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0])/
         Coupling[M1, {}, 0]^2 - 
        (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
          (Coupling[gL, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0])/
         Coupling[M3, {}, 0]^2)*Delta[Index[d$$2, Flavor], 
        Index[d$$4, Flavor]])/(36*\[Epsilon]) + 
     (Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
       ((162*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2 + 
          (9*Coupling[gs, {}, 0]^4 - Coupling[gY, {}, 0]^4)*
           (3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^2))*
         Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]] + 
        20*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0]*(-3*Coupling[gs, {}, 0]^2 + 
          9*Coupling[gL, {}, 0]^2*(4 + 3*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                2]) - Coupling[gY, {}, 0]^2*
           (13 + 9*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) - 
        60*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0]*(3*Coupling[gs, {}, 0]^2 + 
          9*Coupling[gL, {}, 0]^2*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
               2]) + Coupling[gY, {}, 0]^2*
           (13 + 9*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/
      (6480*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$4, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}]*
    Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] - 
   (hbar*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
     Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
     (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
         Index[d$$6, Flavor]}, 0] + 
      Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
         Index[d$$6, Flavor]}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
          Coupling[M3, {}, 0]}, {1, 1, 0}] + 
        Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/(2*Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) - 
   (hbar*(3*Coupling[gs, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + 
        Coupling[M3, {}, 0]^2)*Delta[Index[d$$1, Flavor], 
        Index[d$$3, Flavor]]*Delta[Index[d$$2, Flavor], 
        Index[d$$4, Flavor]] + 30*Bar[Coupling[y3L, {Index[d$$3, Flavor], 
          Index[d$$5, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
       Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
       (3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] - 
        2*Coupling[gs, {}, 0]^2*Delta[Index[d$$2, Flavor], 
          Index[d$$4, Flavor]]) + 
      10*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*
       (9*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] - 
        2*Coupling[gs, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0]*Delta[Index[d$$2, Flavor], 
          Index[d$$4, Flavor]] + 18*Bar[Coupling[y3L, {Index[d$$4, Flavor], 
            Index[d$$6, Flavor]}, 0]]*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0]*(-1 + LF[{Coupling[M1, {}, 0], 
            Coupling[M3, {}, 0]}, {1, 1, 0}] - 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]*
     Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
        Index[d$$2, Flavor]}, {}])/(720*Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) + 
   CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$2, SU2L[fund]]}, {}]*
    (-Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]] + 
     hbar*((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0] + 
         3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0] + 
         (Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
             Coupling[M1, {}, 0]^2*Coupling[y1R, {Index[d$$4, Flavor], Index[
                d$$3, Flavor]}, 0] + 2*Coupling[y1L, {Index[d$$1, Flavor], 
               Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
               Index[d$$3, Flavor]}, 0]*(2*Coupling[M1, {}, 0]^2 + 
              3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0] + 
              (3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0])/
               \[Epsilon] + 9*hbar*Coupling[M3, {}, 0]^2*Coupling[
                \[Lambda]H3, {}, 0] + (9*hbar*Coupling[M3, {}, 0]^2*
                Coupling[\[Lambda]H3, {}, 0])/\[Epsilon] + Coupling[\[Mu], 
                {}, 1]^2 + 3*hbar*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, 
                {}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
              9*hbar*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0]*Log[
                \[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2)/
        (4*\[Epsilon]) + 
       (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
         3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]) + 
         (Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
             Coupling[M1, {}, 0]^2*Coupling[y1R, {Index[d$$4, Flavor], Index[
                d$$3, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                  2]) + 2*Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, 
                Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, 
                Flavor]}, 0]*(4*Coupling[M1, {}, 0]^2*(1 + Log[\[Mu]bar2/
                  Coupling[M1, {}, 0]^2]) + (3 + 2*Log[\[Mu]bar2/
                   Coupling[M1, {}, 0]^2])*(3*hbar*Coupling[M1, {}, 0]^2*
                 Coupling[\[Lambda]H1, {}, 0] + (3*hbar*Coupling[M1, {}, 0]^2*
                  Coupling[\[Lambda]H1, {}, 0])/\[Epsilon] + 9*hbar*
                 Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0] + 
                (9*hbar*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0])/
                 \[Epsilon] + Coupling[\[Mu], {}, 1]^2 + 3*hbar*
                 Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0]*
                 Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 9*hbar*
                 Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0]*
                 Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/
          Coupling[M1, {}, 0]^2)/8))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
    CG[Bar[eps[SU2L]], {Bar[Index[d$$2, SU2L[fund]]], 
      Bar[Index[d$$3, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$1, SU2L[fund]]}, {}]*Field[H, Scalar, 
     {Index[d$$3, SU2L[fund]]}, {}]*
    ((Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       (2*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] - 
        Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[\[Lambda], {}, 0]))/(2*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$2, Flavor]}, 0]]*
        (18*Coupling[gL, {}, 0]^4*Coupling[M1, {}, 0]^2 + 
         Coupling[gY, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^
            2) + 180*(Coupling[M1, {}, 0]^2*(3*Coupling[\[Lambda]H3, {}, 
                0]^2 + 2*Coupling[\[Lambda]H3p, {}, 0]^2) + 
           Coupling[M3, {}, 0]^2*(Coupling[\[Lambda]H1, {}, 0]^2 + 
             12*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M1, {}, 0]^2*
              Coupling[\[Lambda]H13, {}, 0]*(-LF[{Coupling[M1, {}, 0], 
                  Coupling[M3, {}, 0]}, {1, 2, 0}] + LF[{Coupling[M1, {}, 0], 
                 Coupling[M3, {}, 0]}, {1, 3, -1}])))) - 
       60*(3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
            0]]*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
            0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
            0]]*Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
            Index[d$$5, Flavor]}, 0] - 
         3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
            Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$5, Flavor], 
            Index[d$$3, Flavor]}, 0] - 
         Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$5, Flavor], 
            Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$6, Flavor], 
            Index[d$$3, Flavor]}, 0] - 
         3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
            Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$6, Flavor], 
            Index[d$$5, Flavor]}, 0] + 
         9*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
            Index[d$$4, Flavor]}, 0]*Coupling[\[Lambda]H3, {}, 0] - 
         6*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
            Index[d$$4, Flavor]}, 0]*Coupling[\[Lambda]H3p, {}, 0] - 
         6*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M1, {}, 0]^2*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
            Index[d$$4, Flavor]}, 0]*LF[{Coupling[M1, {}, 0], 
            Coupling[M3, {}, 0]}, {1, 2, 0}] + 
         Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*(3*Bar[Coupling[Ye, {Index[d$$4, Flavor], 
               Index[d$$5, Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
              Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
              Index[d$$5, Flavor]}, 0] - 
           Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]]*
            Coupling[y1L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] + 
           3*Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[\[Lambda]H1, {}, 0] + 6*Coupling[y3L, 
             {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[\[Lambda]H13, {}, 0] - 6*Coupling[y3L, 
             {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[\[Lambda]H13, {}, 0]*LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 1, 0}] + 6*Coupling[M1, {}, 0]^2*
            Coupling[y3L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[\[Lambda]H13, {}, 0]*LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 2, 0}] + 
           6*Coupling[y3L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
            Coupling[\[Lambda]H13, {}, 0]*Log[\[Mu]bar2/Coupling[M3, {}, 
                0]^2]) + 3*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
             Index[d$$3, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
          (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
            (-(Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
                0]*Coupling[Ye, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
                0]*Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
                0]) + Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, 
                 Flavor]}, 0]*Coupling[\[Lambda]H1, {}, 0]) + 
           Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
            Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
            (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]]*
              Coupling[y1R, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] - 
             4*Coupling[y1L, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
              Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
              (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) + 
           Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
            (Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
              (4*Coupling[\[Lambda]H1, {}, 0] + Coupling[\[Lambda], {}, 0]*
                (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) + 
             4*Coupling[y3L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
              Coupling[\[Lambda]H13, {}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
                 Coupling[M3, {}, 0]}, {1, 1, 0}] + Log[\[Mu]bar2/
                 Coupling[M3, {}, 0]^2])))))/(720*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] - (I/6)*hbar*CG[Bar[eps[SU2L]], 
     {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
    ((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Yd, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 + 
     (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Yd, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M3, {}, 0]^2 + 
     (3*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
       Coupling[Yd, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2)*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(((-1/6*I)*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
          Index[d$$3, Flavor]}, 0]]*(Coupling[gY, {}, 0]^2*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0] - 
        3*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]))/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     ((I/540)*(135*Bar[Coupling[y3L, {Index[d$$3, Flavor], 
            Index[d$$4, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
         Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] + 
        45*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(3*Bar[Coupling[Ye, {Index[d$$4, Flavor], 
              Index[d$$5, Flavor]}, 0]]*Coupling[y1R, {Index[d$$1, Flavor], 
             Index[d$$5, Flavor]}, 0] + Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$4, Flavor]}, 0]*Coupling[Yu, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0]) + 6*Coupling[gY, {}, 0]^4*
         Coupling[M1, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]] + 2*Coupling[gY, {}, 0]^4*
         Coupling[M3, {}, 0]^2*Delta[Index[d$$1, Flavor], 
          Index[d$$2, Flavor]] + 5*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
         (27*Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0] - 
          54*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + Coupling[gY, {}, 0]^2*
           Coupling[y1R, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
           (25 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
      {Index[d$$1, Lorentz]}] + hbar*CG[Bar[eps[SU2L]], 
     {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
    Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
    FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
    ((((3*I)/8)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
         0]]*Coupling[gY, {}, 0]*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     ((I/144)*Coupling[gY, {}, 0]*
       (8*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0] + 
        24*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0] + 
        Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(14*Bar[Coupling[Yu, {Index[d$$1, Flavor], 
              Index[d$$4, Flavor]}, 0]]*Coupling[y1R, {Index[d$$4, Flavor], 
             Index[d$$3, Flavor]}, 0] - 3*Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
             Index[d$$3, Flavor]}, 0]*(23 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 
                 0]^2]))))/(Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
      Proj[-1]]**Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
       Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*CG[Bar[cg1], {Bar[Index[d$$1, SU2L[fund]]], Index[d$$1, SU2L[adj]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
     {Index[d$$1, SU2L[fund]]}, {}]*FieldStrength[W, 
     {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, 
     {}]*(((-1/4*I)*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
          Index[d$$3, Flavor]}, 0]]*Coupling[gL, {}, 0]*
       Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
      (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     ((I/24)*Coupling[gL, {}, 0]*
       (-2*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0] + 
        6*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0] + 
        3*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
      Proj[-1]]**Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
       Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
   ((I/24)*hbar*CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
       Bar[Index[d$$2, SU2L[fund]]]}]*CG[gen[SU3c[fund]], 
      {Index[d$$1, SU3c[adj]], Index[d$$1, SU3c[fund]], 
       Bar[Index[d$$2, SU3c[fund]]]}]*Coupling[gs, {}, 0]*
     (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0] + 
      3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0] + 
      Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[M3, {}, 0]^2*
       (Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0] + 
        6*Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]))*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
     FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
      {Index[d$$1, SU3c[adj]]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
        Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}])/(Coupling[M1, {}, 0]^2*
     Coupling[M3, {}, 0]^2) + hbar*CG[Bar[eps[SU2L]], 
     {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
    (-1/2*(Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] + 
        3*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])/
       (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     ((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] + 
        3*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*((Coupling[gY, {}, 0]^2*
       (3*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
         Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]] + 
        4*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
         Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]))/
      (9*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (4*Coupling[gY, {}, 0]^2*Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
        (Coupling[gY, {}, 0]^2*(3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^
            2)*Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]] + 
         15*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*
          (5 + 4*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) - 
       5*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
          Index[d$$5, Flavor]}, 0]*
        (27*Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0] - 
         2*Coupling[gY, {}, 0]^2*Delta[Index[d$$1, Flavor], 
           Index[d$$3, Flavor]]*(25 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
               2])))/(540*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*((Coupling[gY, {}, 0]^2*
       (3*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
           Index[d$$5, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
          Index[d$$3, Flavor]] + 
        2*(Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0] + 
          3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0])*Delta[Index[d$$2, Flavor], 
          Index[d$$4, Flavor]]))/(18*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     (-15*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
          Index[d$$1, Flavor]}, 0]*
        (9*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] - 
         4*Coupling[gY, {}, 0]^2*Delta[Index[d$$2, Flavor], 
           Index[d$$4, Flavor]]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) + 
       Coupling[gY, {}, 0]^2*(5*Bar[Coupling[y1R, {Index[d$$4, Flavor], 
             Index[d$$5, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
          Coupling[y1R, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
          Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
          (25 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
         2*Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
          (Coupling[gY, {}, 0]^2*(3*Coupling[M1, {}, 0]^2 + 
             Coupling[M3, {}, 0]^2)*Delta[Index[d$$1, Flavor], 
             Index[d$$3, Flavor]] + 90*Bar[Coupling[y3L, {Index[d$$5, 
                Flavor], Index[d$$3, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
            Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
            (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/
      (540*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*((-2*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 
         0]]*Coupling[gY, {}, 0]^2*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$5, Flavor]}, 0]*Delta[Index[d$$2, Flavor], 
        Index[d$$4, Flavor]])/(9*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
       (-((9*Coupling[gs, {}, 0]^4 - 16*Coupling[gY, {}, 0]^4)*
          (3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^2)*
          Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]) + 
        20*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0]*(3*Coupling[gs, {}, 0]^2 + 
          4*Coupling[gY, {}, 0]^2*(25 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                2]))))/(6480*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}] + 
   hbar*(-1/2*(Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 
           0]]*Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
           0]]*Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] + 
        Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0])/
       (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     ((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] + 
        Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0])*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}] + 
   hbar*CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*
    (-1/2*(Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
        Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])/
       (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
     (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Bar[Coupling[Yd, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (4*Coupling[M1, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
      {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   (hbar*Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
     (10*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[gs, {}, 0]^2*Coupling[M3, {}, 0]^2*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0] - 
      3*Coupling[gs, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + 
        Coupling[M3, {}, 0]^2)*Delta[Index[d$$2, Flavor], 
        Index[d$$4, Flavor]])*
     Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[d, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (360*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   (hbar*(10*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 
         0]]*Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$5, Flavor]}, 0]*
       (-9*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] + 
        Coupling[gs, {}, 0]^2*Delta[Index[d$$2, Flavor], 
          Index[d$$4, Flavor]]) + Coupling[gs, {}, 0]^2*
       (10*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
           Index[d$$5, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
          Index[d$$3, Flavor]] + 
        3*(10*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 
             0]]*Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
             Index[d$$5, Flavor]}, 0] - Coupling[gs, {}, 0]^2*
           (3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^2)*
           Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]])*
         Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]))*
     Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$3, Flavor]}, {}]]**DiracProduct[
       GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
       {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (360*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   (hbar*(-3*Coupling[gs, {}, 0]^4*(3*Coupling[M1, {}, 0]^2 + 
        Coupling[M3, {}, 0]^2)*Delta[Index[d$$1, Flavor], 
        Index[d$$3, Flavor]]*Delta[Index[d$$2, Flavor], 
        Index[d$$4, Flavor]] + 10*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
          Index[d$$5, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
       (-9*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] + 
        2*Coupling[gs, {}, 0]^2*Delta[Index[d$$2, Flavor], 
          Index[d$$4, Flavor]]))*
     Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
     Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
        {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
      Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}])/
    (720*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
   hbar*((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Coupling[gY, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
         Index[d$$5, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
        Index[d$$3, Flavor]])/(9*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]*
       ((9*Coupling[gs, {}, 0]^4 + 8*Coupling[gY, {}, 0]^4)*
         (3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^2)*
         Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]] + 
        10*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
           Index[d$$5, Flavor]}, 0]*(-3*Coupling[gs, {}, 0]^2 + 
          2*Coupling[gY, {}, 0]^2*(25 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                2]))))/(3240*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*(-1/18*(Coupling[gY, {}, 0]^2*
        (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
            Index[d$$5, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
           Index[d$$3, Flavor]] + 
         2*(Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
            Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
              Index[d$$5, Flavor]}, 0] + 3*Bar[Coupling[y3L, {Index[d$$3, 
                Flavor], Index[d$$5, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
            Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0])*
          Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]))/
       (\[Epsilon]*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) - 
     (10*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
        Coupling[M3, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
          Index[d$$5, Flavor]}, 0]*Delta[Index[d$$1, Flavor], 
         Index[d$$3, Flavor]]*(3*Coupling[gs, {}, 0]^2 + 
         Coupling[gY, {}, 0]^2*(25 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
               2])) + Delta[Index[d$$2, Flavor], Index[d$$4, Flavor]]*
        (-((9*Coupling[gs, {}, 0]^4 - 4*Coupling[gY, {}, 0]^4)*
           (3*Coupling[M1, {}, 0]^2 + Coupling[M3, {}, 0]^2)*
           Delta[Index[d$$1, Flavor], Index[d$$3, Flavor]]) + 
         10*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
            Index[d$$5, Flavor]}, 0]*(3*Coupling[gs, {}, 0]^2 + 
           4*Coupling[gY, {}, 0]^2*(13 + 9*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                 2])) + 30*Bar[Coupling[y3L, {Index[d$$3, Flavor], 
             Index[d$$5, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
          (3*Coupling[gs, {}, 0]^2 + 4*Coupling[gY, {}, 0]^2*
            (13 + 9*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/
      (3240*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[
      GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$1, Flavor]}, {}]*
    Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
       {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*((Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0] + 
        3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0])*Coupling[Yd, {Index[d$$6, Flavor], 
         Index[d$$1, Flavor]}, 0])/(4*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     (Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[Yd, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
        3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (8*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], 
      Proj[1]]**Transp[Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*((Coupling[Yd, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       (-(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
            Index[d$$2, Flavor]}, 0]) + 
        3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0] + 
        Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
           Index[d$$5, Flavor]}, 0]))/(4*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     (Coupling[Yd, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       (-(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
            Index[d$$2, Flavor]}, 0]*
          (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2])) + 
        Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
           Index[d$$5, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
        3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
           Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (8*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
   ((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 + 
     hbar*(-1/3*(Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, 
               Flavor]}, 0]]*(16*Coupling[gs, {}, 0]^2*Coupling[y1R, 
              {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
            3*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
               0]]*Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
              0]*Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 
              0]) + 3*Bar[Coupling[y1R, {Index[d$$4, Flavor], 
              Index[d$$5, Flavor]}, 0]]*Bar[Coupling[y1R, 
             {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[y1R, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (3*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[y1R, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
         Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          (32*Coupling[gs, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
              Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                2]) + 3*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$6, 
                Flavor]}, 0]]*Coupling[y1R, {Index[d$$2, Flavor], 
              Index[d$$6, Flavor]}, 0]*Coupling[y1R, {Index[d$$5, Flavor], 
              Index[d$$1, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/
                Coupling[M1, {}, 0]^2])))/(6*Coupling[M1, {}, 0]^2)))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Proj[-1]]**
     Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
    ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 + 
     hbar*(-1/12*(4*Bar[Coupling[y1L, {Index[d$$4, Flavor], 
              Index[d$$3, Flavor]}, 0]]*(16*Coupling[gs, {}, 0]^2*
             Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
            3*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
               0]]*Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
              0]*Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 
              0]) + 3*Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, 
              Flavor]}, 0]*(3*Bar[Coupling[y1L, {Index[d$$5, Flavor], 
                Index[d$$3, Flavor]}, 0]]*Bar[Coupling[y3L, {Index[d$$4, 
                 Flavor], Index[d$$6, Flavor]}, 0]]*Coupling[y3L, 
              {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0] + 
            Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
             (4*Bar[Coupling[y1L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
                 0]]*Coupling[y1L, {Index[d$$6, Flavor], Index[d$$5, 
                  Flavor]}, 0] + 9*Bar[Coupling[y3L, {Index[d$$6, Flavor], 
                  Index[d$$3, Flavor]}, 0]]*Coupling[y3L, {Index[d$$6, 
                  Flavor], Index[d$$5, Flavor]}, 0])))/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (4*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          (32*Coupling[gs, {}, 0]^2*Coupling[y1R, {Index[d$$2, Flavor], 
              Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                2]) + 3*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$6, 
                Flavor]}, 0]]*Coupling[y1R, {Index[d$$2, Flavor], 
              Index[d$$6, Flavor]}, 0]*Coupling[y1R, {Index[d$$5, Flavor], 
              Index[d$$1, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/
                Coupling[M1, {}, 0]^2])) + 
         3*Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          (3*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
              0]]*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, 
                Flavor]}, 0]]*Coupling[y3L, {Index[d$$5, Flavor], 
              Index[d$$6, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/
                Coupling[M3, {}, 0]^2]) + 
           Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
            (4*Bar[Coupling[y1L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
                0]]*Coupling[y1L, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 
               0]*(1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
             9*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
                0]]*Coupling[y3L, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 
               0]*(1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/
        (24*Coupling[M1, {}, 0]^2)))*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*((Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       (3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
           Index[d$$1, Flavor]}, 0] + 
        Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(Bar[Coupling[Yu, {Index[d$$2, Flavor], 
              Index[d$$6, Flavor]}, 0]]*Coupling[y1R, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0] - Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0])))/(4*\[Epsilon]*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     (Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(Bar[Coupling[Yu, {Index[d$$2, Flavor], 
              Index[d$$6, Flavor]}, 0]]*Coupling[y1R, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0] - Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0])*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
        3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
      (8*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
    Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], 
      Proj[1]]**Transp[Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*(((3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
           0]]*Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])/
        Coupling[M3, {}, 0]^2 + 
       (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         (-(Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]]*
            Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]) + 
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]))/
        Coupling[M1, {}, 0]^2 + 
       (Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         (Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0] - 
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0])/
        Coupling[M1, {}, 0]^2)/(4*\[Epsilon]) + 
     (-((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          (Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]]*
            Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0] - 
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
            Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])*
          (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
          2) + (Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
           0]]*(Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
             0]]*Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 
            0] - Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
         2 + (3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
           0]]*Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^2)/
      8)*Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
     Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (12*Coupling[gs, {}, 0]^2 + 25*Coupling[gY, {}, 0]^2)*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      (36*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (12*Coupling[gs, {}, 0]^2 + 25*Coupling[gY, {}, 0]^2)*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (72*Coupling[M1, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz], 
        Index[d$$2, Lorentz]]], Proj[-1]]**
     Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
    ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      (18*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (36*Coupling[M1, {}, 0]^2))*
    Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz], 
        Index[d$$2, Lorentz]]], Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
     DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 + 
     (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M3, {}, 0]^2 + 
     hbar*(-1/12*(64*Bar[Coupling[y3L, {Index[d$$4, Flavor], 
              Index[d$$3, Flavor]}, 0]]*Coupling[gs, {}, 0]^2*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0] + 
          9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0] + 
          9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
           Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0] + 
          3*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
           Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0] + 
          36*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, 
               Flavor]}, 0]]*Coupling[M1, {}, 0]^2*Coupling[y3L, 
            {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] + 
          Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*(64*Coupling[gs, {}, 0]^2*Coupling[y1L, 
              {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
            12*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
               0]]*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
              0]*Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 
              0] + 9*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, 
                 Flavor]}, 0]]*(Coupling[y1L, {Index[d$$5, Flavor], 
                 Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
                 Index[d$$6, Flavor]}, 0] + 3*Coupling[y1L, 
                {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*Coupling[y3L, 
                {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0])) + 
          9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$6, Flavor]}, 0] + 
          36*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
             0]]*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, 
               Flavor]}, 0]]*Coupling[M1, {}, 0]^2*Coupling[y3L, 
            {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[y3L, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] + 
          3*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
           (4*Bar[Coupling[y1L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
               0]]*Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
               Index[d$$1, Flavor]}, 0]*Coupling[y1L, {Index[d$$6, Flavor], 
               Index[d$$5, Flavor]}, 0] + Bar[Coupling[y3L, {Index[d$$6, 
                 Flavor], Index[d$$3, Flavor]}, 0]]*(Coupling[M1, {}, 0]^
                2*Coupling[y1L, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 
                0]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 
                0] + 9*Coupling[M3, {}, 0]^2*Coupling[y1L, 
                {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*Coupling[y3L, 
                {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])))/
         (\[Epsilon]*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) - 
       (128*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[gs, {}, 0]^2*Coupling[M1, {}, 0]^2*Coupling[y3L, 
           {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
         9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0] + 
         9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0] + 
         3*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0] + 
         36*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0] + 
         9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$6, Flavor]}, 0] + 
         36*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$6, Flavor], 
            Index[d$$5, Flavor]}, 0] + 
         18*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
         18*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
         6*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
         128*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*Coupling[gs, {}, 0]^2*Coupling[M1, {}, 0]^2*
          Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2] + 
         72*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2] + 
         18*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$6, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2] + 
         72*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$6, Flavor], 
            Index[d$$5, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2] + 
         Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*(128*Coupling[gs, {}, 0]^2*
            Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
           12*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
              0]]*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
             0]*Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
            (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
           9*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
              0]]*(Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 
               0]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
               0] + 3*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, 
                 Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
                Index[d$$1, Flavor]}, 0])*(1 + 2*Log[\[Mu]bar2/
                Coupling[M3, {}, 0]^2])) + 
         3*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          (4*Bar[Coupling[y1L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
              0]]*Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
              Index[d$$1, Flavor]}, 0]*Coupling[y1L, {Index[d$$6, Flavor], 
              Index[d$$5, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/
                Coupling[M1, {}, 0]^2]) + 
           Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
            (Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
                Index[d$$5, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
                Index[d$$1, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/
                  Coupling[M1, {}, 0]^2]) + 9*Coupling[M3, {}, 0]^2*
              Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
              Coupling[y3L, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
              (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/
        (24*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2)))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*(((3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
           0]]*Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[y3L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0])/
        Coupling[M3, {}, 0]^2 + 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]*
         (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] - 
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]))/
        Coupling[M1, {}, 0]^2 + 
       (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
         (-(Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]]*
            Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]) + 
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]))/
        Coupling[M1, {}, 0]^2)/(4*\[Epsilon]) + 
     (-((Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
          (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]]*
            Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] - 
           Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
            Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0])*
          (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
          2) + (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
           0]]*Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]*
         (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] - 
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0])*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
         2 + (3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
           0]]*Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[y3L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^2)/
      8)*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[GammaCC, 
      Transp[GammaM[Index[d$$1, Lorentz]]], Proj[-1]]**
     Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[1]]**
     Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
   hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (9*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
       (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (27*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/(36*\[Epsilon]) + 
     ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (9*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
         2 + (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
           0]]*(27*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^2)/
      72)*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[GammaCC, 
      Transp[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]]], Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*
    ((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M1, {}, 0]^2 + 
     hbar*(-1/12*(12*Bar[Coupling[y1R, {Index[d$$4, Flavor], 
              Index[d$$5, Flavor]}, 0]]*Bar[Coupling[y1R, 
             {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[y1R, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] + 
          Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (64*Coupling[gs, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
               Index[d$$1, Flavor]}, 0] + 12*Bar[Coupling[y1L, {Index[d$$5, 
                 Flavor], Index[d$$6, Flavor]}, 0]]*Coupling[y1L, 
              {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
             Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] + 
            9*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
               0]]*(Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 
                0]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
                0] + 3*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, 
                  Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
                 Index[d$$1, Flavor]}, 0])))/(\[Epsilon]*Coupling[M1, {}, 0]^
           2) - (12*Bar[Coupling[y1R, {Index[d$$4, Flavor], 
             Index[d$$5, Flavor]}, 0]]*Bar[Coupling[y1R, 
            {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[y1R, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
         Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          (128*Coupling[gs, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
              Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
                2]) + 12*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, 
                Flavor]}, 0]]*Coupling[y1L, {Index[d$$2, Flavor], 
              Index[d$$6, Flavor]}, 0]*Coupling[y1L, {Index[d$$5, Flavor], 
              Index[d$$1, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/
                Coupling[M1, {}, 0]^2]) + 
           9*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
              0]]*(Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 
               0]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
               0] + 3*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, 
                 Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
                Index[d$$1, Flavor]}, 0])*(1 + 2*Log[\[Mu]bar2/
                Coupling[M3, {}, 0]^2])))/(24*Coupling[M1, {}, 0]^2)))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Proj[-1]]**
     Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   (-((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
        Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
       Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      Coupling[M3, {}, 0]^2 + 
     hbar*(-1/12*(64*Bar[Coupling[y3L, {Index[d$$4, Flavor], 
              Index[d$$3, Flavor]}, 0]]*Coupling[gs, {}, 0]^2*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0] + 
          9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0] + 
          9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
           Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0] + 
          3*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
           Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0] + 
          36*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, 
               Flavor]}, 0]]*Coupling[M1, {}, 0]^2*Coupling[y3L, 
            {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] - 
          Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*(64*Coupling[gs, {}, 0]^2*Coupling[y1L, 
              {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
            12*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
               0]]*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
              0]*Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 
              0] + 9*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, 
                 Flavor]}, 0]]*(Coupling[y1L, {Index[d$$5, Flavor], 
                 Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
                 Index[d$$6, Flavor]}, 0] + 3*Coupling[y1L, 
                {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*Coupling[y3L, 
                {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0])) - 
          9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$6, Flavor]}, 0] + 
          36*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
             0]]*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, 
               Flavor]}, 0]]*Coupling[M1, {}, 0]^2*Coupling[y3L, 
            {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[y3L, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0] - 
          3*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
           (4*Bar[Coupling[y1L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
               0]]*Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
               Index[d$$1, Flavor]}, 0]*Coupling[y1L, {Index[d$$6, Flavor], 
               Index[d$$5, Flavor]}, 0] + Bar[Coupling[y3L, {Index[d$$6, 
                 Flavor], Index[d$$3, Flavor]}, 0]]*(-(Coupling[M1, {}, 0]^2*
                Coupling[y1L, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
                Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 
                 0]) + 9*Coupling[M3, {}, 0]^2*Coupling[y1L, 
                {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*Coupling[y3L, 
                {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])))/
         (\[Epsilon]*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) - 
       (128*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[gs, {}, 0]^2*Coupling[M1, {}, 0]^2*Coupling[y3L, 
           {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0] + 
         9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0] + 
         9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0] + 
         3*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0] + 
         36*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0] - 
         9*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$6, Flavor]}, 0] + 
         36*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$6, Flavor], 
            Index[d$$5, Flavor]}, 0] + 
         18*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
         18*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
         6*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2] + 
         128*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*Coupling[gs, {}, 0]^2*Coupling[M1, {}, 0]^2*
          Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2] + 
         72*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$6, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2] - 
         18*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$6, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2] + 
         72*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$6, Flavor], 
            Index[d$$5, Flavor]}, 0]*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2] - 
         Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[M3, {}, 0]^2*(128*Coupling[gs, {}, 0]^2*
            Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
           12*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
              0]]*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
             0]*Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
            (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
           9*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 
              0]]*(Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 
               0]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
               0] + 3*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, 
                 Flavor]}, 0]*Coupling[y3L, {Index[d$$5, Flavor], 
                Index[d$$1, Flavor]}, 0])*(1 + 2*Log[\[Mu]bar2/
                Coupling[M3, {}, 0]^2])) - 
         3*Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          (4*Bar[Coupling[y1L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
              0]]*Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
              Index[d$$1, Flavor]}, 0]*Coupling[y1L, {Index[d$$6, Flavor], 
              Index[d$$5, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/
                Coupling[M1, {}, 0]^2]) + 
           Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
            (-(Coupling[M1, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
                 Index[d$$5, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
                 Index[d$$1, Flavor]}, 0]*(1 + 2*Log[\[Mu]bar2/
                   Coupling[M1, {}, 0]^2])) + 9*Coupling[M3, {}, 0]^2*
              Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
              Coupling[y3L, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
              (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))))/
        (24*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2)))*
    Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
      Bar[Index[d$$2, SU2L[fund]]]}]*
    ((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
       Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
      (18*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
     (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
       (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
       Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
       (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
      (36*Coupling[M1, {}, 0]^2))*
    Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
     DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz], 
        Index[d$$2, Lorentz]]], Proj[-1]]**
     Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}] + 
   hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (9*Coupling[gL, {}, 0]^2 - 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
       (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (-27*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/(36*\[Epsilon]) + 
     ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (9*Coupling[gL, {}, 0]^2 - 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
         2 - (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
           0]]*(27*Coupling[gL, {}, 0]^2 - 4*(3*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^2)/
      72)*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
        Index[d$$3, Flavor]}, {}]]**DiracProduct[GammaCC, 
      Transp[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]]], Proj[1]]**
     Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
    Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
       {}]]**DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
       Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
      {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
       Index[d$$2, Flavor]}, {}], "SuperTraces" -> 
  <|"hScalar" -> (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Coupling[gY, {}, 0]^2*(Coupling[\[Lambda]H1, {}, 0]/
         Coupling[M1, {}, 0]^2 + (3*Coupling[\[Lambda]H3, {}, 0])/
         Coupling[M3, {}, 0]^2)*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
         {}, {}]^2)/36 + 
     (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Coupling[gs, {}, 0]^2*(Coupling[\[Lambda]H1, {}, 0]/
         Coupling[M1, {}, 0]^2 + (3*Coupling[\[Lambda]H3, {}, 0])/
         Coupling[M3, {}, 0]^2)*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
         {Index[d$$1, SU3c[adj]]}, {}]^2)/24 - 
     (2*hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
         Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[gL, {}, 0]*
       Coupling[gY, {}, 0]*Coupling[\[Lambda]H3p, {}, 0]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
       FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
       FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
        {Index[d$$1, SU2L[adj]]}, {}])/(3*Coupling[M3, {}, 0]^2) + 
     (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Coupling[gL, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
         {Index[d$$1, SU2L[adj]]}, {}]^2)/(2*Coupling[M3, {}, 0]^2) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      ((3*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0] + 
         9*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H3, {}, 0])/\[Epsilon] + 
       3*Coupling[M1, {}, 0]^2*Coupling[\[Lambda]H1, {}, 0]*
        (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 9*Coupling[M3, {}, 0]^2*
        Coupling[\[Lambda]H3, {}, 0]*
        (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])), 
   "hScalar-hScalar" -> hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]]*Bar[Field[H, Scalar, 
        {Index[d$$2, SU2L[fund]]}, {}]]*Field[H, Scalar, 
       {Index[d$$1, SU2L[fund]]}, {}]*Field[H, Scalar, 
       {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
      ((-2*Coupling[\[Lambda]H3p, {}, 0]^2)/Coupling[M3, {}, 0]^2 + 
       12*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 0]*
        (LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] - 
         LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 3, -1}])) + 
     (hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]*(-(Coupling[\[Lambda]H1, {}, 0]^2/
          Coupling[M1, {}, 0]^2) + (-3*Coupling[\[Lambda]H3, {}, 0]^2 + 
          2*(Coupling[\[Lambda]H3p, {}, 0]^2 + 6*Bar[Coupling[\[Lambda]H13, {
                }, 0]]*Coupling[M3, {}, 0]^2*Coupling[\[Lambda]H13, {}, 0]*
             (-LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] + 
              LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 3, -1}])))/
         Coupling[M3, {}, 0]^2))/2 + 
     hbar*(Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
          {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}] + 
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
        Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
        Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
        Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz], 
          Index[d$$1, Lorentz]}])*(-1/4*Coupling[\[Lambda]H1, {}, 0]^2/
         Coupling[M1, {}, 0]^2 - (3*Coupling[\[Lambda]H3, {}, 0]^2 + 
         2*(Coupling[\[Lambda]H3p, {}, 0]^2 + 
           6*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
            Coupling[\[Lambda]H13, {}, 0]*(-LF[{Coupling[M1, {}, 0], 
                Coupling[M3, {}, 0]}, {1, 2, 0}] + LF[{Coupling[M1, {}, 0], 
               Coupling[M3, {}, 0]}, {1, 3, -1}])))/
        (4*Coupling[M3, {}, 0]^2)) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((3*(Coupling[\[Lambda]H1, {}, 0]^2 + 
          2*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 
            0] + 3*Coupling[\[Lambda]H3, {}, 0]^2 + 
          2*Coupling[\[Lambda]H3p, {}, 0]^2))/(2*\[Epsilon]) + 
       (3*(2*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 0]*
           LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Coupling[\[Lambda]H1, {}, 0]^2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^
              2] + (3*Coupling[\[Lambda]H3, {}, 0]^2 + 
            2*Coupling[\[Lambda]H3p, {}, 0]^2)*
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/2), "hScalar-lScalar" -> 0, 
   "hScalar-lFermion" -> 
    -(hbar*FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
        {Index[d$$2, Lorentz]}]*
       ((-2*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$3, Flavor], 
            Index[d$$1, Flavor]}, 0])/(3*\[Epsilon]*Coupling[M1, {}, 0]^2) - 
        (Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$3, Flavor], 
            Index[d$$1, Flavor]}, 0]*
          (5 + 4*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
         (6*Coupling[M1, {}, 0]^2))*
       Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[e, Fermion, {Index[d$$1, Flavor]}, {}]) + 
     hbar*((((3*I)/2)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[y1R, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0])/\[Epsilon] + 
       ((3*I)/4)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
           Index[d$$2, Flavor]}, 0]]*Coupling[y1R, {Index[d$$3, Flavor], 
          Index[d$$1, Flavor]}, 0]*
        (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[e, Fermion, {Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
     (hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
       Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
          {}]*Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
          DiracProduct[GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
           GammaM[Index[d$$3, Lorentz]], Proj[1]]**Field[e, Fermion, 
           {Index[d$$1, Flavor]}, {Index[d$$3, Lorentz]}] + 
        FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
          {}]*Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, 
            {Index[d$$3, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$3, Lorentz]], GammaM[Index[d$$1, Lorentz], 
            Index[d$$2, Lorentz]], Proj[1]]**Field[e, Fermion, 
           {Index[d$$1, Flavor]}, {}]))/(4*Coupling[M1, {}, 0]^2) + 
     ((I/4)*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Coupling[y1R, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       (Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[e, Fermion, 
          {Index[d$$1, Flavor]}, {Index[d$$2, Lorentz], 
           Index[d$$2, Lorentz]}] - 
        Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {Index[d$$1, Lorentz], 
            Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$2, Lorentz]], Proj[1]]**Field[e, Fermion, 
          {Index[d$$1, Flavor]}, {Index[d$$2, Lorentz]}]))/
      Coupling[M1, {}, 0]^2 - hbar*FieldStrength[B, {Index[d$$1, Lorentz], 
        Index[d$$2, Lorentz]}, {}, {Index[d$$2, Lorentz]}]*
      ((Coupling[gY, {}, 0]*(-((Bar[Coupling[y1L, {Index[d$$3, Flavor], 
                Index[d$$2, Flavor]}, 0]]*Coupling[y1L, {Index[d$$3, Flavor], 
               Index[d$$1, Flavor]}, 0])/Coupling[M1, {}, 0]^2) - 
          (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
              0]]*Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 
             0])/Coupling[M3, {}, 0]^2))/(6*\[Epsilon]) + 
       (Coupling[gY, {}, 0]*(-((Bar[Coupling[y1L, {Index[d$$3, Flavor], 
                Index[d$$2, Flavor]}, 0]]*Coupling[y1L, {Index[d$$3, Flavor], 
               Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 
                  0]^2]))/Coupling[M1, {}, 0]^2) - 
          (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
              0]]*Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 
             0]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/
           Coupling[M3, {}, 0]^2))/6)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
        {}] + 
     hbar*((((3*I)/2)*(Bar[Coupling[y1L, {Index[d$$3, Flavor], 
              Index[d$$2, Flavor]}, 0]]*Coupling[y1L, {Index[d$$3, Flavor], 
             Index[d$$1, Flavor]}, 0] + 
          3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]))/
        \[Epsilon] + ((3*I)/4)*(Bar[Coupling[y1L, {Index[d$$3, Flavor], 
             Index[d$$2, Flavor]}, 0]]*Coupling[y1L, {Index[d$$3, Flavor], 
            Index[d$$1, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
         3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
        {Index[d$$1, Lorentz]}] - hbar*CG[gen[SU2L[fund]], 
       {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
        Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
       {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {Index[d$$2, Lorentz]}]*
      ((Coupling[gL, {}, 0]*((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[
                d$$2, Flavor]}, 0]]*Coupling[y1L, {Index[d$$3, Flavor], 
              Index[d$$1, Flavor]}, 0])/Coupling[M1, {}, 0]^2 - 
          (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
            Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
           Coupling[M3, {}, 0]^2))/\[Epsilon] + 
       (Coupling[gL, {}, 0]*((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[
                d$$2, Flavor]}, 0]]*Coupling[y1L, {Index[d$$3, Flavor], 
              Index[d$$1, Flavor]}, 0]*(4 + 3*Log[\[Mu]bar2/
                Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2 - 
          (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
              0]]*Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 
             0]*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/
           Coupling[M3, {}, 0]^2))/3)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
        {}] + (hbar*Coupling[gY, {}, 0]*
       (-((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
          Coupling[M1, {}, 0]^2) - 
        (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         Coupling[M3, {}, 0]^2)*(FieldStrength[B, {Index[d$$1, Lorentz], 
           Index[d$$2, Lorentz]}, {}, {}]*
         Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
            Index[d$$1, Lorentz]], GammaM[Index[d$$3, Lorentz]], Proj[-1]]**
          Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
           {Index[d$$3, Lorentz]}] + FieldStrength[B, {Index[d$$1, Lorentz], 
           Index[d$$2, Lorentz]}, {}, {}]*
         Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$3, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$3, Lorentz]], GammaM[Index[d$$1, Lorentz], 
            Index[d$$2, Lorentz]], Proj[-1]]**Field[l, Fermion, 
           {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/16 + 
     (3*hbar*Coupling[gL, {}, 0]*
       ((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         Coupling[M1, {}, 0]^2 - 
        (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
         Coupling[M3, {}, 0]^2)*(CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], 
           Index[d$$1, SU2L[fund]], Bar[Index[d$$2, SU2L[fund]]]}]*
         FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
          {Index[d$$1, SU2L[adj]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
            Index[d$$1, Lorentz]], GammaM[Index[d$$3, Lorentz]], Proj[-1]]**
          Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, 
           {Index[d$$3, Lorentz]}] + CG[gen[SU2L[fund]], 
          {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
           Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
          {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
          {Index[d$$1, SU2L[adj]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$3, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$3, Lorentz]], GammaM[Index[d$$1, Lorentz], 
            Index[d$$2, Lorentz]], Proj[-1]]**Field[l, Fermion, 
           {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/8 + 
     (I/4)*hbar*((Bar[Coupling[y1L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[y1L, {Index[d$$3, Flavor], 
           Index[d$$1, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
       (3*Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0])/
        Coupling[M3, {}, 0]^2)*
      (Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
          {Index[d$$1, Lorentz]}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
         {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
         {Index[d$$2, Lorentz], Index[d$$2, Lorentz]}] - 
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
          {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$2, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
         {Index[d$$2, Lorentz]}]) - hbar*FieldStrength[B, 
       {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
       {Index[d$$2, Lorentz]}]*
      ((Coupling[gY, {}, 0]*((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[
                d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
              Index[d$$3, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
          (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
              0]]*Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 
             0])/Coupling[M3, {}, 0]^2))/(6*\[Epsilon]) + 
       (Coupling[gY, {}, 0]*((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[
                d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
              Index[d$$3, Flavor]}, 0]*(13 + 9*Log[\[Mu]bar2/
                Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2 + 
          (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
              0]]*Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 
             0]*(13 + 9*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/
           Coupling[M3, {}, 0]^2))/54)*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*(((I/2)*(Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, 
               Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$3, Flavor]}, 0] + 
          3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]))/
        \[Epsilon] + (I/4)*(Bar[Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
            Index[d$$3, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
         3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
          (1 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
     hbar*CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], 
        Index[d$$1, SU2L[fund]], Bar[Index[d$$2, SU2L[fund]]]}]*
      FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {Index[d$$2, Lorentz]}]*
      ((Coupling[gL, {}, 0]*((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[
                d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
              Index[d$$3, Flavor]}, 0])/Coupling[M1, {}, 0]^2 - 
          (Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
            Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
           Coupling[M3, {}, 0]^2))/(3*\[Epsilon]) + 
       (Coupling[gL, {}, 0]*((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[
                d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
              Index[d$$3, Flavor]}, 0]*(4 + 3*Log[\[Mu]bar2/
                Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2 - 
          (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
              0]]*Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 
             0]*(2 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/
           Coupling[M3, {}, 0]^2))/9)*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] - 
     (hbar*CG[gen[SU3c[fund]], {Index[d$$1, SU3c[adj]], 
         Index[d$$1, SU3c[fund]], Bar[Index[d$$2, SU3c[fund]]]}]*
       Coupling[gs, {}, 0]*
       (-((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
          Coupling[M1, {}, 0]^2) - 
        (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
         Coupling[M3, {}, 0]^2)*FieldStrength[G, {Index[d$$1, Lorentz], 
         Index[d$$2, Lorentz]}, {Index[d$$1, SU3c[adj]]}, 
        {Index[d$$2, Lorentz]}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
            SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}])/18 + 
     (hbar*Coupling[gY, {}, 0]*
       ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
         Coupling[M1, {}, 0]^2 + 
        (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
         Coupling[M3, {}, 0]^2)*(FieldStrength[B, {Index[d$$1, Lorentz], 
           Index[d$$2, Lorentz]}, {}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
              SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
           GammaM[Index[d$$3, Lorentz]], Proj[-1]]**Field[q, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$3, Lorentz]}] + 
        FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
          {}]*Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
             Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
            {Index[d$$3, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$3, Lorentz]], GammaM[Index[d$$1, Lorentz], 
            Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {}]))/16 + 
     (hbar*Coupling[gL, {}, 0]*
       ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
         Coupling[M1, {}, 0]^2 - 
        (Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
         Coupling[M3, {}, 0]^2)*(CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], 
           Index[d$$1, SU2L[fund]], Bar[Index[d$$2, SU2L[fund]]]}]*
         FieldStrength[W, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
          {Index[d$$1, SU2L[adj]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
              SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
           GammaM[Index[d$$3, Lorentz]], Proj[-1]]**Field[q, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$3, Lorentz]}] + 
        CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
           Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
          {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
          {Index[d$$1, SU2L[adj]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
              SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$3, Lorentz]}]]**
          DiracProduct[GammaM[Index[d$$3, Lorentz]], 
           GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[-1]]**
          Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
             SU2L[fund]], Index[d$$1, Flavor]}, {}]))/8 + 
     (I/12)*hbar*((Bar[Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$3, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
       (3*Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0])/
        Coupling[M3, {}, 0]^2)*
      (Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
            SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {Index[d$$2, Lorentz], 
          Index[d$$2, Lorentz]}] - 
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
            SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz], 
           Index[d$$1, Lorentz]}]]**DiracProduct[
         GammaM[Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {Index[d$$2, Lorentz]}]) - 
     hbar*FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
       {Index[d$$2, Lorentz]}]*
      ((Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
           Index[d$$3, Flavor]}, 0])/(3*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
           Index[d$$3, Flavor]}, 0]*
         (25 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (54*Coupling[M1, {}, 0]^2))*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {}] + hbar*(((I/2)*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Coupling[y1R, {Index[d$$1, Flavor], 
           Index[d$$3, Flavor]}, 0])/\[Epsilon] + 
       (I/4)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
          0]]*Coupling[y1R, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
        (1 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
       Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {Index[d$$1, Lorentz]}] + 
     (hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       CG[gen[SU3c[fund]], {Index[d$$1, SU3c[adj]], Index[d$$1, SU3c[fund]], 
         Bar[Index[d$$2, SU3c[fund]]]}]*Coupling[gs, {}, 0]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
       FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
        {Index[d$$1, SU3c[adj]]}, {Index[d$$2, Lorentz]}]*
       Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, 
         {}])/(18*Coupling[M1, {}, 0]^2) + 
     (hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, 
          {}]*Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
             Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$2, Lorentz], Index[d$$1, Lorentz]], 
           GammaM[Index[d$$3, Lorentz]], Proj[1]]**Field[u, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
           {Index[d$$3, Lorentz]}] + FieldStrength[B, {Index[d$$1, Lorentz], 
           Index[d$$2, Lorentz]}, {}, {}]*
         Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$3, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$3, Lorentz]], GammaM[Index[d$$1, Lorentz], 
            Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]))/
      (8*Coupling[M1, {}, 0]^2) + 
     ((I/12)*hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
          Index[d$$3, Flavor]}, 0]]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz]}]]**DiracProduct[
          GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[u, Fermion, 
          {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$2, Lorentz], Index[d$$2, Lorentz]}] - 
        Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
           {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]**
         DiracProduct[GammaM[Index[d$$2, Lorentz]], Proj[1]]**
         Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
          {Index[d$$2, Lorentz]}]))/Coupling[M1, {}, 0]^2, 
   "hScalar-lVector" -> 
    hbar*(-1/9*(Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
          Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[-1]]**
       Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
      (-1/9*(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
          Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*((-1/9*(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, 
                Flavor]}, 0]]*(12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^
              2)*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 
             0])/Coupling[M1, {}, 0]^2 - 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (18*Coupling[gL, {}, 0]^2 + 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/(9*Coupling[M3, {}, 0]^2))/
        \[Epsilon] - (Bar[Coupling[y1L, {Index[d$$4, Flavor], 
            Index[d$$3, Flavor]}, 0]]*(12*Coupling[gs, {}, 0]^2 + 
          Coupling[gY, {}, 0]^2)*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
             2]))/(9*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (18*Coupling[gL, {}, 0]^2 + 12*Coupling[gs, {}, 0]^2 + 
          Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
             2]))/(9*Coupling[M3, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + hbar*CG[Bar[eps[SU2L]], 
       {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
      (-1/9*(Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[-1]]**
       Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + 
     hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
          Coupling[M1, {}, 0]^2 - 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (18*Coupling[gL, {}, 0]^2 + 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/
        (9*\[Epsilon]) + 
       ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
           2 - (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(18*Coupling[gL, {}, 0]^2 + 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 
                0]^2]))/Coupling[M3, {}, 0]^2)/9)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}], "hScalar-hScalar-hScalar" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
     Bar[Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]]*
     Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
     Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
     ((-3*(Coupling[\[Lambda]H3, {}, 0]^3 + 2*Coupling[\[Lambda]H3, {}, 0]*
          Coupling[\[Lambda]H3p, {}, 0]^2))/(2*Coupling[M3, {}, 0]^2) + 
      3*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 0]*
       (-Coupling[\[Lambda]H1, {}, 0] + Coupling[\[Lambda]H3, {}, 0])*
       LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 2, 0}] - 
      (Coupling[\[Lambda]H1, {}, 0]*(Coupling[\[Lambda]H1, {}, 0]^2 + 
         6*Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[\[Lambda]H13, {}, 0]*
          (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
       (2*Coupling[M1, {}, 0]^2)), "hScalar-hScalar-lFermion" -> 
    (((-3*I)/4)*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Coupling[y1R, {Index[d$$3, Flavor], 
         Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H1, {}, 0]*
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
           {Index[d$$1, Flavor]}, {}]))/Coupling[M1, {}, 0]^2 - 
     (((3*I)/2)*hbar*(Bar[Coupling[y1L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
         Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda]H13, {}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
            Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]) + 
        Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         (2*Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$3, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H3p, {}, 0] + 
          Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
           Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))*
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
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) - 
     (((3*I)/2)*hbar*(Bar[Coupling[y3L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Bar[Coupling[\[Lambda]H13, {}, 0]]*
         Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] - 
        Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda]H13, {}, 0])*
       (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
        2*Coupling[M1, {}, 0]^2*LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 
            0]}, {1, 2, 0}] + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] + 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$1, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
           {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      Coupling[M1, {}, 0]^2 - 
     (((3*I)/4)*hbar*(Bar[Coupling[y3L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*(Coupling[M1, {}, 0]^2*
           Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (3*Coupling[\[Lambda]H3, {}, 0] - 2*Coupling[\[Lambda]H3p, {}, 
              0]) + Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
           Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) + 
        Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(Coupling[y1L, {Index[d$$3, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H1, {}, 0] + 
          Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[\[Lambda]H13, {}, 0]*(-1 + LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 1, 0}] - 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))*
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
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
     (((3*I)/4)*hbar*(Bar[Coupling[y3L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Bar[Coupling[\[Lambda]H13, {}, 0]]*
         Coupling[y1L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0] - 
        Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$3, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda]H13, {}, 0])*
       (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
        2*Coupling[M1, {}, 0]^2*LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 
            0]}, {1, 2, 0}] + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] + 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$1, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
           {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      Coupling[M1, {}, 0]^2 - 
     ((I/2)*hbar*(Bar[Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*(2*Coupling[M1, {}, 0]^2*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
           Coupling[\[Lambda]H3p, {}, 0] + Bar[Coupling[\[Lambda]H13, {}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$3, Flavor]}, 0]*(-1 + LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 1, 0}] - 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) + 
        Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda]H13, {}, 0]*
         (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
          DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
          Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
             SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
     ((I/2)*hbar*(Bar[Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Bar[Coupling[\[Lambda]H13, {}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0] - 
        Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[\[Lambda]H13, {}, 0])*
       (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
        2*Coupling[M1, {}, 0]^2*LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 
            0]}, {1, 2, 0}] + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] + 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
          DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
          Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
             SU2L[fund]], Index[d$$1, Flavor]}, {}]))/Coupling[M1, {}, 0]^2 - 
     ((I/4)*hbar*(Bar[Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*(Coupling[M1, {}, 0]^2*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
           (3*Coupling[\[Lambda]H3, {}, 0] - 2*Coupling[\[Lambda]H3p, {}, 
              0]) + Bar[Coupling[\[Lambda]H13, {}, 0]]*Coupling[M3, {}, 0]^2*
           Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
           (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])) + 
        Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*(Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda]H1, {}, 0] + 
          Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
           Coupling[\[Lambda]H13, {}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
              Coupling[M3, {}, 0]}, {1, 1, 0}] + 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
          DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
          Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
             SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) - 
     ((I/4)*hbar*(Bar[Coupling[y3L, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Bar[Coupling[\[Lambda]H13, {}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0] - 
        Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$1, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[\[Lambda]H13, {}, 0])*
       (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
        2*Coupling[M1, {}, 0]^2*LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 
            0]}, {1, 2, 0}] + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] + 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
          DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
          Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
             SU2L[fund]], Index[d$$1, Flavor]}, {}]))/Coupling[M1, {}, 0]^2 - 
     ((I/4)*hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
          Index[d$$3, Flavor]}, 0]]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$3, Flavor]}, 0]*Coupling[\[Lambda]H1, {}, 0]*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$1, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[u, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]))/
      Coupling[M1, {}, 0]^2, "hScalar-hScalar-lVector" -> 0, 
   "hScalar-lScalar-lFermion" -> 0, "hScalar-lScalar-lVector" -> 0, 
   "hScalar-lFermion-lScalar" -> 0, "hScalar-lFermion-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      ((3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
        \[Epsilon] + 3*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
           Index[d$$2, Flavor]}, 0]]*Coupling[y1L, {Index[d$$4, Flavor], 
          Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
          Index[d$$3, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
            2]))*Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
      ((3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
        (2*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (4*Coupling[M1, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
      ((((5*I)/8)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[gY, {}, 0]*
         Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       ((I/16)*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Coupling[gY, {}, 0]*Coupling[y1L, {Index[d$$4, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0]*
         (19 + 10*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        Coupling[M1, {}, 0]^2)*Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz], 
         Index[d$$2, Lorentz]], Proj[-1]]**Field[l, Fermion, 
        {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      CG[gen[SU2L[fund]], {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
        Bar[Index[d$$2, SU2L[fund]]]}]*FieldStrength[W, 
       {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {}]*
      ((((-3*I)/4)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[gL, {}, 0]*
         Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (((3*I)/8)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Coupling[gL, {}, 0]*
         Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], 
        Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     (3*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Coupling[y1L, {Index[d$$4, Flavor], 
         Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], 
         GammaM[Index[d$$2, Lorentz]], Proj[-1]]**Field[l, Fermion, 
         {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
         {Index[d$$2, Lorentz]}])/(2*Coupling[M1, {}, 0]^2) + 
     (3*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], 
         GammaM[Index[d$$2, Lorentz]], Proj[-1]]**Field[l, Fermion, 
         {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
         {Index[d$$2, Lorentz]}])/(2*Coupling[M1, {}, 0]^2) + 
     (3*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*Coupling[y1L, {Index[d$$4, Flavor], 
         Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {Index[d$$2, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$2, Lorentz]], 
         GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
         {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}])/
      (2*Coupling[M1, {}, 0]^2) + hbar*Field[H, Scalar, 
       {Index[d$$1, SU2L[fund]]}, {}]*
      ((3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
        \[Epsilon] + 3*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
           Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
           Index[d$$4, Flavor]}, 0]]*Coupling[y1R, {Index[d$$4, Flavor], 
          Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
            2]))*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
          Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
       Field[e, Fermion, {Index[d$$1, Flavor]}, {}] + 
     hbar*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz], 
        Index[d$$1, Lorentz]}]*
      ((3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
        (2*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (4*Coupling[M1, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}] + hbar*CG[gen[SU2L[fund]], 
       {Index[d$$1, SU2L[adj]], Index[d$$1, SU2L[fund]], 
        Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
       {Index[d$$2, SU2L[fund]]}, {}]*FieldStrength[W, 
       {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {}]*
      ((((3*I)/4)*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
            Index[d$$4, Flavor]}, 0]]*Coupling[gL, {}, 0]*
         Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (((3*I)/8)*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
            Index[d$$4, Flavor]}, 0]]*Coupling[gL, {}, 0]*
         Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
         Index[d$$1, Lorentz]], Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}] + hbar*Field[H, Scalar, 
       {Index[d$$1, SU2L[fund]]}, {}]*FieldStrength[B, 
       {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
      ((((-5*I)/8)*Bar[Coupling[y1L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], 
            Index[d$$4, Flavor]}, 0]]*Coupling[gY, {}, 0]*
         Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       ((I/16)*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
           0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$4, Flavor], 
           Index[d$$1, Flavor]}, 0]*
         (19 + 10*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        Coupling[M1, {}, 0]^2)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
         Index[d$$1, Lorentz]], Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}] + 
     (3*hbar*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
         GammaM[Index[d$$2, Lorentz]], Proj[1]]**Field[e, Fermion, 
         {Index[d$$1, Flavor]}, {Index[d$$2, Lorentz]}])/
      (2*Coupling[M1, {}, 0]^2) + 
     (3*hbar*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
          {Index[d$$1, Lorentz]}]]**DiracProduct[
         GammaM[Index[d$$1, Lorentz]], GammaM[Index[d$$2, Lorentz]], 
         Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, 
         {Index[d$$2, Lorentz]}])/(2*Coupling[M1, {}, 0]^2) + 
     (3*hbar*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {Index[d$$1, Lorentz]}]*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
          {Index[d$$2, Lorentz]}]]**DiracProduct[
         GammaM[Index[d$$2, Lorentz]], GammaM[Index[d$$1, Lorentz]], 
         Proj[1]]**Field[e, Fermion, {Index[d$$1, Flavor]}, {}])/
      (2*Coupling[M1, {}, 0]^2) + 
     hbar*Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz], Index[d$$1, Lorentz]}]]*
      CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
      ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0])/
        (2*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (4*Coupling[M1, {}, 0]^2))*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
       Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {}] + hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
      ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0])/
        \[Epsilon] + Bar[Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$3, Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
           Index[d$$4, Flavor]}, 0]]*Coupling[y1R, {Index[d$$1, Flavor], 
          Index[d$$4, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
            2]))*Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
          Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      CG[cg1, {Index[d$$1, SU2L[fund]], Index[d$$1, SU2L[adj]], 
        Index[d$$2, SU2L[fund]]}]*FieldStrength[W, {Index[d$$1, Lorentz], 
        Index[d$$2, Lorentz]}, {Index[d$$1, SU2L[adj]]}, {}]*
      (((I/4)*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
           0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[gL, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       ((I/8)*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
           0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[gL, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], 
        Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
      FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
      ((((-3*I)/8)*Bar[Coupling[y1L, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
            Index[d$$4, Flavor]}, 0]]*Coupling[gY, {}, 0]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       ((I/48)*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
           0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[gY, {}, 0]*Coupling[y1R, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0]*
         (23 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        Coupling[M1, {}, 0]^2)*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
       DiracProduct[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], 
        Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
         Index[d$$1, Flavor]}, {}] - 
     ((I/4)*hbar*Bar[Coupling[y1L, {Index[d$$2, Flavor], 
          Index[d$$3, Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
          Index[d$$4, Flavor]}, 0]]*Bar[Field[H, Scalar, 
         {Index[d$$1, SU2L[fund]]}, {}]]*CG[eps[SU2L], 
        {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
       CG[gen[SU3c[fund]], {Index[d$$1, SU3c[adj]], Index[d$$1, SU3c[fund]], 
         Bar[Index[d$$2, SU3c[fund]]]}]*Coupling[gs, {}, 0]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
       FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
        {Index[d$$1, SU3c[adj]]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], 
         Proj[1]]**Field[u, Fermion, {Index[d$$2, SU3c[fund]], 
          Index[d$$1, Flavor]}, {}])/Coupling[M1, {}, 0]^2 + 
     (hbar*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*CG[eps[SU2L], {Index[d$$2, SU2L[fund]], 
         Index[d$$1, SU2L[fund]]}]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$2, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], 
         GammaM[Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
         {Index[d$$2, Lorentz]}])/(2*Coupling[M1, {}, 0]^2) + 
     (hbar*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       CG[eps[SU2L], {Index[d$$2, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], 
         GammaM[Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
         {Index[d$$2, Lorentz]}])/(2*Coupling[M1, {}, 0]^2) + 
     (hbar*Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
         {Index[d$$1, Lorentz]}]]*CG[eps[SU2L], {Index[d$$2, SU2L[fund]], 
         Index[d$$1, SU2L[fund]]}]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$2, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$2, Lorentz]], 
         GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[u, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}])/
      (2*Coupling[M1, {}, 0]^2) + hbar*CG[Bar[eps[SU2L]], 
       {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
        \[Epsilon] + Bar[Coupling[y1R, {Index[d$$2, Flavor], 
           Index[d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$1, Flavor], 
          Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
          Index[d$$3, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
            2]))*Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
          Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + hbar*CG[Bar[eps[SU2L]], 
       {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {Index[d$$1, Lorentz], 
        Index[d$$1, Lorentz]}]*
      ((Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
        (2*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (4*Coupling[M1, {}, 0]^2))*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + hbar*CG[Bar[eps[SU2L]], 
       {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      FieldStrength[B, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, {}, {}]*
      ((((3*I)/8)*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Coupling[gY, {}, 0]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       ((I/48)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[gY, {}, 0]*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0]*
         (23 + 18*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        Coupling[M1, {}, 0]^2)*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
         Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*CG[Bar[cg1], {Bar[Index[d$$1, SU2L[fund]]], Index[d$$1, SU2L[adj]], 
        Bar[Index[d$$2, SU2L[fund]]]}]*Field[H, Scalar, 
       {Index[d$$1, SU2L[fund]]}, {}]*FieldStrength[W, 
       {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
       {Index[d$$1, SU2L[adj]]}, {}]*
      (((-1/4*I)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, 
             Flavor]}, 0]]*Coupling[gL, {}, 0]*Coupling[y1L, 
          {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       ((I/8)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[gL, {}, 0]*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
         Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     ((I/4)*hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
          Index[d$$3, Flavor]}, 0]]*CG[Bar[eps[SU2L]], 
        {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
       CG[gen[SU3c[fund]], {Index[d$$1, SU3c[adj]], Index[d$$1, SU3c[fund]], 
         Bar[Index[d$$2, SU3c[fund]]]}]*Coupling[gs, {}, 0]*
       Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
       Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
       FieldStrength[G, {Index[d$$1, Lorentz], Index[d$$2, Lorentz]}, 
        {Index[d$$1, SU3c[adj]]}, {}]*
       Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$2, Lorentz], 
          Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
         {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}])/Coupling[M1, {}, 0]^2 + 
     (hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
         Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]*
       Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
         GammaM[Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {Index[d$$2, Lorentz]}])/
      (2*Coupling[M1, {}, 0]^2) + 
     (hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
         Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {}]*Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], 
         GammaM[Index[d$$2, Lorentz]], Proj[-1]]**Field[q, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {Index[d$$2, Lorentz]}])/
      (2*Coupling[M1, {}, 0]^2) + 
     (hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       CG[Bar[eps[SU2L]], {Bar[Index[d$$1, SU2L[fund]]], 
         Bar[Index[d$$2, SU2L[fund]]]}]*Coupling[y1L, {Index[d$$1, Flavor], 
         Index[d$$4, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, 
        {Index[d$$1, Lorentz]}]*
       Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
          {Index[d$$2, Lorentz]}]]**DiracProduct[
         GammaM[Index[d$$2, Lorentz]], GammaM[Index[d$$1, Lorentz]], 
         Proj[-1]]**Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
          Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}])/
      (2*Coupling[M1, {}, 0]^2), "hScalar-lFermion-lVector" -> 
    hbar*(-1/9*(Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
          Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[-1]]**
       Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
      (-1/9*(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
          Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(-12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
          Coupling[M1, {}, 0]^2 + 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (18*Coupling[gL, {}, 0]^2 - 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/
        (9*\[Epsilon]) + 
       (-((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
            (12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
            Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
            2) + (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, 
               Flavor]}, 0]]*(18*Coupling[gL, {}, 0]^2 - 
            12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
           Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^2)/
        9)*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
          Index[d$$3, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + hbar*CG[Bar[eps[SU2L]], 
       {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
      (-1/9*(Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[-1]]**
       Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + 
     hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
          Coupling[M1, {}, 0]^2 + 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (18*Coupling[gL, {}, 0]^2 - 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/
        (9*\[Epsilon]) + 
       ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
           2 + (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(18*Coupling[gL, {}, 0]^2 - 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 
                0]^2]))/Coupling[M3, {}, 0]^2)/9)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}], "hScalar-lVector-lScalar" -> 0, 
   "hScalar-lVector-lFermion" -> 
    hbar*(-1/9*(Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
          Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[-1]]**
       Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
      (-1/9*(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
          Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(-12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
          Coupling[M1, {}, 0]^2 + 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (18*Coupling[gL, {}, 0]^2 - 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/
        (9*\[Epsilon]) + 
       (-((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
            (12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
            Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
            (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
            2) + (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, 
               Flavor]}, 0]]*(18*Coupling[gL, {}, 0]^2 - 
            12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
           Coupling[y3L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^2)/
        9)*Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
          Index[d$$3, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + hbar*CG[Bar[eps[SU2L]], 
       {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
      (-1/9*(Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
         Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[-1]]**
       Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + 
     hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
          Coupling[M1, {}, 0]^2 + 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (18*Coupling[gL, {}, 0]^2 - 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/
        (9*\[Epsilon]) + 
       ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (12*Coupling[gs, {}, 0]^2 - Coupling[gY, {}, 0]^2)*
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
           2 + (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(18*Coupling[gL, {}, 0]^2 - 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 
                0]^2]))/Coupling[M3, {}, 0]^2)/9)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}], "hScalar-lVector-lVector" -> 0, 
   "hScalar-hScalar-lFermion-lFermion" -> 
    (-3*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 
         0]]*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
       Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       (Coupling[y1L, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[\[Lambda]H1, {}, 0] + Coupling[y3L, {Index[d$$4, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[\[Lambda]H13, {}, 0]*
         (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))*
       Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
        DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}])/Coupling[M1, {}, 0]^2 - 
     (3*hbar*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Coupling[y1R, {Index[d$$4, Flavor], Index[d$$1, Flavor]}, 0]*
       Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
       (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[\[Lambda]H1, {}, 0] + 
        Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[\[Lambda]H13, {}, 0]]*
         (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))*
       Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
         {Index[d$$1, Flavor]}, {}])/Coupling[M1, {}, 0]^2 - 
     (hbar*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
       CG[eps[SU2L], {Index[d$$3, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
       Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
       (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[\[Lambda]H1, {}, 0] + 
        Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[\[Lambda]H13, {}, 0]]*
         (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, 
            SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
        Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
         {}])/Coupling[M1, {}, 0]^2 - 
     (hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
       CG[Bar[eps[SU2L]], {Bar[Index[d$$2, SU2L[fund]]], 
         Bar[Index[d$$3, SU2L[fund]]]}]*Coupling[Ye, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, 
        {}]*Field[H, Scalar, {Index[d$$3, SU2L[fund]]}, {}]*
       (Coupling[y1L, {Index[d$$1, Flavor], Index[d$$4, Flavor]}, 0]*
         Coupling[\[Lambda]H1, {}, 0] + Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$4, Flavor]}, 0]*Coupling[\[Lambda]H13, {}, 0]*
         (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))*
       Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
          {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
         {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}])/Coupling[M1, {}, 0]^2, 
   "hScalar-lFermion-hScalar-lFermion" -> 
    (-3*hbar*Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
         0]]*Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 
         0]]*Coupling[y1R, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[y1R, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
       Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
       Bar[Field[e, Fermion, {Index[d$$4, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[e, Fermion, {Index[d$$2, Flavor]}, {}])/
      (8*Coupling[M1, {}, 0]^2) - 
     (3*hbar*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
         0]]*Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
         0]]*Coupling[y1L, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
       Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}])/(4*Coupling[M1, {}, 0]^2) + 
     (3*hbar*((-2*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, 
              Flavor]}, 0]]*Bar[Coupling[y3L, {Index[d$$6, Flavor], 
             Index[d$$3, Flavor]}, 0]]*Coupling[y3L, {Index[d$$5, Flavor], 
            Index[d$$1, Flavor]}, 0]*Coupling[y3L, {Index[d$$6, Flavor], 
            Index[d$$2, Flavor]}, 0])/Coupling[M3, {}, 0]^2 + 
        (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
          Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
          (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M1, {}, 0]^2 + 
        (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[y3L, {Index[d$$5, Flavor], Index[d$$2, Flavor]}, 0]*
          (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, {}]*
       Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, 
         {}])/4 + 
     hbar*((-3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
           0]]*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[y3L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0])/
        (8*Coupling[M3, {}, 0]^2) - 
       (3*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
         (Bar[Coupling[y1L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] + 
          2*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
           (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
            Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
        (8*Coupling[M1, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, 
         {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
        {}] - (hbar*Bar[Coupling[y1L, {Index[d$$4, Flavor], 
          Index[d$$5, Flavor]}, 0]]*Bar[Coupling[y1R, {Index[d$$6, Flavor], 
          Index[d$$3, Flavor]}, 0]]*Coupling[y1L, {Index[d$$2, Flavor], 
         Index[d$$5, Flavor]}, 0]*Coupling[y1R, {Index[d$$6, Flavor], 
         Index[d$$1, Flavor]}, 0]*
       Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
            SU2L[fund]], Index[d$$4, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$2, Flavor]}, {}])/(4*Coupling[M1, {}, 0]^2) + 
     (hbar*((-2*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
            0]]*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 
            0]]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
          Coupling[y3L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])/
         Coupling[M3, {}, 0]^2 + 
        (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
          Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
          (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M1, {}, 0]^2 + 
        (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
          Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
          (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$4, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$2, Flavor]}, {}])/2 + 
     (hbar*(-((Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
             0]]*Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, 
               Flavor]}, 0]]*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$5, Flavor]}, 0]*Coupling[y3L, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2) + 
        (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
          Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
          Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
          (-1 + LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] - 
           Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M1, {}, 0]^2 - 
        (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
          (Bar[Coupling[y1L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
            Coupling[y1L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0] + 
           Bar[Coupling[y3L, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
            Coupling[y3L, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
            (1 - LF[{Coupling[M1, {}, 0], Coupling[M3, {}, 0]}, {1, 1, 0}] + 
             Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/Coupling[M1, {}, 0]^2)*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$4, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
          Index[d$$2, Flavor]}, {}])/4 - 
     (hbar*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
       (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$6, Flavor]}, 0] + 
        Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$6, Flavor]}, 0]*(1 - LF[{Coupling[M1, {}, 0], 
            Coupling[M3, {}, 0]}, {1, 1, 0}] + 
          Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
            SU2L[fund]], Index[d$$3, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$4, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$2, Flavor]}, {}])/(2*Coupling[M1, {}, 0]^2*
       Coupling[M3, {}, 0]^2) + 
     (hbar*(-((Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 
             0]]*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, 
               Flavor]}, 0]]*Coupling[y3L, {Index[d$$1, Flavor], 
             Index[d$$5, Flavor]}, 0]*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0])/Coupling[M3, {}, 0]^2) + 
        (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
          (-(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 
               0]]*Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 
              0]) + 2*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$6, 
                Flavor]}, 0]]*Coupling[y3L, {Index[d$$1, Flavor], 
              Index[d$$5, Flavor]}, 0]*(1 - LF[{Coupling[M1, {}, 0], Coupling[
                M3, {}, 0]}, {1, 1, 0}] + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
                2])))/Coupling[M1, {}, 0]^2)*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
            SU2L[fund]], Index[d$$3, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]*
       Bar[Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$2, 
            SU2L[fund]], Index[d$$4, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
          Index[d$$2, Flavor]}, {}])/8 - 
     (hbar*Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
       Bar[Coupling[y1R, {Index[d$$6, Flavor], Index[d$$3, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$5, Flavor]}, 0]*
       Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
       Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[e, Fermion, {Index[d$$1, Flavor]}, {}]*
       Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}])/(4*Coupling[M1, {}, 0]^2) - 
     (hbar*Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
       Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
       Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$1, Flavor]}, {}]*
       Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$4, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}])/(4*Coupling[M1, {}, 0]^2) - 
     (hbar*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
       Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
       Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
            SU2L[fund]], Index[d$$3, Flavor]}, {}]]**
        DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
        Field[q, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]*
       Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}])/(4*Coupling[M1, {}, 0]^2) - 
     (hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]]*
       Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$6, Flavor]}, 0]]*
       Coupling[y1R, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
       Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
       Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$1, Flavor]}, {}]*
       Bar[Field[u, Fermion, {Index[d$$2, SU3c[fund]], Index[d$$4, Flavor]}, 
          {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[1]]**
        Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}])/(8*Coupling[M1, {}, 0]^2), 
   "hScalar-lFermion-lScalar-lFermion" -> 
    hbar*((Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
             Index[d$$2, Flavor]}, 0] + 
          3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
             Index[d$$2, Flavor]}, 0])*Coupling[Yd, {Index[d$$6, Flavor], 
           Index[d$$1, Flavor]}, 0])/(4*\[Epsilon]*Coupling[M1, {}, 0]^2*
         Coupling[M3, {}, 0]^2) + 
       (Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
             Index[d$$2, Flavor]}, 0]*(3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 
                 0]^2]) + 3*Bar[Coupling[y3L, {Index[d$$5, Flavor], 
              Index[d$$4, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
           Coupling[y3L, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]*
           (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
        (8*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
      Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], 
        Proj[1]]**Transp[Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[d, Fermion, {Index[d$$1, SU3c[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, 
        GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
        {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*((Coupling[Yd, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         (-(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
            Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
            Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
              Index[d$$2, Flavor]}, 0]) + 
          3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
             Index[d$$2, Flavor]}, 0] + 
          Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
             Index[d$$2, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
             Index[d$$5, Flavor]}, 0]))/(4*\[Epsilon]*Coupling[M1, {}, 0]^2*
         Coupling[M3, {}, 0]^2) + 
       (Coupling[Yd, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         (-(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
            Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
            Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
              Index[d$$2, Flavor]}, 0]*(3 + 2*Log[\[Mu]bar2/
                Coupling[M1, {}, 0]^2])) + 
          Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$6, Flavor], 
             Index[d$$2, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
             Index[d$$5, Flavor]}, 0]*(3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 
                 0]^2]) + 3*Bar[Coupling[y3L, {Index[d$$4, Flavor], 
              Index[d$$5, Flavor]}, 0]]*Bar[Coupling[Ye, 
             {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$6, Flavor], 
             Index[d$$2, Flavor]}, 0]*(3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 
                 0]^2])))/(8*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[d, Fermion, {Index[d$$1, SU3c[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, 
        GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[l, Fermion, 
        {Index[d$$1, SU2L[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*((Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         (3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0] + 
          Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*(Bar[Coupling[Yu, {Index[d$$2, Flavor], 
                Index[d$$6, Flavor]}, 0]]*Coupling[y1R, {Index[d$$6, Flavor], 
               Index[d$$1, Flavor]}, 0] - Coupling[y1L, {Index[d$$2, Flavor], 
               Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
               Index[d$$1, Flavor]}, 0])))/(4*\[Epsilon]*
         Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
       (Bar[Coupling[Yd, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
         (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*(Bar[Coupling[Yu, {Index[d$$2, Flavor], 
                Index[d$$6, Flavor]}, 0]]*Coupling[y1R, {Index[d$$6, Flavor], 
               Index[d$$1, Flavor]}, 0] - Coupling[y1L, {Index[d$$2, Flavor], 
               Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
               Index[d$$1, Flavor]}, 0])*
           (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]) + 
          3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0]*(3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 
                 0]^2])))/(8*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
      Bar[Field[d, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], 
        Proj[1]]**Transp[Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + 
     hbar*(((3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
             0]]*Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
             0]]*Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])/
          Coupling[M3, {}, 0]^2 + 
         (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           (-(Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
                0]]*Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 
               0]) + Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, 
                Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, 
                Flavor]}, 0]))/Coupling[M1, {}, 0]^2 + 
         (Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           (Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]]*
             Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0] - 
            Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
             Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])*
           Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0])/
          Coupling[M1, {}, 0]^2)/(4*\[Epsilon]) + 
       (-((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
            Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
            (Bar[Coupling[Yu, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]]*
              Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0] - 
             Coupling[y1L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
              Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0])*
            (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
            2) + (Bar[Coupling[y1R, {Index[d$$5, Flavor], Index[d$$3, 
               Flavor]}, 0]]*(Bar[Coupling[Yu, {Index[d$$2, Flavor], 
                Index[d$$6, Flavor]}, 0]]*Coupling[y1R, {Index[d$$6, Flavor], 
               Index[d$$1, Flavor]}, 0] - Coupling[y1L, {Index[d$$2, Flavor], 
               Index[d$$6, Flavor]}, 0]*Coupling[Ye, {Index[d$$6, Flavor], 
               Index[d$$1, Flavor]}, 0])*Coupling[Yu, {Index[d$$4, Flavor], 
             Index[d$$5, Flavor]}, 0]*(3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 
                 0]^2]))/Coupling[M1, {}, 0]^2 + 
         (3*Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
           Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0]*
           Coupling[Ye, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
           (3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/Coupling[M3, {}, 0]^
           2)/8)*Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + 
     hbar*(((3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 
             0]]*Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
             0]]*Coupling[y3L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
           Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0])/
          Coupling[M3, {}, 0]^2 + 
         (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
           Coupling[Ye, {Index[d$$3, Flavor], Index[d$$5, Flavor]}, 0]*
           (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]]*
             Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] - 
            Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
             Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0]))/
          Coupling[M1, {}, 0]^2 + 
         (Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
           Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
           (-(Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 
                0]]*Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 
               0]) + Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, 
                Flavor]}, 0]*Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, 
                Flavor]}, 0]))/Coupling[M1, {}, 0]^2)/(4*\[Epsilon]) + 
       (-((Bar[Coupling[y1L, {Index[d$$5, Flavor], Index[d$$3, Flavor]}, 0]]*
            Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]]*
            (Bar[Coupling[Ye, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]]*
              Coupling[y1R, {Index[d$$2, Flavor], Index[d$$6, Flavor]}, 0] - 
             Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
              Coupling[Yu, {Index[d$$6, Flavor], Index[d$$2, Flavor]}, 0])*
            (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
            2) + (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$5, 
               Flavor]}, 0]]*Coupling[Ye, {Index[d$$3, Flavor], 
             Index[d$$5, Flavor]}, 0]*(Bar[Coupling[Ye, {Index[d$$1, Flavor], 
                Index[d$$6, Flavor]}, 0]]*Coupling[y1R, {Index[d$$2, Flavor], 
               Index[d$$6, Flavor]}, 0] - Coupling[y1L, {Index[d$$6, Flavor], 
               Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$6, Flavor], 
               Index[d$$2, Flavor]}, 0])*
           (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
           2 + (3*Bar[Coupling[y3L, {Index[d$$5, Flavor], Index[d$$3, 
               Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$5, Flavor], 
              Index[d$$4, Flavor]}, 0]]*Coupling[y3L, {Index[d$$6, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$6, Flavor], 
             Index[d$$2, Flavor]}, 0]*(3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 
                 0]^2]))/Coupling[M3, {}, 0]^2)/8)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz]]], 
        Proj[-1]]**Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, 
        GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[u, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}], 
   "hScalar-lFermion-lScalar-lVector" -> 0, 
   "hScalar-lFermion-lFermion-lFermion" -> 
    hbar*((((-3*I)/2)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$4, Flavor], 
            Index[d$$5, Flavor]}, 0]]*Coupling[y1R, {Index[d$$5, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (((3*I)/2)*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$4, Flavor], 
            Index[d$$5, Flavor]}, 0]]*Coupling[y1R, {Index[d$$5, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
             2]))/Coupling[M1, {}, 0]^2)*
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
         Field[e, Fermion, {Index[d$$1, Flavor]}, {}]) - 
     (((3*I)/4)*hbar*Bar[Coupling[y1R, {Index[d$$3, Flavor], 
          Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yu, {Index[d$$4, Flavor], 
          Index[d$$5, Flavor]}, 0]]*Coupling[y1R, {Index[d$$5, Flavor], 
         Index[d$$1, Flavor]}, 0]*Coupling[Yu, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*
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
           {Index[d$$1, Flavor]}, {}]))/Coupling[M1, {}, 0]^2 + 
     hbar*((((3*I)/2)*(Bar[Coupling[y1L, {Index[d$$3, Flavor], 
              Index[d$$2, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
           Coupling[y1L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0] - 
          Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0])*
         (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]))/
        (\[Epsilon]*Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
       (((3*I)/2)*(Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, 
               Flavor]}, 0]]*Coupling[Yd, {Index[d$$5, Flavor], 
             Index[d$$4, Flavor]}, 0] + 
          Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])*
         (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 
                0]^2]) - Bar[Coupling[y3L, {Index[d$$3, Flavor], 
              Index[d$$2, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
           Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
        (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
     hbar*((((-3*I)/2)*((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, 
                Flavor]}, 0]]*Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[
                d$$4, Flavor]}, 0]]*Coupling[y1L, {Index[d$$5, Flavor], 
              Index[d$$1, Flavor]}, 0]*Coupling[Yd, {Index[d$$5, Flavor], 
              Index[d$$4, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
          (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
            Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
            (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
              Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
             2*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
                0]]*Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
               0]))/Coupling[M3, {}, 0]^2))/\[Epsilon] - 
       ((3*I)/2)*((Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, 
               Flavor]}, 0]]*Bar[Coupling[Yd, {Index[d$$3, Flavor], 
              Index[d$$4, Flavor]}, 0]]*Coupling[y1L, {Index[d$$5, Flavor], 
             Index[d$$1, Flavor]}, 0]*Coupling[Yd, {Index[d$$5, Flavor], 
             Index[d$$4, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 
                0]^2]))/Coupling[M1, {}, 0]^2 + 
         (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
           Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
           (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
             Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
            2*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
               0]]*Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 
              0])*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2]))/
          Coupling[M3, {}, 0]^2))*
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
          {}]) + (((3*I)/4)*hbar*
       (Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$5, Flavor], 
           Index[d$$1, Flavor]}, 0] - 
        Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$5, Flavor], 
           Index[d$$1, Flavor]}, 0])*
       (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] - 
        Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])*
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
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) - 
     ((3*I)/4)*hbar*((Bar[Coupling[y1L, {Index[d$$3, Flavor], 
            Index[d$$2, Flavor]}, 0]]*Bar[Coupling[Yd, {Index[d$$3, Flavor], 
            Index[d$$4, Flavor]}, 0]]*Coupling[y1L, {Index[d$$5, Flavor], 
           Index[d$$1, Flavor]}, 0]*Coupling[Yd, {Index[d$$5, Flavor], 
           Index[d$$4, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
       (Bar[Coupling[y3L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Coupling[y3L, {Index[d$$5, Flavor], Index[d$$1, Flavor]}, 0]*
         (Bar[Coupling[Yd, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[Yd, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0] + 
          2*Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
           Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]))/
        Coupling[M3, {}, 0]^2)*
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
     hbar*(((I/2)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, 
             Flavor]}, 0]]*(Bar[Coupling[y1L, {Index[d$$2, Flavor], 
              Index[d$$3, Flavor]}, 0]]*Coupling[M3, {}, 0]^2*
           Coupling[y1L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0] - 
          Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
             Index[d$$5, Flavor]}, 0])*Coupling[Ye, {Index[d$$5, Flavor], 
           Index[d$$4, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2*
         Coupling[M3, {}, 0]^2) + 
       ((I/2)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
         (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$5, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 
                0]^2]) - Bar[Coupling[y3L, {Index[d$$2, Flavor], 
              Index[d$$3, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
        (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
     hbar*(((-1/2*I)*Bar[Coupling[Ye, {Index[d$$3, Flavor], 
            Index[d$$4, Flavor]}, 0]]*
         (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$5, Flavor]}, 0] + 
          Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
             Index[d$$5, Flavor]}, 0])*Coupling[Ye, {Index[d$$5, Flavor], 
           Index[d$$4, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2*
         Coupling[M3, {}, 0]^2) - 
       ((I/2)*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
           0]]*Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
         (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
           Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
             Index[d$$5, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 
                0]^2]) + Bar[Coupling[y3L, {Index[d$$2, Flavor], 
              Index[d$$3, Flavor]}, 0]]*Coupling[M1, {}, 0]^2*
           Coupling[y3L, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^2])))/
        (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2))*
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
     ((I/4)*hbar*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
         0]]*(Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0] - 
        Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0])*Coupling[Ye, {Index[d$$5, Flavor], 
         Index[d$$4, Flavor]}, 0]*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
          DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
          Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, 
             SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) - 
     ((I/4)*hbar*Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 
         0]]*(Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
           0]]*Coupling[M3, {}, 0]^2*Coupling[y1L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0] + 
        Bar[Coupling[y3L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Coupling[M1, {}, 0]^2*Coupling[y3L, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0])*Coupling[Ye, {Index[d$$5, Flavor], 
         Index[d$$4, Flavor]}, 0]*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[-1]]**Field[q, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              SU2L[fund]], Index[d$$2, Flavor]}, {Index[d$$1, Lorentz]}]]**
          DiracProduct[GammaM[Index[d$$1, Lorentz]], Proj[-1]]**
          Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
             SU2L[fund]], Index[d$$1, Flavor]}, {}]))/
      (Coupling[M1, {}, 0]^2*Coupling[M3, {}, 0]^2) + 
     hbar*(((I/2)*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
            Index[d$$3, Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$4, Flavor], 
            Index[d$$5, Flavor]}, 0]]*Coupling[y1R, {Index[d$$1, Flavor], 
           Index[d$$5, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
           Index[d$$3, Flavor]}, 0])/(\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       ((I/2)*Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 
           0]]*Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 
           0]]*Coupling[y1R, {Index[d$$1, Flavor], Index[d$$5, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
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
          {}]) - ((I/4)*hbar*Bar[Coupling[y1R, {Index[d$$2, Flavor], 
          Index[d$$3, Flavor]}, 0]]*Bar[Coupling[Ye, {Index[d$$4, Flavor], 
          Index[d$$5, Flavor]}, 0]]*Coupling[y1R, {Index[d$$1, Flavor], 
         Index[d$$5, Flavor]}, 0]*Coupling[Ye, {Index[d$$4, Flavor], 
         Index[d$$3, Flavor]}, 0]*
       (Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              Flavor]}, {}]]**DiracProduct[GammaM[Index[d$$1, Lorentz]], 
           Proj[1]]**Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
            Index[d$$1, Flavor]}, {Index[d$$1, Lorentz]}] - 
        Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
         Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
         Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, 
              Flavor]}, {Index[d$$1, Lorentz]}]]**DiracProduct[
           GammaM[Index[d$$1, Lorentz]], Proj[1]]**Field[u, Fermion, 
           {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, {}]))/
      Coupling[M1, {}, 0]^2, "hScalar-lFermion-lFermion-lVector" -> 0, 
   "hScalar-lFermion-lVector-lFermion" -> 
    hbar*(-1/9*(Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
          Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[-1]]**
       Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
      (-1/9*(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
          Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[1]]**Field[u, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 + 25*Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
        (36*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 + 25*Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (72*Coupling[M1, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz], 
          Index[d$$2, Lorentz]]], Proj[-1]]**
       Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
         Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*CG[eps[SU2L], {Index[d$$1, SU2L[fund]], Index[d$$2, SU2L[fund]]}]*
      ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
        (18*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
         Coupling[y1R, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (36*Coupling[M1, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz], 
          Index[d$$2, Lorentz]]], Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$1, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[e, Fermion, {Index[d$$1, Flavor]}, {}]]**
       DiracProduct[GammaCC, GammaM[Index[d$$1, Lorentz], 
         Index[d$$2, Lorentz]], Proj[1]]**Field[u, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, {}] + 
     hbar*((-1/9*(Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, 
                Flavor]}, 0]]*(12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^
              2)*Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 
             0])/Coupling[M1, {}, 0]^2 - 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (18*Coupling[gL, {}, 0]^2 + 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/(9*Coupling[M3, {}, 0]^2))/
        \[Epsilon] - (Bar[Coupling[y1L, {Index[d$$4, Flavor], 
            Index[d$$3, Flavor]}, 0]]*(12*Coupling[gs, {}, 0]^2 + 
          Coupling[gY, {}, 0]^2)*Coupling[y1L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^
             2]))/(9*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (18*Coupling[gL, {}, 0]^2 + 12*Coupling[gs, {}, 0]^2 + 
          Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
           Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 0]^
             2]))/(9*Coupling[M3, {}, 0]^2))*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + 
     hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(9*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
              Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (27*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
              Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/
        (36*\[Epsilon]) + 
       ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (9*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
              Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0]*(3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 
                 0]^2]))/Coupling[M1, {}, 0]^2 + 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (27*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
              Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0]*(3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 
                 0]^2]))/Coupling[M3, {}, 0]^2)/72)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz], 
          Index[d$$2, Lorentz]]], Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$1, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, 
        GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + hbar*CG[Bar[eps[SU2L]], 
       {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
      (-1/9*(Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
            0]]*(12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
          Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
         (\[Epsilon]*Coupling[M1, {}, 0]^2) - 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
         Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (9*Coupling[M1, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Proj[-1]]**
       Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + 
     hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
          Coupling[M1, {}, 0]^2 - 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (18*Coupling[gL, {}, 0]^2 + 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/
        (9*\[Epsilon]) + 
       ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (12*Coupling[gs, {}, 0]^2 + Coupling[gY, {}, 0]^2)*
           Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
           (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^
           2 - (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(18*Coupling[gL, {}, 0]^2 + 12*Coupling[gs, {}, 0]^2 + 
            Coupling[gY, {}, 0]^2)*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0]*(1 + Log[\[Mu]bar2/Coupling[M3, {}, 
                0]^2]))/Coupling[M3, {}, 0]^2)/9)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + hbar*CG[Bar[eps[SU2L]], 
       {Bar[Index[d$$1, SU2L[fund]]], Bar[Index[d$$2, SU2L[fund]]]}]*
      ((Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
         Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0])/
        (18*\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (Bar[Coupling[y1R, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
         (6*Coupling[gs, {}, 0]^2 + 5*Coupling[gY, {}, 0]^2)*
         Coupling[y1L, {Index[d$$2, Flavor], Index[d$$1, Flavor]}, 0]*
         (3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/
        (36*Coupling[M1, {}, 0]^2))*
      Bar[Field[e, Fermion, {Index[d$$3, Flavor]}, {}]]**
       DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz], 
          Index[d$$2, Lorentz]]], Proj[-1]]**
       Transp[Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, 
        GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}] + 
     hbar*(((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 
             0]]*(9*Coupling[gL, {}, 0]^2 - 4*(3*Coupling[gs, {}, 0]^2 + 
              Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/Coupling[M1, {}, 0]^2 + 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (-27*Coupling[gL, {}, 0]^2 + 4*(3*Coupling[gs, {}, 0]^2 + 
              Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0])/Coupling[M3, {}, 0]^2)/
        (36*\[Epsilon]) + 
       ((Bar[Coupling[y1L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (9*Coupling[gL, {}, 0]^2 - 4*(3*Coupling[gs, {}, 0]^2 + 
              Coupling[gY, {}, 0]^2))*Coupling[y1L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0]*(3 + 2*Log[\[Mu]bar2/Coupling[M1, {}, 
                 0]^2]))/Coupling[M1, {}, 0]^2 - 
         (Bar[Coupling[y3L, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]]*
           (27*Coupling[gL, {}, 0]^2 - 4*(3*Coupling[gs, {}, 0]^2 + 
              Coupling[gY, {}, 0]^2))*Coupling[y3L, {Index[d$$2, Flavor], 
             Index[d$$1, Flavor]}, 0]*(3 + 2*Log[\[Mu]bar2/Coupling[M3, {}, 
                 0]^2]))/Coupling[M3, {}, 0]^2)/72)*
      Bar[Field[l, Fermion, {Index[d$$1, SU2L[fund]], Index[d$$3, Flavor]}, 
         {}]]**DiracProduct[GammaCC, Transp[GammaM[Index[d$$1, Lorentz], 
          Index[d$$2, Lorentz]]], Proj[1]]**
       Transp[Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], 
           Index[d$$2, SU2L[fund]], Index[d$$4, Flavor]}, {}]]]*
      Transp[Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
          Index[d$$1, Flavor]}, {}]]**DiracProduct[GammaCC, 
        GammaM[Index[d$$1, Lorentz], Index[d$$2, Lorentz]], Proj[-1]]**
       Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, SU2L[fund]], 
         Index[d$$2, Flavor]}, {}], "hScalar-lVector-lScalar-lFermion" -> 0, 
   "hScalar-lVector-lScalar-lVector" -> 0, 
   "hScalar-lVector-lFermion-lFermion" -> 0, 
   "hScalar-lFermion-lFermion-lFermion-lFermion" -> 
    hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      ((3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (3*Bar[Coupling[y1R, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
      Bar[Field[e, Fermion, {Index[d$$2, Flavor]}, {}]]**
       DiracProduct[Proj[-1]]**Field[l, Fermion, {Index[d$$2, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (3*Bar[Coupling[y1L, {Index[d$$3, Flavor], Index[d$$2, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Yu, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$6, Flavor], Index[d$$1, Flavor]}, 0]*
         Coupling[Yu, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
      Bar[Field[l, Fermion, {Index[d$$2, SU2L[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[1]]**Field[e, Fermion, 
        {Index[d$$1, Flavor]}, {}] + 
     hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      Bar[Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]]*
      CG[eps[SU2L], {Index[d$$3, SU2L[fund]], Index[d$$1, SU2L[fund]]}]*
      Field[H, Scalar, {Index[d$$2, SU2L[fund]]}, {}]*
      ((Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (Bar[Coupling[y1L, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$3, Flavor], Index[d$$4, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$5, Flavor], Index[d$$6, Flavor]}, 0]]*
         Coupling[y1R, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$5, Flavor], Index[d$$4, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
      Bar[Field[q, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$3, 
           SU2L[fund]], Index[d$$2, Flavor]}, {}]]**DiracProduct[Proj[1]]**
       Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$1, Flavor]}, 
        {}] + hbar*Bar[Field[H, Scalar, {Index[d$$1, SU2L[fund]]}, {}]]*
      CG[Bar[eps[SU2L]], {Bar[Index[d$$2, SU2L[fund]]], 
        Bar[Index[d$$3, SU2L[fund]]]}]*Field[H, Scalar, 
       {Index[d$$1, SU2L[fund]]}, {}]*Field[H, Scalar, 
       {Index[d$$3, SU2L[fund]]}, {}]*
      ((Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0])/
        (\[Epsilon]*Coupling[M1, {}, 0]^2) + 
       (Bar[Coupling[y1R, {Index[d$$2, Flavor], Index[d$$3, Flavor]}, 0]]*
         Bar[Coupling[Ye, {Index[d$$4, Flavor], Index[d$$5, Flavor]}, 0]]*
         Coupling[y1L, {Index[d$$1, Flavor], Index[d$$6, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$4, Flavor], Index[d$$3, Flavor]}, 0]*
         Coupling[Ye, {Index[d$$6, Flavor], Index[d$$5, Flavor]}, 0]*
         (1 + Log[\[Mu]bar2/Coupling[M1, {}, 0]^2]))/Coupling[M1, {}, 0]^2)*
      Bar[Field[u, Fermion, {Index[d$$1, SU3c[fund]], Index[d$$2, Flavor]}, 
         {}]]**DiracProduct[Proj[-1]]**Field[q, Fermion, 
        {Index[d$$1, SU3c[fund]], Index[d$$2, SU2L[fund]], 
         Index[d$$1, Flavor]}, {}]|>|>
