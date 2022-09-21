#!/bin/bash

read -p "Введите ссылку на репозиторий: " URL
cd /home/knyazsibiryak/rty

git clone $URL
FOUND="$(ls -tr | tail)"
mkdir /media/knyazsibiryak/Rubbish/Ubunta/work1
mv /home/knyazsibiryak/rty/"${FOUND}"/* /media/knyazsibiryak/Rubbish/Ubunta/work1
rm -rf /home/knyazsibiryak/rty/"${FOUND}"
sudo chmod g+rw /media/knyazsibiryak/Rubbish/Ubunta/work1

echo "Лабороторная работа №1 выполнена"

BASE=$(basename ${URL})
FILE=$(printf '%b' ${BASE//%/\\x})
