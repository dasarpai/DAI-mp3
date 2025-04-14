@echo off
setlocal enabledelayedexpansion

:: Create output folder (optional)
mkdir mp3_output

:: List of files to convert
set files=^
001-NirvaanShatkam2.m4a ^
001-NirvanShatakam3.m4a ^
002-BhayaPragatKrupala.m4a ^
003-Namamish.m4a ^
004-UpanishadicPrarthana.m4a ^
017-MaheshwaraSutrani.m4a ^
058-HanumanChalisa.m4a ^
059-HanumanBaan.m4a ^
071-Rudram-19-05-21.m4a ^
O002-NaamRaam.m4a ^
O006-Jai-ShriRam-JaiRam-JaiJaiRam.m4a ^
O007-Janaki-SakiKrupa.m4a ^
O008-Ram-Ko-danda-Rama.m4a

:: Convert each file
for %%f in (%files%) do (
    echo Converting: %%f
    ffmpeg -i "%%f" -codec:a libmp3lame -qscale:a 2 "mp3_output/%%~nf.mp3"
)

echo Done!
pause
