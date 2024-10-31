#!/bin/bash

# 폴더 이름을 인자로 받음
folder_name=$1

# 폴더가 존재하는지 확인
if [ ! -d "$folder_name" ]; then
    echo "$folder_name 폴더가 없습니다. 새로 생성합니다."
    mkdir "$folder_name"
else
    echo "$folder_name 폴더가 이미 존재합니다."
fi

# 폴더로 이동
cd "$folder_name"

# 5개의 파일 생성
for i in {0..4}; do
    echo "파일 내용" > "file$i.txt"
done

# 파일들을 tar 명령어로 압축 (v 옵션 제거)
tar -cvf files.tar file*.txt

# 압축해제를 위한 새 폴더 생성
mkdir -p extracted_files

# 압축 파일을 새 폴더에 해제
tar -xf files.tar -C extracted_files

echo "모든 작업이 완료되었습니다."

