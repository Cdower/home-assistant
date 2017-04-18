FROM alpine
MAINTAINER cdower

RUN apk update \
  && apk add python3 py3-pip python3-dev \
  && python3 -m ensurepip \
  && rm -r /usr/lib/python*/ensurepip \
  && pip3 install --upgrade pip setuptools \
  && pip3 install --upgrade virtualenv \
  && rm -r /root/.cache \
  && pip3 install homeassistant

VOLUME /root/.homeassistant
CMD hass --open-ui
