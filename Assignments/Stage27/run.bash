#!/bin/bash
. ../../load_env.bash
shopt -s expand_aliases
xi fdisk

#LIBRARY 
xi load --library $OS_LAB_PROJ_DIR/myexpos/expl/library.lib
#OS_STARTUP
spl os_startup.spl
xi load --os os_startup.xsm
rm os_startup.xsm

#MODULES
spl RESOURCE_MANAGER.spl
xi load --module 0 RESOURCE_MANAGER.xsm
rm RESOURCE_MANAGER.xsm

spl PROCESS_MANAGER.spl
xi load --module 1 PROCESS_MANAGER.xsm
rm PROCESS_MANAGER.xsm

spl MEMORY_MANAGER.spl
xi load --module 2 MEMORY_MANAGER.xsm
rm MEMORY_MANAGER.xsm

spl FILE_MANAGER.spl
xi load --module 3 FILE_MANAGER.xsm
rm FILE_MANAGER.xsm

spl DEVICE_MANAGER.spl
xi load --module 4 DEVICE_MANAGER.xsm
rm DEVICE_MANAGER.xsm

spl SCHEDULER.spl
xi load --module 5 SCHEDULER.xsm
rm SCHEDULER.xsm

spl PAGER_MODULE.spl
xi load --module 6 PAGER_MODULE.xsm
rm PAGER_MODULE.xsm

spl BOOT_MODULE.spl
xi load --module 7 BOOT_MODULE.xsm
rm BOOT_MODULE.xsm

# HARD INTERRUPTS
spl TIMER_INT.spl
xi load --int=timer TIMER_INT.xsm
rm TIMER_INT.xsm

spl DISK_INT.spl
xi load --int=disk DISK_INT.xsm
rm DISK_INT.xsm

spl CONSOLE_INT.spl
xi load --int=console CONSOLE_INT.xsm
rm CONSOLE_INT.xsm

#SOFT INTERRUPTS
spl INT_4_FileCD.spl
xi load --int=4 INT_4_FileCD.xsm
rm INT_4_FileCD.xsm

spl INT_5_FileOCS.spl
xi load --int=5 INT_5_FileOCS.xsm
rm INT_5_FileOCS.xsm

spl INT_6_Read.spl
xi load --int=6 INT_6_Read.xsm
rm INT_6_Read.xsm

spl INT_7_Write.spl
xi load --int=7 INT_7_Write.xsm
rm INT_7_Write.xsm

spl INT_8_Fork.spl
xi load --int=8 INT_8_Fork.xsm
rm INT_8_Fork.xsm

spl INT_9_Exec.spl
xi load --int=9 INT_9_Exec.xsm
rm INT_9_Exec.xsm

spl INT_10_Exit.spl
xi load --int=10 INT_10_Exit.xsm
rm INT_10_Exit.xsm

spl INT_11.spl
xi load --int=11 INT_11.xsm
rm INT_11.xsm

spl INT_12_Logout.spl
xi load --int=12 INT_12_Logout.xsm
rm INT_12_Logout.xsm

spl INT_13_SemInit.spl
xi load --int=13 INT_13_SemInit.xsm
rm INT_13_SemInit.xsm

spl INT_14_SemLock.spl
xi load --int=14 INT_14_SemLock.xsm
rm INT_14_SemLock.xsm

spl INT_15_Shutdown.spl
xi load --int=15 INT_15_Shutdown.xsm
rm INT_15_Shutdown.xsm

spl INT_16_UsrMngment.spl
xi load --int=16 INT_16_UsrMngment.xsm
rm INT_16_UsrMngment.xsm

spl INT_17_Login.spl
xi load --int=17 INT_17_Login.xsm
rm INT_17_Login.xsm

#EXCEPTION HANDLER
spl EX_HANDLER.spl
xi load --exhandler EX_HANDLER.xsm
rm EX_HANDLER.xsm

#IDLE
expl IDLE.expl 
xi load --idle IDLE.xsm
rm IDLE.xsm

#LOGIN
expl LOGIN.expl
xi load --init LOGIN.xsm
rm LOGIN.xsm

#SHELL
expl SHELL.expl
xi load --shell SHELL.xsm
rm SHELL.xsm

#Other Process 
expl cat.expl
xi load --exec cat.xsm
rm cat.xsm

expl ls.expl
xi load --exec ls.xsm
rm ls.xsm

expl rm.expl
xi load --exec rm.xsm
rm rm.xsm

expl cp.expl
xi load --exec cp.xsm
rm cp.xsm

expl lu.expl
xi load --exec lu.xsm
rm lu.xsm

expl ru.expl
xi load --exec ru.xsm
rm ru.xsm

###Assignments
expl pid.expl
xi load --exec pid.xsm
rm pid.xsm

expl assg1.expl
xi load --exec assg1.xsm
rm assg1.xsm

expl assg2.expl
xi load --exec assg2.xsm
rm assg2.xsm

expl assg3.expl
xi load --exec assg3.xsm
rm assg3.xsm

expl pgm1.expl
xi load --exec pgm1.xsm
rm pgm1.xsm

Xsm --debug --timer 1024
