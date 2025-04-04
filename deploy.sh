#!/bin/bash

sudo rmmod nrf905
make clean
make
make dtb
sudo make modules_install
sudo make dtb_install
sudo depmod -a
sudo modprobe nrf905
dmesg | grep nrf905
