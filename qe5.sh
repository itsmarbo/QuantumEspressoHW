#!/bin/bash

NAME='Bands2'

cat > $NAME.in <<!
&bands
 prefix='MoSe2'
 outdir='./outdir/'
 filband='MoSe2.bands'
/
!

mpirun -n 8 bands.x < $NAME.in > $NAME.out