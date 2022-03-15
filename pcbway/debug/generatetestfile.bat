rem Generate Simulationg PCB Manufacturing Files

@echo off
setlocal

set /p STR="TestProjectName:"

copy nul %STR%.drl
rem echo file "%STR%.drl" is Generated
copy nul %STR%-B_Cu.gbl
rem echo file "%STR%-B_Cu.gbl" is Generated
copy nul %STR%-B_Mask.gbs
rem echo file "%STR%-B_Mask.gbs" is Generated
copy nul %STR%-B_SilkS.gbo
rem echo file "%STR%-B_SilkS.gbo" is Generated
copy nul %STR%-Edge_Cuts.gm1
rem echo file "%STR%-Edge_Cuts.gm1" is Generated
copy nul %STR%-F_Cu.gtl
rem echo file "%STR%-B_Cu.gtl" is Generated
copy nul %STR%-F_Mask.gts
rem echo file "%STR%-B_Mask.gts" is Generated
copy nul %STR%-F_SilkS.gto
rem echo file "%STR%-B_SilkS.gto" is Generated

endlocal

rem Bibliography
rem https://www.softel.co.jp/blogs/tech/archives/4596
