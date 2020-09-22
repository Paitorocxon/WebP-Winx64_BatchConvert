@echo off
:main
color 0A
Set /p Q=Quality in percent (80 is default):
color 0C
for /R "drop images here/" %%f in (*.*) do (
    "libwebp-1.1.0-windows-x64/bin/cwebp.exe" -q %Q% "%%~f" -o "converted/%%~nf.webp"
)
echo DONE!
pause