#!/bin/bash
. ../../load_env.bash
shopt -s expand_aliases

xi fdisk

spl os_startup.spl
xi load --os os_startup.xsm
rm os_startup.xsm

spl haltprog.spl
xi load --int=10 haltprog.xsm
xi load --exhandler haltprog.xsm
rm haltprog.xsm

expl print1to50.expl
xi load --init print1to50.xsm
rm print1to50.xsm

spl int7.spl
xi load --int=7 int7.xsm
rm int7.xsm

spl sample_timer.spl
xi load --int=timer sample_timer.xsm
rm sample_timer.xsm

xi load --library $OS_LAB_PROJ_DIR/myexpos/expl/library.lib

expl idle.expl 
xi load --idle idle.xsm
rm idle.xsm

Xsm
