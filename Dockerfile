FROM ubuntu:trusty

MAINTAINER Simon Oulevay (Alpha Hydrae) <docker@alphahydrae.com>

RUN apt-get update \
    && apt-get install -q -y wget
RUN wget -O /usr/local/bin/certbot-auto https://dl.eff.org/certbot-auto
RUN chmod 755 /usr/local/bin/certbot-auto
RUN /usr/local/bin/certbot-auto --os-packages-only --non-interactive
