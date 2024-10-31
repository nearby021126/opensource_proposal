#!/bin/bash

# 프로그램 시작 메시지
echo "프로그램을 시작합니다."

# 내부 함수 정의
function list_files() {
    echo "함수 안으로 들어왔음"
    ls "$@"
}

# 함수 호출, 전달된 모든 인자를 함수로 전달
list_files "$@"

# 프로그램 종료 메시지
echo "프로그램을 종료합니다."

