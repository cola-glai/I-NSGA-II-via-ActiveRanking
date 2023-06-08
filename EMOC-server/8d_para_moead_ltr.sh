#!/bin/bash
mkdir ../log
beginTime=`date +%s`


#para: 5_10_0.2_-1

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."





beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 5 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."




#para: 10_5_0.2_-1

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."





beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 5 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."




#para: 10_10_0.1_-1

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."





beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.1 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."








#para: 10_10_0.2_-1

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."





beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."




#para: 10_10_0.4_-1

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."





beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 10 -stepSize 0.4 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."




#para: 10_20_0.2_-1

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."





beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 10 -inquiriesNum 20 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."




#para: 20_10_0.2_-1

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz1_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz2_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."





beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz3_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."






beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/dtlz/dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/mdtlz/mdtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,1,1,1,1,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,1,2,1,1,3,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."

beforeTime=`date +%s`
config=configFiles/I_MOEAD_LTR/minus_dtlz/minus_dtlz4_8d.txt
./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1\
&&
echo "./EMOC -file $config -W 1,2,1,2,1,2,1,1 -save 0 -start_index 14 -run 7 -thread 7 -elicitationInterval 20 -inquiriesNum 10 -stepSize 0.2 >/dev/null 2>&1 is done."
afterTime=`date +%s`
echo "finished in $(($afterTime-$beforeTime)) seconds."


wait
endTime=`date +%s`
echo "all tasks run in $(($endTime-$beginTime)) seconds."
exit