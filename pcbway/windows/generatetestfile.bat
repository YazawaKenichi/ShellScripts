rem Generate Simulationg PCB Manufacturing Files

@echo off
setlocal

set /p STR="TESTNAME:"

copy nul %STR%1.drl
rem echo file "%STR%1.drl" is Generated
copy nul %STR%2.gbl
rem echo file "%STR%2.gbl" is Generated
copy nul %STR%3.gbs
rem echo file "%STR%3.gbs" is Generated
copy nul %STR%4.gbo
rem echo file "%STR%4.gbo" is Generated
copy nul %STR%5.gm1
rem echo file "%STR%5.gm1" is Generated
copy nul %STR%6.gtl
rem echo file "%STR%6.gtl" is Generated
copy nul %STR%7.gts
rem echo file "%STR%7.gts" is Generated
copy nul %STR%8.gto
rem echo file "%STR%8.gto" is Generated

endlocal

rem Bibliography
rem https://www.softel.co.jp/blogs/tech/archives/4596
