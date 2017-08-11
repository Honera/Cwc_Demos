@echo off
Rem /------- Find Cwc ---------/
set cwc=cwc
if exist ..\..\..\..\..\..\Cwc\cwc.exe  set cwc=..\..\..\..\..\..\Cwc\cwc.exe
if exist ..\..\..\..\..\Cwc\cwc.exe     set cwc=..\..\..\..\..\Cwc\cwc.exe
if exist ..\..\..\..\Cwc\cwc.exe        set cwc=..\..\..\..\Cwc\cwc.exe
if exist ..\..\..\Cwc\cwc.exe           set cwc=..\..\..\Cwc\cwc.exe
if exist ..\..\Cwc\cwc.exe              set cwc=..\..\Cwc\cwc.exe
if exist ..\Cwc\cwc.exe                 set cwc=..\Cwc\cwc.exe
if exist Cwc\cwc.exe                    set cwc=Cwc\cwc.exe
Rem /--------------------------/

Rem /-------------------Start----------------------/


Call %cwc%  "|"^
-wIf_NotExist NzBuild\lib\(wOpt)_(wArch)\Dynamic\NazaraSDK.dll :: Build_NazaraEngine.cwc "|"^
 ">"^
-wCopy NazaraEngine\examples\bin                  bin\examples\FirstScene\(wOpt)_(wArch)\ "|"^
-wCopy NzBuild\lib\(wOpt)_(wArch)\Dynamic\        bin\examples\FirstScene\(wOpt)_(wArch)\ "|"^
-wCopy NazaraEngine\extlibs\lib\common\(wArchPC)  bin\examples\FirstScene\(wOpt)_(wArch)\ "|"^
 ">"^
 @NazaraPrj.args -lNazaraSDK  -lNazaraCore -lNazaraNoise -lNazaraLua -lNazaraPhysics -lNazaraRenderer -lNazaraNetwork -lNazaraUtility -lNazaraAudio -lNazaraGraphics   NazaraEngine\examples\FirstScene\    -o obj\examples\FirstScene\(wOpt)_(wArch)\    -wTo bin\examples\FirstScene\(wOpt)_(wArch)\FirstScene.exe     "|"^

Rem /--------------------End----------------------/
