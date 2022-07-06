@echo off
setlocal ENABLEDELAYEDEXPANSION

if exist "%~1\*" (call :playDir %1) else (call :playFile %1)
goto :eof

:playDir
echo dir
set /A n = 0
for /r "%~1\" %%G in (*.mp4 *.mkv *.avi *.mov *.mp3) do (
   echo %%G
   set /A n += 1
   set "file[!n!]=%%G"

)
echo %n%
set /a idx=%random% %% !n! + 1
echo !file[%idx%]!
YOUR_MPV_LOCATION "!file[%idx%]!"
goto :eof

:playFile
echo file
YOUR_MPV_LOCATION "%~1"
goto :eof