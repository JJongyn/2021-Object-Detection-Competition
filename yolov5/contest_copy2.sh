#!bin/bash

for file1 in ~/2021_contest/datafile/*
do
  for file2 in $file1/*
  do
    a=$file2
    b=${a: -1}
    c='t'
    if [[ "${b}" != "${c}" ]]
    then
      python3 detect.py --weights best.pt --img 1280 --iou-thres 0.6 --source $file2 --save-txt --project $file1 --name ${a: -1}"_result" --exist-ok --save-conf
      python yolo2voc.py $file1"/"${a: -1}"_result"
      rm -rf $file1"/"${a: -1}"_result/"*.txt
      rm -rf $file1"/"${a: -1}"_result/"*.jpg
    fi
  done
done

echo "        "

for file1 in ~/2021_contest/datafile/*
do
  for file2 in $file1/*
  do
    a=$file2
    b=${a: -1}
    c='t'
    if [[ "${b}" != "${c}" ]]
    then
      python3 detect.py --weights best.pt --img 1280 --iou-thres 0.6 --source $file2 --save-txt --project $file1 --name ${a: -1}"_result" --exist-ok --save-conf
      python yolo2voc.py $file1"/"${a: -1}"_result"
      rm -rf $file1"/"${a: -1}"_result/"*.txt
      rm -rf $file1"/"${a: -1}"_result/"*.jpg
    fi
  done
done

for file1 in ~/2021_contest/datafile/*
do
  for file2 in $file1/*
  do
    a=$file2
    b=${a: -1}
    c='t'
    if [[ "${b}" != "${c}" ]]
    then
      python3 detect.py --weights best.pt --img 1280 --iou-thres 0.6 --source $file2 --save-txt --project $file1 --name ${a: -1}"_result" --exist-ok --save-conf
      python yolo2voc.py $file1"/"${a: -1}"_result"
      rm -rf $file1"/"${a: -1}"_result/"*.txt
      rm -rf $file1"/"${a: -1}"_result/"*.jpg
    fi
  done
done

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
