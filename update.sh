#!/bin/sh

echo "cd /home/kevlar/Awesome-CV" > todo
echo "bash local.sh" >> todo
echo "exit" >> todo
cat todo | ssh kevlar@159.65.72.181 | grep ZZZZOK > /dev/null
if [ $? -eq 1 ]; then
    bash killrepeat.sh
    echo "Failure!! Killing repeat updater."
    exit
else
    echo "Typesetting success!"
fi

echo "get /home/kevlar/Awesome-CV/resume.pdf" > todo
cat todo | (sftp kevlar@159.65.72.181 &> /dev/null) &>/dev/null
wait

echo ""
echo "Done. Updated."
echo ""


