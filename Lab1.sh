#!/bin/bash
read -p "Введите ссылку на репозиторий: " URL

BASE=$(basename ${URL})             
FILE=$(printf '%b' ${BASE//%/\\x})  
wget ${URL}

cp $FILE -t /media/knyazsibiryak/Rubbish/Ubunta

rm /home/knyazsibiryak/$FILE

chmod g+rw /media/knyazsibiryak/Rubbish/Ubunta

echo "Лабороторная работа №1 выполнена"

