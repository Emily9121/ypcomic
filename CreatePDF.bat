@echo off
echo YayPonies PDF-Comics toolkit (Step 1 - Creating)
echo .
set /p filelist= List filenames (See "Filename list.txt") and press ENTER : 
set /p pdffilename= Set name for the PDF and press ENTER : 
echo Please wait, this step can take time!
imagemagick\convert.exe %filelist% -format pdfa -compress jpeg2000 -size 1988x3056 work\%pdffilename%
echo .
echo If there is no error, Press enter to edit metadata !
pause
cls
echo YayPonies PDF-Comics toolkit (Step 2 - Tagging)
echo .
echo Don't forget to put Title/Authors between " " 
echo Example : 
echo Title : "My Little Pony, Friendship is Magic #23" - is CORRECT
echo Title : My Little Pony, Friendship is Magic #23 - is INcorrect!
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
set /p Title= Title : 
set /p Artist= Authors : 
metadataedit\pdfedit.exe work\%pdffilename% -T %Title% -A %Artist% -P "YayPonies Comic Toolkit"
echo .
echo If there is no error, Press enter to exit YayPonies PDF-Comics toolkit!
pause