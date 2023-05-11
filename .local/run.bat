echo off
echo on
set XY_PRJ_NAME=CMD-XyIntegrations-LOCAL-CMD
set set |findstr PAT=C:\LGV\src\XyIntegrations\XyIntegrations
set XY_SCANNER_DIR=C:\LGV\src\XyIntegrations\test_cmd\scanner


call %XY_SCANNER_DIR%\xygeni.cmd scan -n %XY_PRJ_NAME% -d %XY_SRC_DIR% -e **/scanner/**

echo on
rmdir /S /Q logs  