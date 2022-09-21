#!/bin/bash

read -p "Введите ссылку на репозиторий: " URL
cd ./rty
git clone $URL
FOUND="$(ls -tr | tail)"
 mkdir ./work1
 cp "${FOUND}"/* work1
 rm -rf "${FOUND}"
sudo chmod g+rw ./work1

#BASE=$(basename ${URL})
#FILE=$(printf '%b' ${BASE//%/\\x})
