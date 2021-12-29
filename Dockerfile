FROM kuyanov/texlive:latest

WORKDIR /CV

ENTRYPOINT [ "bash", "-c", "pdflatex -interaction=nonstopmode -output-directory=resume resume/resume.tex" ]

