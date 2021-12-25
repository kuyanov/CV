FROM kuyanov/texlive:latest

COPY ./entrypoint.sh /workdir/entrypoint.sh
WORKDIR /workdir

ENTRYPOINT [ "bash", "entrypoint.sh" ]

