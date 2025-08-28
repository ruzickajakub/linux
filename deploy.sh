#!/bin/sh

sudo make -j32 || exit
sudo make modules_install -j32
make headers_install -j32

sudo rm /boot/initrd.img-6.11.0+ /boot/initrd.img
sudo make install
