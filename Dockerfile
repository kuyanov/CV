FROM kuyanov/texlive:latest

ARG target=math
ENV target $target

WORKDIR /CV/$target

ENTRYPOINT [ "bash", "-c", "pdflatex -interaction=nonstopmode CV-$target.tex" ]

