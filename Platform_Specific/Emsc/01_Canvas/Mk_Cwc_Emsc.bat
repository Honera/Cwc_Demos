@echo off
 Rem /------- Find Cwc (if not set in your Environement variables) ---------/
set cwc=cwc
if exist Cwc\cwc.exe                set cwc=Cwc\cwc.exe
if exist ..\..\..\..\..\..\cwc.exe  set cwc=..\..\..\..\..\..\cwc.exe
if exist ..\..\..\..\..\cwc.exe     set cwc=..\..\..\..\..\cwc.exe
if exist ..\..\..\..\cwc.exe        set cwc=..\..\..\..\cwc.exe
if exist ..\..\..\cwc.exe           set cwc=..\..\..\cwc.exe
if exist ..\..\cwc.exe              set cwc=..\..\cwc.exe
if exist ..\cwc.exe                 set cwc=..\cwc.exe
if exist cwc.exe                    set cwc=cwc.exe
 Rem /--------------------------/

 Rem  /--  Run Cwc.exe, with this batch file folder as working directory (% -wDir %~dp0) and pass all is arguments (%*)    --/
 Rem  /--  All arguments lines finish with a pipe ("|"^) which mean a parallel actions, or (">"^) for sequentials actions  --/
 
 Rem /-------------------Start----------------------/
 %cwc% -wDir %~dp0 %* "|"^
 -wPlatform Web_Emsc  "|"^
 -I. -c src/ -o obj/(wPlatform)/ -wTo out/(wPlatform)/Canvas.html -O2 -std=c++11 "|"^
 
 Rem /--------------------End----------------------/
Exit

