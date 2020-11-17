#!/bin/bash
. ../../../load_env.bash
shopt -s expand_aliases

expl test2.expl
xi load --exec test2.xsm
rm test2.xsm

Xsm --debug --timer 1024
