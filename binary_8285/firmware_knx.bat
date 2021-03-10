h:
echo off

set ipaddress=192.168.2.89
set versione=50631
set folder=H:\Arduino\ESP8266\domotic\scsknxgate_v5\binary_8285
echo ________________________KNX______________________________

echo ipaddress %ipaddress%
echo version %versione%
if EXIST %folder%\knxgate_v%versione%.ino.generic.bin GOTO AVANTI
echo FILE NOT EXISTS
GOTO FINE

:AVANTI
pause
cd \Arduino\ESP8266\espota
espota.py -i %ipaddress% -f %folder%\knxgate_v%versione%.ino.generic.bin -r

:FINE
pause