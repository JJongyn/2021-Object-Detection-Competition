#!bin/bash

for file1 in ~/2021_contest/datafile/1/*
do
  for file2 in $file1/*
  do
    a=$file2
    b=${a: -1}
    c='t'
    if [[ "${b}" != "${c}" ]]
    then
      python3 detect.py --weights runs/train/final/weights/best.pt --img 1280 --iou-thres 0.6 --source $file2 --save-txt --project $file1 --name ${a: -1}"_result" --exist-ok 
      python yolo_to_voc.py $file1"/"${a: -1}"_result"
      rm -rf $file1"/"${a: -1}"_result/"*.txt
    fi
  done
done

echo "        "

for file1 in ~/2021_contest/datafile/2/*
do
  for file2 in $file1/*
  do
    a=$file2
    b=${a: -1}
    c='t'
    if [[ "${b}" != "${c}" ]]
    then
      python3 detect.py --weights runs/train/final/weights/best.pt --img 1280 --iou-thres 0.6 --source $file2 --save-txt --project $file1 --name ${a: -1}"_result" --exist-ok
      python yolo_to_voc.py $file1"/"${a: -1}"_result"
      rm -rf $file1"/"${a: -1}"_result/"*.txt
    fi
  done
done

for file1 in ~/2021_contest/datafile/3/*
do
  for file2 in $file1/*
  do
    a=$file2
    b=${a: -1}
    c='t'
    if [[ "${b}" != "${c}" ]]
    then
      python3 detect.py --weights runs/train/final/weights/best.pt --img 1280 --iou-thres 0.6 --source $file2 --save-txt --project $file1 --name ${a: -1}"_result" --exist-ok
      python yolo_to_voc.py $file1"/"${a: -1}"_result"
      rm -rf $file1"/"${a: -1}"_result/"*.txt
    fi
  done
done


