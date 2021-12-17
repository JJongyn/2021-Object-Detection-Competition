# 2021 자율주행영상 객체 검출 경진대회 #


## Releases에서 best.pt 다운로드 후 yolov5/ 경로에 저장 #


## 학습 재현  (40000장 epoch : 19번 학습 완료) ##
```
cd yolov5 
python train.py --img 1280 --batch 4 --epochs 19 --data 'data/dataset_train.yaml' --cfg 'models/yolov5m.yaml' --weights best.pt --device 0
```
## 결과 재현 ##
### [학습 모델 검증] ###
학습된 모델에 대해 평가하는 코드입니다. --source 경로 부분에 test하고자 하는 이미지를 넣어주세요.
```
python3 detect2.py --weights best.pt --img 1280 --iou-thres 0.6 --source /home/foscar/detection/yolov5/data/test --save-txt --exist-ok --save-conf --view-img
```
### [mAP 측정] ###
```
cd yolov5/data/test # ground truth 해당 경로에 test img, 변환된 txt 추가
cd yolov5
python inference.py --data 'data/dataset.yaml' --weights best.pt --verbose --imgsz 1280 --task test --conf-thres 0.25 --device 0
#/yolov5/runs/val/exp* [경로]에서 PR_curve.png 확인
```
### [결과 XML 변환] ###
```
cd yolov5 
bash inference.sh
```

### Precision Recall Curve ###
![PR_curve](https://user-images.githubusercontent.com/92678942/146409098-08676301-3247-4dbb-b783-fffe9af6f992.png)

### Labeled image ###
![label1](https://user-images.githubusercontent.com/92678942/146318234-31dc3d79-8ab9-4c94-b2a5-40d40bacec40.png)
### Predicted image ###
![pred1](https://user-images.githubusercontent.com/92678942/146318252-62e1736f-a055-47d6-8435-a7600f44c7a0.png)


