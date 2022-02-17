FROM kuyanov/texlive:latest

ARG target=common
ENV target $target

WORKDIR /cv

ENTRYPOINT [ "bash", "-c", "pdflatex -interaction=nonstopmode -output-directory=$target $target/cv-$target.tex" ]

