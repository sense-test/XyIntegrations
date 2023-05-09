echo off
set XY_PRJ_NAME=CMD-XyIntegrations-LOCAL-CMD
set XY_SRC_DIR=.
set XY_SCANNER_DIR=C:\LGV\src\XyIntegrations\test_cmd\scanner


%XY_SCANNER_DIR%\xygeni codetamper -n %XY_PRJ_NAME% -d %XY_SRC_DIR%
rmdir /S /Q logs  