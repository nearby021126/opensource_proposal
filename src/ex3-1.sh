#!/bin/bash

# 첫 번째 인자를 받아서 반복 횟수로 사용
count=$1

# 입력받은 숫자만큼 hello world를 출력합니다
for ((i=1; i<=count; i++))
do
    echo "hello world"
done

