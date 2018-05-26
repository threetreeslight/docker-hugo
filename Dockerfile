FROM alpine:latest
LABEL maintainer "threetreeslight"
LABEL Description="hugo docker image" Vendor="threetreeslight" Version="0.1"

ENV HUGO_VERSION 0.40.1

RUN apk update \
  && apk upgrade \
  && apk add --no-cache ca-certificates curl \
  && update-ca-certificates \
  && cd /tmp \
  && curl -L https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -o ./hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
  && tar xvzf ./hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
  && mv /tmp/hugo /usr/local/bin \
  && rm -rf /var/cache/apk/* \
  && rm -rf /tmp/* /var/tmp/*

EXPOSE 1313

VOLUME /site
WORKDIR /site

CMD ["hugo"]
