FROM ubuntu:bionic

LABEL "name"="Publish k8s.camp"
LABEL "maintainer"="Paul Czarkowski"
LABEL "version"="0.0.1"

LABEL "com.github.actions.name"="Publish k8s.camp"
LABEL "com.github.actions.description"="Publish k8s.camp via gh-pages"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="green"

RUN apt-get update && apt-get install -yqq curl git

RUN curl -sSL \
    https://github.com/gohugoio/hugo/releases/download/v0.56.3/hugo_0.56.3_Linux-64bit.tar.gz | \
    tar xzf - /hugo && \
    chmod +x /hugo

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]