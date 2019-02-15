set PACKNAME=cryogenic_simulation
set VERSION=0.2
set FILENAME=%PACKNAME%-%VERSION%.zip

twitch_export.exe -p %VERSION% -n %PACKNAME%
move %FILENAME% build/