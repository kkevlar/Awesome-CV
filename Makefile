

all: resume.pdf

resume.pdf: resume.tex awesome-cv.cls resume/education.tex resume/experience.tex resume/honors.tex resume/skills.tex resume/summary.tex
	/usr/local/texlive/2018/bin/x86_64-linux/xelatex resume.tex


