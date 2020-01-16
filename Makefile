

all: resume.pdf

resume.pdf: resume.tex awesome-cv.cls resume/education.tex resume/experience.tex resume/honors.tex resume/skills.tex resume/summary.tex
	xelatex resume.tex


