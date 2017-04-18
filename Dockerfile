FROM alpine
MAINTAINER cdower

RUN apk update \
  && apk add python3 py-pip python3-dev \
  && python3 -m ensurepip \
  && rm -r /usr/lib/python*/ensurepip \
  && pip install --upgrade pip setuptools \
  && pip install --upgrade virtualenv \
  && rm -r /root/.cache \
  && pip install homeassistant

VOLUME /root/.homeassistant
CMD hass --open-ui
