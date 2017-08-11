@echo off
set cwc=%0
FOR /L %%A IN (1,1,5) DO (
	cd.. && if exist cwc.exe                    set cwc=cwc.exe
)
echo  %cwc%
pause