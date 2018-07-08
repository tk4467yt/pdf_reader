#!/bin/sh
for file in /pdfs/*
do
    if test -f $file
    then
        #echo $file 是文件
        pdf2txt.py $file
    else
        echo $file 是目录
    fi
done