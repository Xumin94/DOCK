#!/usr/bin/bash --posix

set -o posix

# DOCKENV

# from dockenv/00readme
# export DOCK_BASE=***pwd***
export DOCK_BASE=/home/xumin/dockenv/
export LD_LIBRARY_PATH=$DOCK_BASE/bin/Linux/plop6.0:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$DOCK_BASE/bin/Linux:$LD_LIBRARY_PATH
alias dockenvrun=$DOCK_BASE/dockenvrun

# from Qing Wang
export LD_LIBRARY_PATH=/home/xumin/opt/pgi/linux86/10.3/lib:$LD_LIBRARY_PATH
