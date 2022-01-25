FROM golang:1.17.6-bullseye

ENV VERSION=0.9.3 \
  OS=Linux \
  ARCH=x86_64

RUN curl -L https://github.com/google/ko/releases/download/v${VERSION}/ko_${VERSION}_${OS}_${ARCH}.tar.gz | tar xzf - ko \
  && chmod +x ./ko \
  && mv ko /usr/local/bin/ko