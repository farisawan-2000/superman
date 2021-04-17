#!/bin/bash

make -C splat
./splat/split.py --rom baserom.z64 superman.yaml --outdir .

