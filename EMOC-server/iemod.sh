#!/bin/bash
mkdir ../log
beginTime=`date +%s`

config=configFiles/IEMOD/dtlz/dtlz2_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

wait
endTime=`date +%s`
echo "all tasks run in $(($endTime-$beginTime)) seconds."

exit

((0))&&{

config=configFiles/IEMOD/mdtlz/mdtlz1_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."

}
wait
endTime=`date +%s`
echo "all tasks run in $(($endTime-$beginTime)) seconds."

((0))&&{
config=configFiles/IEMOD/mdtlz/mdtlz1_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."
}


((0))&&{
config=configFiles/IEMOD/dtlz/dtlz1_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&& echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz1_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
	
config=configFiles/IEMOD/dtlz/dtlz1_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz2_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz2_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz2_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz3_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz3_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz3_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz4_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz4_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz4_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz1_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz1_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz1_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz2_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz2_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz2_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz3_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz3_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz3_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz4_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz4_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/dtlz/dtlz4_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz1_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz2_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz3_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/mdtlz/mdtlz4_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."

config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."
}


((0))&&{
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&
wait

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."
)&
wait
echo "10 tasks finished."

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
}


((0))&&{
(
config=configFiles/IEMOD/dtlz/dtlz1_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&& echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz1_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
	
(
config=configFiles/IEMOD/dtlz/dtlz1_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz2_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz2_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz2_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz3_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz3_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
echo "10 tasks finished."
(
config=configFiles/IEMOD/dtlz/dtlz3_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz4_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz4_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz4_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz1_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz1_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz1_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz2_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz2_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz2_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."
)&
wait

(
config=configFiles/IEMOD/dtlz/dtlz3_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz3_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz3_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz4_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz4_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz4_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."
)&
wait

(
config=configFiles/IEMOD/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz1_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz1_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."
)&
wait

(
config=configFiles/IEMOD/dtlz/dtlz1_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz2_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz2_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz2_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz3_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz3_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz3_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz4_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/dtlz/dtlz4_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/dtlz/dtlz4_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."
)&
wait

(
config=configFiles/IEMOD/mdtlz/mdtlz1_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/mdtlz/mdtlz1_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/mdtlz/mdtlz1_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/mdtlz/mdtlz2_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/mdtlz/mdtlz2_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/mdtlz/mdtlz2_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/mdtlz/mdtlz3_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/mdtlz/mdtlz3_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/mdtlz/mdtlz3_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/mdtlz/mdtlz4_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/mdtlz/mdtlz4_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/mdtlz/mdtlz4_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&
wait

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_3d.txt
./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_3d.txt
./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_3d.txt
./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."
)&
wait
echo "10 tasks finished."

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_5d.txt
./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_5d.txt
./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_5d.txt
./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,3,4,5 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz1_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz2_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz3_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_10d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1,1,1 >> ../log/log.`date +%s` is done."
)&
wait
(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_10d.txt
./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,2,1,3,1,2,1,1,2,1 >> ../log/log.`date +%s` is done."
)&

(
config=configFiles/IEMOD/minus_dtlz/minus_dtlz4_10d.txt
./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s`\
&&
echo "./EMOC -file $config -W 1,1,1,2,1,3,1,5,1,1 >> ../log/log.`date +%s` is done."
)&
}