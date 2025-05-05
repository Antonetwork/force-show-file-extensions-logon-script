@echo off
:: Check the current value of HideFileExt
REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt | find "0x1" > nul

IF %ERRORLEVEL% EQU 0 (
    :: If set to 1 (extensions hidden), change it to 0 (show extensions)
    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f
)

:: Otherwise, do nothing
