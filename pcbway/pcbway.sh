#!/bin/bash

echo -n NEWNAME:
read STR

echo $*.drl -\> $STR.DRL
mv *.drl $STR.TXT
echo $*.gbl -\> $STR.GBL
mv *.gbl $STR.GBL
echo $*.gbs -\> $STR.GBS
mv *.gbs $STR.GBS
echo $*.gbo -\> $STR.GBO
mv *.gbo $STR.GBO
echo $*.gm1 -\> $STR.GKO
mv *.gm1 $STR.GKO
echo $*.gtl -\> $STR.GTL
mv *.gtl $STR.GTL
echo $*.gts -\> $STR.GTS
mv *.gts $STR.GTS
echo $*.gto -\> $STR.GTO
mv *.gto $STR.GTO

# Bibliography
# https://eng-entrance.com/linux-shellscript-keyboard
# https://qiita.com/Lambda34/items/7d24ebe6f7bde5bedddc
# https://qiita.com/amaranthine/items/58115d268d2cb50ae5d2
