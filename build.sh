#!/bin/bash

cd src
nasm autorun.asm -o ../bin/autorun.bin -l ../bin/autorun-debug.txt
