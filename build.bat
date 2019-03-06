set PACKNAME=cryogenic_simulation
set VERSION=0.3.1
set FILENAME=%PACKNAME%-%VERSION%.zip
set BUILD_JSON=client-build.json

twitch_export.exe -p %VERSION% -n %PACKNAME% -c %BUILD_JSON%
move %FILENAME% build/