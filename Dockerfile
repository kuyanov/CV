FROM kuyanov/texlive:latest

ARG target=math
ENV target $target

WORKDIR /CV

ENTRYPOINT [ "bash", "-c", "pdflatex -interaction=nonstopmode -output-directory=$target $target/CV-$target.tex" ]

