#!/bin/bash
echo "Write the start and end file number:"
read sta end 
echo "$sta" "$end"

for (( c="$sta"; c<="$end"; ++c ))
do
   #cp AnalyzeClusterParameterFile AnalyzeClusterParameterFile$c
   head -c -1 AnalyzeClusterParameterFile > AnalyzeClusterParameterFile$c
   awk '{if (NR== '$c' -09){print  $1 " " $2 " " $3}}' center.dat >> AnalyzeClusterParameterFile$c
   ./anyl.exe AnalyzeClusterParameterFile$c 
done


#for (( c="$sta"; c<="$end"; c++ )
#do
# ./anyl.exe RD00$c/RedshiftOutput00$c AnalyzeClusterParameterFile$c	
#done
