FROM debian:stretch

WORKDIR /workspace
VOLUME /workspace

RUN apt-get update && apt-get install -y \
    texlive-full \
    biber \
    make \
    git \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
RUN git clone https://github.com/shiblon/latex-makefile.git /app/latex-makefile
RUN cd /app/latex-makefile && ./build && mv /app/latex-makefile/Makefile /app

WORKDIR /workspace
VOLUME /workspace
ADD run.sh /app

ENTRYPOINT ["/app/run.sh"]
