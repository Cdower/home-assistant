FROM alpine
MAINTAINER cdower

RUN apk update \
  && apk add python3 \
  && python3 -m ensurepip \
  && rm -r /usr/lib/python*/ensurepip \
  && pip3 install --upgrade pip setuptools \
  && rm -r /root/.cache \
  && pip3 install homeassistant

VOLUME /root/.homeassistant
CMD hass --open-ui
