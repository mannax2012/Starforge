#!/bin/bash

cd ~/workspace/mtgserver
git submodule update --init --recursive
git pull --recurse-submodules

cd ~/workspace/mtgserver/MMOCoreORB
make -j8

cd ~/workspace/mtgserver/MMOCoreORB/bin
  ./core3
