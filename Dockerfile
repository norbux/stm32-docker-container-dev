FROM ubuntu:latest

RUN apt update && \
	apt install -y build-essential && \
	apt install -y libusb-1.0-0-dev && \
	apt install -y usbutils && \
	apt install -y gcc-arm-none-eabi && \
	apt install -y stlink-tools && \
	apt install -y python2-minimal python2 dh-python 2to3 python-is-python3 && \
	apt install -y make && \
	apt install -y git && \
	git clone https://github.com/libopencm3/libopencm3-template && \
	cd libopencm3-template && \
	git submodule init && \
	git submodule update && \
	cd libopencm3 && \
	make

ENTRYPOINT [ "bash" ]