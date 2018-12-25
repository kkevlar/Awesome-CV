
echo "cd /home/kevlar/Awesome-CV" > tempput
echo "put awesome-cv.cls" >> tempput
echo "put resume.tex" >> tempput
echo "put -r resume" >> tempput
cat tempput | sftp kevinkellar.com
rm tempput

