### DOCK3.5.5.4 set env

# from dockenv/00readme
# export DOCK_BASE=***pwd***
export DOCK_BASE=/home/xumin/dockenv/
export LD_LIBRARY_PATH=$DOCK_BASE/bin/Linux/plop6.0:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$DOCK_BASE/bin/Linux:$LD_LIBRARY_PATH
alias dockenvrun=$DOCK_BASE/dockenvrun

export LD_LIBRARY_PATH=/home/xumin/opt/pgi/linux86/10.3/lib:$LD_LIBRARY_PATH
**************************
# DOCK3.7 [reference website:DOCK3.7 Documentation Wiki](https://sites.google.com/site/dock37wiki/)
location: mxu@k168:/pubhome/mxu/DOCK3.7/DOCK-3.7-beta4

# [Analyzing DOCK3.7 outcome](https://sites.google.com/site/dock37wiki/home/analyzing-dock3-7-results)
## OUTDOCK file format
### mol# id_num flexiblecode matched nscored time hac setnum matnum rank cloud elect + vdW + psol + asol + inter + rec_e + rec_d + r_hyd = Total
#### mol# is just the number of the molecule, read in from the docking db2 files.
#### id_num is the ZINC code or other identifier for the molecule
#### flexiblecode is the combination of flexible receptor parts this molecule was docked to
#### matched is the number of matched orientations actually found by the matching algorithm
#### nscored is the number of atoms that were scored
#### time is the time in seconds for this molecule
#### hac is the heavy atom count for this ligand
#### setnum is the conformation number this ligand represents
#### matnum is the match number this ligand represents
#### rank is the rank of the score for this ligand within the ligand (if you want the top 10 poses, this number will increase from 1 to 10)
#### cloud is the cloud number, for an experimental matching scheme still under development
#### electrostatics is the electrostatics score
#### vdW is the van der Waals score (both attractive and repulsive together)
#### psol is the ligand polar desolvation
#### asol is the ligand apolar desolvation
#### inter is the internal energy
#### rec_e is the receptor energy (used in flexible docking)
#### rec_d is the receptor desolvation, not yet supported
#### r_hyd is the receptor hydrophobic effect, not yet supported
#### Total is the total score for this ligand pose
