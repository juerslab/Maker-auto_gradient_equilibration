#!/bin/csh
edpdb 1f6s.pdb << eof
read exp_2652_refine_020.pdb ghijkl
ca from {ch a}
gr a
init
ca from {ch b}
gr b
init
ca from {ch c}
gr c
init
ca from {ch d}
gr d
init
ca from {ch e}
gr e
init
ca from {ch f} 
gr f
init
ca from {ch g}
over a
init
ca from {ch h}
over b
init
ca from {ch i}
over c
init
ca from {ch j}
over d
init
ca from {ch k}
over e
init
ca from {ch l}
over f
eof
