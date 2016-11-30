# rtkCHIP
CHIP rtklib integration

Using rtklib with a CHIP https://getchip.com/
I find the CHIP to be great with rtklib, it has built in bluetooth (that can be used to connect a phone), wifi and battery charging circuit for just 9$!

At this point the software is working as follow:

start the CHIP, wait for bluetooth connection and start rtklib. The base station data is from an NTRIP caster retrieved from my phone and then sent to the rtkCHIP. The rtkCHIP compute the solution and then sends it back to the phone.

The bluetooth is configured to connect without any security:

edit the bluetooth service to run in legacy mode:

sudo nano /etc/systemd/system/dbus-org.bluez.service
edit the line as follow: ExecStart=/usr/lib/bluetooth/bluetoothd --compat

