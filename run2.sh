#!/bin/bash
i=1
a=2
while [ $i -lt 10 ]
do
  echo 
  echo
  echo $(date +"%y-%m-%d %T")
  mkdir 0"$i"0 
  cp trackAxis_newest.py ./0"$i"0/
  cp createVariationalSeriesGRD.py ./0"$i"0/ 
  cd 0"$i"0
  if (("$i" >= "$a"))
  then
	cp $(find ../ -name 'dphi*') ./
  fi
  mkdir res_"$i"0
  echo START 0"$i"0!!!
  echo $(date +"%y-%m-%d %T")
  echo START 0"$i"0 GRD
  python createVariationalSeriesGRD.py "$PWD/SI/" 0.$i 
  echo START 0"$i"0 Axis
  python trackAxis_newest.py $PWD res_"$i"0
  if [ $i -eq $a ]; then
  	cp $(find ../ -name 'dphi*') ../        
  fi
  
  
  cd ..
  
  i=$(($i + 1))
  echo DONE 0"$i"0!!!
  echo
done
echo 
i=$((25))
echo
echo $(date +"%y-%m-%d %T")
mkdir 0"$i" 
cp trackAxis_newest.py ./0"$i"/
cp createVariationalSeriesGRD.py ./0"$i"/  
cd 0"$i"
cp $(find ../ -name 'dphi*') ./
mkdir res_0"$i"
echo START 0"$i"!!!
echo $(date +"%y-%m-%d %T")
echo START 0"$i" GRD
python createVariationalSeriesGRD.py "$PWD/SI/" 0.$i
echo START 0"$i" Axis
python trackAxis_newest.py $PWD res_0"$i"
echo DONE 0"$i"!!!
cd ..
echo
echo 
i=$((1))
echo
echo $(date +"%y-%m-%d %T")
mkdir "$i"00 
cp trackAxis_newest.py ./"$i"00/
cp createVariationalSeriesGRD.py ./"$i"00/
cp dphi*.dat ./"$i"00/
cd "$i"00
cp $(find ../ -name 'dphi*') ./
mkdir res_"$i"00
echo START "$i"00!!!
echo $(date +"%y-%m-%d %T")
echo START "$i"00 GRD
python createVariationalSeriesGRD.py "$PWD/SI/" 1.0
echo START "$i"00 Axis
python trackAxis_newest.py $PWD res_"$i"00
echo DONE "$i"00!!!
echo
cd ..
i=$((95))
echo
echo $(date +"%y-%m-%d %T")
mkdir 0"$i" 
cp trackAxis_newest.py ./0"$i"/
cp createVariationalSeriesGRD.py ./0"$i"/  
cd 0"$i"
cp $(find ../ -name 'dphi*') ./
mkdir res_0"$i"
echo START 0"$i"!!!
echo $(date +"%y-%m-%d %T")
echo START 0"$i" GRD
python createVariationalSeriesGRD.py "$PWD/SI/" 0.$i
echo START 0"$i" Axis
python trackAxis_newest.py $PWD res_0"$i"
echo DONE 0"$i"!!!
cd ..
echo

