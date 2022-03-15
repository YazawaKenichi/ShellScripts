rem reRo Wiki / How-to-buy / PCBWay rename is Troublesome

@echo off
setlocal

set /p STR="ProjectName:"

fsutil file SetCaseSensitiveInfo ./ enable

echo %STR%.drl -> %STR%.TXT
move %STR%.drl %STR%.TXT
echo %STR%-B_Cu.gbl -> %STR%.GBL
move %STR%-B_Cu.gbl %STR%.GBL
echo %STR%-B_Mask.gbs -> %STR%.GBS
move %STR%-B_Mask.gbs %STR%.GBS
echo %STR%-B_SilkS.gbo -> %STR%.GBO
move %STR%-B_SilkS.gbo %STR%.GBO
echo %STR%-Edge_Cuts.gm1 -> %STR%.GKO
move %STR%-Edge_Cuts.gm1.gm1 %STR%.GKO
echo %STR%-F_Cu.gtl -> %STR%.GTL
move %STR%-F_Cu.gtl %STR%.GTL
echo %STR%-F_Mask.gts -> %STR%.GTS
move %STR%-F_Mask.gts %STR%.GTS
echo %STR%-F_SilkS.gto -> %STR%.GTO
move %STR%-F_SilkS.gto %STR%.GTO

rem del *.drl *.gbl *.gbs *.gbo *.gm1 *.gtl *.gts *.gto

fsutil file SetCaseSensitiveInfo ./ disable

endlocal

rem Bibliography
rem https://qiita.com/kshibamo/items/9368b0b2a4a2f40b61f1
rem https://qiita.com/sta/items/8cab80fe74b8dcfa5336
