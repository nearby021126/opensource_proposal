#!/bin/bash

# 인자로 몸무게(kg)와 키(cm)를 받습니다
weight=$1
height=$2

# 키를 미터 단위로 변환합니다
height_m=$(echo "scale=2; $height / 100" | bc)

# BMI 계산 (몸무게 / (키^2))
bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

# BMI에 따라 결과를 출력합니다
if (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "저체중입니다."
elif (( $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) )); then
    echo "정상체중입니다."
else
    echo "과체중입니다."
fi

