#!/bin/bash

# 질문 출력
echo "리눅스가 재미있나요? (yes / no)"
read answer

# 입력값에 따라 다른 출력을 하는 case 문
case "$answer" in
    yes|Y|y|YES)
        echo "yes"
        ;;
    no|N|n|NO)
        echo "no"
        ;;
    *)
        echo "yes or no를 입력해 주세요."
        ;;
esac

