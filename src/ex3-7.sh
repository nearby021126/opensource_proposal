#!/bin/bash

# 폴더 이름을 인자로 받음
main_folder=$1

# 폴더가 존재하지 않으면 생성
if [ ! -d "$main_folder" ]; then
    echo "$main_folder 폴더가 없습니다. 새로 생성합니다."
    mkdir "$main_folder"
else
    echo "$main_folder 폴더가 이미 존재합니다."
fi

# 메인 폴더로 이동
cd "$main_folder"

# 5개의 파일 생성
for i in {0..4}; do
    touch "file$i.txt"
done

# 각 파일에 해당하는 폴더 생성 및 심볼릭 링크 생성
for i in {0..4}; do
    subfolder="file$i"
    mkdir -p "$subfolder"
    ln -s "../file$i.txt" "$subfolder/file$i.txt"
done

echo "모든 작업이 완료되었습니다."

