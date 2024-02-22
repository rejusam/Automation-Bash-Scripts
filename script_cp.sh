#!/bin/bash
#echo "Write the start and end file number:"
#read sta end
#echo "$sta" "$end" 

#mkdir position


#for (( c="$sta"; c<="$end"; c++ ))
for ((c=0; c<=58; c++))
  do
  if [ $c -lt "10" ]
      then
      ./enzo.exe -o RD000$c/RedshiftOutput000$c
      mv amr.particles position/RD000$c.particles
      mv amr.particles.dm position/RD000$c.particles.dm
      mv amr.particles.gas position/RD000$c.particles.gas
  elif [ $c -lt "100" ]
      then
      ./enzo.exe -o RD00$c/RedshiftOutput00$c
      mv amr.particles position/RD00$c.particles
      mv amr.particles.dm position/RD00$c.particles.dm
      mv amr.particles.gas position/RD00$c.particles.gas
  else
      ./enzo.exe -o RD0$c/RedshiftOutput0$c
      mv amr.particles position/RD0$c.particles
      mv amr.particles.dm position/RD0$c.particles.dm
      mv amr.particles.gas position/RD0$c.particles.gas
  fi
done

