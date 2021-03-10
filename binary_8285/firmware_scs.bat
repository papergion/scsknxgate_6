h:
echo off

set ipaddress=192.168.2.126
set versione=50634
set folder=H:\Arduino\ESP8266\domotic\scsknxgate_v5\binary_8285

echo ________________________SCS______________________________

echo ipaddress %ipaddress%
echo version %versione%
if EXIST %folder%\scsgate_v%versione%.esp8285.bin GOTO AVANTI
echo FILE NOT EXISTS
GOTO FINE

:AVANTI
pause
cd \Arduino\ESP8266\espota
espota.py -i %ipaddress% -f %folder%\scsgate_v%versione%.esp8285.bin -r

:FINE
pause