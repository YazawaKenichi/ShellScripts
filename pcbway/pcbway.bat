rem reRo Wiki / How-to-buy / PCBWay rename is Troublesome

@echo off
setlocal

set /p STR="NEWNAME:"

fsutil file SetCaseSensitiveInfo ./ enable

echo ./*.drl -> %STR%.TXT
move *.drl %STR%.TXT
echo ./*.gbl -> %STR%.GBL
move *.gbl %STR%.GBL
echo ./*.gbs -> %STR%.GBS
move *.gbs %STR%.GBS
echo ./*.gbo -> %STR%.GBO
move *.gbo %STR%.GBO
echo ./*.gm1 -> %STR%.GKO
move *.gm1 %STR%.GKO
echo ./*.gtl -> %STR%.GTL
move *.gtl %STR%.GTL
echo ./*.gts -> %STR%.GTS
move *.gts %STR%.GTS
echo ./*.gto -> %STR%.GTO
move *.gto %STR%.GTO

del *.drl *.gbl *.gbs *.gbo *.gm1 *.gtl *.gts *.gto

fsutil file SetCaseSensitiveInfo ./ disable

endlocal

rem Bibliography
rem https://qiita.com/kshibamo/items/9368b0b2a4a2f40b61f1
rem https://qiita.com/sta/items/8cab80fe74b8dcfa5336
