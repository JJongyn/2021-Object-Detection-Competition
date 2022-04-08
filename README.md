# 2021 자율주행영상 객체 검출 경진대회 #
- 🥇 1등 수상 🥇
- 
## Requirements 
- Python >= 3.7.0 
- Pytorch >= 1.7.0

## Detection Example
![pred1](https://user-images.githubusercontent.com/92678942/146318252-62e1736f-a055-47d6-8435-a7600f44c7a0.png)

## Train custom data 
data = 40000, epochs = 19

Download best.pt in Release and move to /yolov5

```
cd yolov5 
python train.py --img 1280 --batch 4 --epochs 19 --data 'data/dataset_train.yaml' --cfg 'models/yolov5m.yaml' --weights best.pt --device 0
```

## Running the model

### Evaluating the model ###
```
python3 detect2.py --weights best.pt --img 1280 --iou-thres 0.6 --source ~/2021_Object_Detection_Foscar/yolov5/data/test --save-txt --exist-ok --save-conf --view-img # source = test data
```
### MAP ###
```
cd yolov5/data/test # ground truth 해당 경로에 test img, 변환된 txt 추가
cd yolov5
python inference.py --data 'data/dataset.yaml' --weights best.pt --verbose --imgsz 1280 --task test --conf-thres 0.25 --device 0
#/yolov5/runs/val/exp/R_curve.png
```
### Precision Recall Curve ###
![PR_curve](https://user-images.githubusercontent.com/92678942/146409098-08676301-3247-4dbb-b783-fffe9af6f992.png)

### Result data to XML ###

change path in inference.sh (~/*.jpg)
```
cd yolov5 
bash inference.sh
```
### Yolo_txt to XML(v_001_1.xml) ###
```
python yolo2voc2.py 'yolo txt path'

```


