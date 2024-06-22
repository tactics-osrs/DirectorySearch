@echo off
:loop
set /p "exeName=Enter the name of the program you want to run (without the .exe extension) or type 'exit' to quit: "
if /I "%exeName%"=="exit" goto :end

:: Append .exe to the program name
set "executableName=%exeName%.exe"

:: Long wait message warning
echo Scanning D: Drive. Please be advised, this process may take awhile...

:: Search the D: drive for the .exe file
for /R D:\ %%G in ("%executableName%") do (
    if exist "%%G" (
        echo Attempting to run %%G...
        start "" "%%G"
        if errorlevel 1 (
            echo Failed to run %%G.
			echo.
			echo Written by Tactics.
        ) else (
            echo Successfully ran %%G.
			echo.
			echo Written by Tactics.
        )
        pause
        cls
        goto :loop
    )
)

:: If not found on D:, search the C: drive for the .exe file
echo Scanning C: Drive. Please be advised, this process may take awhile...
for /R C:\ %%G in ("%executableName%") do (
    if exist "%%G" (
        echo Attempting to run %%G...
        start "" "%%G"
        if errorlevel 1 (
            echo Failed to run %%G.
			echo.
			echo Written by Tactics.
        ) else (
            echo Successfully ran %%G.
			echo.
			echo Written by Tactics.
        )
        pause
        cls
        goto :loop
    )
)

echo The program '%executableName%' does not exist on the D: or C: drive.
echo
echo Written by Tactics.
pause
cls
goto :loop

:end
echo Exiting script. The window will close in 10 seconds.
echo
echo Written by Tactics.
timeout /t 10 /nobreak >nul
exit
