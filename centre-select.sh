
#!/bin/bash
rm -f center_raw.dat
rm -f center.dat
echo "Write the start and end file number:"
read sta end
echo "$sta" "$end" 

#------finding halo centers----

#python2.6-yt halo_find.py
#python2.7 halo_find.py

#---g SelectinHlos. Centres ----
for (( c="$sta"; c<="$end"; c++ ))
do
  echo "$c"
  awk -v var="RD00$c" '{if (NR < 15 && $8 >0.47 && $8 <0.53 && $9 >0.47 && $9 <0.53 && $10 >0.47 && $10 <0.53) {print var " " $1 " " $8 " " $9 " " $10}}' RD00$c/MergerHalos.out >> center_raw.dat
done


#for manually deleting rows
awk '{if (NR != 2 && NR != 4 && NR != 6 && NR != 8 && NR != 10 && NR != 12 && NR != 14 && NR != 16 && NR != 18 && NR != 20 && NR != 22 && NR != 24&& NR != 37 && NR != 39) {print $3 " " $4 " " $5}}' center_raw.dat >> center.dat
#awk '{{print $3 " " $4 " " $5}}' center_raw.dat >> center.dat


#---- analyze clusters with anyl ----
#for (( c="$sta"; c<="$end"; c++ ))
#do
#  mpirun -np 8 ./anyl.exe RD00$c/RedshiftOutput00$c AnalyzeClusterParameterFile$c      
#done


