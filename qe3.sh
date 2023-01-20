#!/bin/bash

NAME='DOS'

cat > $NAME.in <<!
&projwfc
 prefix='MoSe2'
 outdir='./outdir/'
 ngauss=0
 degauss=0.01
 Emin=-6.0
 Emax=6.0
 DeltaE=0.1
 filpdos='1T.pdos'
/
!

mpirun -n 8 projwfc.x < $NAME.in > $NAME.out