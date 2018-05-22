# rpi-rtlsdr-base
FROM resin/rpi-raspbian:stretch

MAINTAINER Yao Leilei

RUN apt-get update
RUN apt-get install -y libusb-1.0.0-dev rtl-sdr --no-install-recommends
RUN apt-get clean

RUN echo 'blacklist dvb_usb_rtl28xxu' > /etc/modprobe.d/raspi-blacklist.conf
