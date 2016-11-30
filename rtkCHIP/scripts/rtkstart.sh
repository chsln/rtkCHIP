#!/bin/sh
# rtkrcv startup script

#./nl507raw.pl

#stty -F /dev/ttyAMA0 115200
socat -u pty,link=/dev/virtualcom0,raw /dev/rfcomm0,raw &
socat -U pty,link=/dev/virtualcom1,raw /dev/rfcomm0,raw &
sleep 5

echo statup script ok
