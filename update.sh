#!/bin/sh

bash putall.sh
echo "cd /home/kevlar/Awesome-CV" > todo
echo "bash local.sh" >> todo
echo "exit" >> todo
echo ""
cat todo | ssh kevlar@kevinkellar.com | grep ZZZZOK > /dev/null
if [ $? -eq 1 ]; then
    bash killrepeat.sh
    echo "Failure!! Killing repeat updater."
    exit
else
    echo "Typesetting success!"
fi

echo "get /home/kevlar/Awesome-CV/resume.pdf" > todo
cat todo | sftp kevlar@kevinkellar.com
wait

echo "Done. Updated."
echo ""


