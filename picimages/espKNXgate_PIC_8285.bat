echo off
set PICVER=KNX_85.608
set DR=H:\Microchip Solutions\DOMOTIC\KNX\ESPKNXGATE_V5\BIN

echo - prepara immagine spiffs da file hex di espknxgate in %DR%
echo devi aver compilato la versione %PICVER%
echo __________________________________________KNX________________________________________
pause 
echo cancella vecchia versione
echo S|del "%DR%\bin\*.*"
echo converte HEX in BIN
HEXTUBIN -r 0000 -m EFFF -p FF "%DR%\espknxgate_8285.hex"
move "%DR%\espknxgate_8285.bin" "%DR%\bin\picknxgate.bin"

echo crea version.txt
echo %PICVER%>"%DR%\bin\version.txt"
echo crea immagine spiffs
mkspiffs -c "%DR%\bin" "%DR%\picknxgate.img"
echo copia immagine nella cartella del progetto arduino
copy "%DR%\picknxgate.img" .\PIC%PICVER%.img
copy "%DR%\picknxgate.img" .\
echo ===================================== OK - READY TO LOAD ======================================= 
pause