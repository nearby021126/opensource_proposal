#!/bin/bash

# 입력 인자
name=$1
info=$2

# DB 파일 경로
db_file="DB.txt"

# DB 파일이 없는 경우 생성
if [ ! -f "$db_file" ]; then
    echo "$db_file 파일이 존재하지 않아 새로 생성합니다."
    touch "$db_file"
fi

# 정보를 DB에 추가
echo "$name $info" >> "$db_file"
echo "$name $info가 $db_file에 추가되었습니다."

