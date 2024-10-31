#!/bin/bash

# 검색할 키워드를 첫 번째 인자로 받음
search_term=$1

# DB 파일 경로
db_file="DB.txt"

# DB 파일이 있는지 확인
if [ ! -f "$db_file" ]; then
    echo "$db_file 파일이 존재하지 않습니다."
    exit 1
fi

# 검색어가 포함된 행을 검색 (대소문자 구분 없음)
result=$(grep -i "$search_term" "$db_file")

# 검색 결과 확인 및 출력
if [ -n "$result" ]; then
    echo "$result"
else
    echo "$search_term의 정보를 찾을 수 없습니다."
fi

