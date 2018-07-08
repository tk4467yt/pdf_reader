#!/bin/sh
rm -fr /pdf_txt
mkdir /pdf_txt
for file in /pdfs/*
do
    if test -f $file
    then
        echo $file 正在处理
        pdf2txt.py $file > /pdf_txt/`basename $file`
    else
        echo $file 是目录
    fi
done

for file in /pdf_txt/*
do
    if test -f $file
    then
        echo `basename $file` ":" `sed -n 1p $file`
    else
        echo @""
    fi
done