#!/bin/bash

NAME='SCF'


cat > $NAME.in <<!
&control
 calculation='scf'
 prefix='MoSe2'
 outdir='./outdir/'
 pseudo_dir='C:/Users/Marlene/Documents/Europe/TCCM/M2/Electives/3 Simulation of Materials/HW/HW_Cristina/MoSe2/pseudo'
 verbosity='high'
/

&system
 ibrav=12
 A=3.25
 B=3.25
 C=20.0
 cosAB=0.5
 nat=3
 ntyp=2
 ecutwfc=40
 ecutrho=400
 input_dft='PBE'
 occupations='smearing'
 degauss=0.0001
 smearing='marzari-vanderbilt'
 nbnd=18
/

&electrons
 electron_maxstep=300
 mixing_beta=0.1d0
 conv_thr=1.0d-6
/

&ions
 ion_dynamics='bfgs'
/

ATOMIC_SPECIES
 Mo 95.95 Mo.pbe-spn-kjpaw_psl.1.0.0.UPF
 Se 78.96 Se.pbe-n-kjpaw_psl.1.0.0.UPF

ATOMIC_POSITIONS
Mo            0.0000000000        0.0000000000        0.5000000000    0   0   0
Se            0.3333333330        0.3333333330        0.5868568104    0   0   1
Se            0.6666666660        0.6666666660        0.4131431896    0   0   1

K_POINTS (automatic)
 9 9 1  0 0 0
!
