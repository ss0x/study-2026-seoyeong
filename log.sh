#!/bin/bash

# 사용법: ./log.sh → 오늘 날짜의 학습일지 생성 후 편집기 열기

F=logs/$(date +%F).md

mkdir -p logs

if [ ! -f $F ]; then
    printf '# 학습일지 %s\n## 오늘 배운 것\n-\n## 막힌 것\n-\n' $(date +%F) > $F
fi

nano $F
