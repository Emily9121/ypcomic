@echo off
echo YayPonies CBZ-Comics toolkit
echo .
set /p cbzfilename= Set name for the CBZ (WITH THE EXTENTION) and press ENTER :
cd work
..\7za\7za.exe a -tzip %cbzfilename% *.jpg
cd ..
echo .
echo If there is no error, Press enter to exit YayPonies CBZ-Comics toolkit!
pause