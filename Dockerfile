FROM alpine:3.17

LABEL maintainer="docker@alphahydrae.com"

RUN apk add --no-cache bash certbot

CMD [ "/bin/bash" ]
