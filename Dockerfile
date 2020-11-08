FROM alpine:latest

RUN mkdir /molecule
WORKDIR /molecule

# docker setup
RUN apk add --no-cache docker openrc
RUN rc-update add docker boot

# molecule setup
RUN apk add --no-cache py3-pip gcc python3-dev musl-dev libffi-dev openssl-dev make

RUN pip install molecule docker molecule-docker ansible