#!/bin/sh

echo "cd /home/kevlar/Awesome-CV/examples" > todo
echo "ls" >> todo
echo "/usr/local/texlive/2018/bin/x86_64-linux/xelatex resume.tex" >> todo
echo "exit" >> todo
cat todo | ssh kevlar@159.65.72.181
wait
echo "get /home/kevlar/Awesome-CV/examples/resume.pdf" > todo
cat todo | sftp kevlar@159.65.72.181
wait

echo DONE


