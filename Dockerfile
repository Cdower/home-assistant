FROM  homeassistant/home-assistant
MAINTAINER cdower

RUN apt-get update \
  && apt-get install swig libssl-dev python-dev libusb-1.0-0 python-yaml \
  && pip install flask \
  && pip install https://pypi.python.org/packages/source/M/M2Crypto/M2Crypto-0.24.0.tar.gz \
  && pip install firetv[firetv-server]
