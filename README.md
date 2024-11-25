# BareMetal Autorun

A simple autorun app for the BareMetal kernel.


## Prerequisites

The scripts in this repo depend on a Debian-based Linux system like [Ubuntu](https://www.ubuntu.com/download/desktop) or [Elementary](https://elementary.io). macOS is also supported if you are using [Homebrew](https://brew.sh).

- [NASM](https://nasm.us) - Assembly compiler to build the loader and kernel, as well as the apps written in Assembly.

In Linux this can be completed with the following command:

	sudo apt install nasm

## Building

	./setup.sh
	./build.sh

## Installing

Copy `bin/autorun.bin` to `BareMetal-OS/sys`

In `BareMetal-OS`:

	./baremetal.sh build autorun.bin
	./baremetal.sh install
	./baremetal.sh run

Check `sys/serial.log` to see the output

// EOF
