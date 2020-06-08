#!/bin/sh
#$ -S /bin/sh
#$ -cwd
#$ -t  1001-1400
#$ -q  opel
#$ -j y
#$ -o /dev/null  # no log
#$ -notify  # get SIGUSR1 or SIGUSR2 before qdel


date
hostname

CONFIG_FILE=opel
i=$( expr $SGE_TASK_ID - 1000)
#FS=($(awk 'NR=="'$i'"{print $1,$2,$3,$4,$5,$6}' $CONFIG_FILE))
FS=($(awk 'NR=="'$i'"{print $1}' $CONFIG_FILE))
name=${FS[0]}

cwd=$(pwd)
test -d /tmp/mxu || mkdir /tmp/mxu
mkdir /tmp/mxu/$name
cp ${cwd}/$name/*pdb  /tmp/mxu/$name
cp ${cwd}/blast.sh  /tmp/mxu/$name
cd /tmp/mxu/$name
bash blast.sh 2>&1 | tee -a ${name}.log
#echo $(pwd) ${cwd}/log | tee -a ${name}.log
# cp -r /tmp/mxu/${name}dock ${cwd}/$name
cp /tmp/mxu/${name}/INDOCK ${cwd}/$name/INDOCK
cp -r /tmp/mxu/${name}/dockfiles ${cwd}/$name
cp /tmp/mxu/${name}/${name}.log ${cwd}/$name
rm -rf /tmp/mxu/$name/
date
