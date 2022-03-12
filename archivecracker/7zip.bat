rem Brute Force for 7-zip archive file

@echo off
setlocal

set /p STR="ファイル名（拡張子なし） > "

"C:\Program Files\7-Zip\7z.exe" x "%STR%.7zip"








