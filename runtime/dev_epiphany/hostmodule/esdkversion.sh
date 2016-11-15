#!/bin/sh
# Quick and dirty script to get the right compiler and linker flags. :-)

if e-gcc --version | grep -q "201[56789]\|master"; then
	if [ "x$1" = "xcflags" ]; then
		echo 2015
	else
		echo "-le-hal -le-loader"
	fi
else
	if [ "x$1" = "xcflags" ]; then
		echo 2013
	else
		echo "-le-hal"
	fi
fi
