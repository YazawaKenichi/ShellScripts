rem Brute Force for 7-zip archive file

@echo off
setlocal

set /p STR="Please Input filename : "

7z x "%STR%.7z" -o./ password






