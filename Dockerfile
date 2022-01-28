FROM kuyanov/texlive:latest

ARG target=common
ENV target $target

WORKDIR /CV

ENTRYPOINT [ "bash", "-c", "pdflatex -interaction=nonstopmode -output-directory=$target $target/cv-$target.tex" ]

