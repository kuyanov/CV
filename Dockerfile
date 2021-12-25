FROM ubuntu:20.04
# on ubuntu 18.04 there is an error "Font fa5brands0 at 600 not found"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install --yes --no-install-recommends \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    texlive-base \
    texlive-lang-cyrillic \
    cm-super

COPY ./entrypoint.sh /workdir/entrypoint.sh
WORKDIR /workdir

ENTRYPOINT [ "bash", "entrypoint.sh" ]

