#!/bin/bash
export DOCKBASE=`readlink -f /pubhome/mxu/DOCK3.7/DOCK-3.7-beta4`
python2.7 /pubhome/mxu/DOCK3.7/DOCK-3.7-beta4/proteins/blastermaster/blastermaster.py -v
# mkdir ${cwd}/$name/dock
# cd ${cwd}/$name/dock
# cp ${cwd}/$name/INDOCK .
# cp ${cwd}/split_database_index .
# cd ${cwd}
# readlink -f $cwd/ampc_ligands.db2.gz > split_database_index
# $DOCKBASE/docking/DOCK/bin/dock64 INDOCK
date
