#!bin/bash


for file1 in ~/2021_contest/datafile/*
do
  for file2 in $file1/*
  do
    for file3 in $file2/*
    do
      echo ${file3: -2}
      val="ml"
      echo $val
      if [ ${file3: -2} == "${val}" ];
      then
      	#for f in *.xml; do mv -- "$f" "${f%.xml}_v001_1.xml"; done;	  
        mv -- "$file3" "${file3%.xml}_v001_1.xml";
      fi
    done
  done
done


