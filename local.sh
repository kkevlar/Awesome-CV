#!/bin/sh


timeout 30 /usr/local/texlive/2018/bin/x86_64-linux/xelatex resume.tex &> /dev/null
if [ $? -eq 0 ]; then
    echo ZZZZOK
else
    echo ZZZZFAIL
fi



