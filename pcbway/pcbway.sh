#!/bin/bash

echo -n ProjectName:
read STR

echo $STR.drl -\> $STR.TXT
mv $STR.drl $STR.TXT
echo $STR-B_Cu.gbl -\> $STR.GBL
mv $STR-B_Cu.gbl $STR.GBL
echo $STR-B_Mask.gbs -\> $STR.GBS
mv $STR-B_Mask.gbs $STR.GBS
echo $STR-B_SilkS.gbo -\> $STR.GBO
mv $STR-B_SilkS.gbo $STR.GBO
echo $STR-Edge_Cuts.gm1 -\> $STR.GKO
mv $STR-Edge_Cuts.gm1 $STR.GKO
echo $STR-F_Cu.gtl -\> $STR.GTL
mv $STR-F_Cu.gtl $STR.GTL
echo $STR-F_Mask.gts -\> $STR.GTS
mv $STR-F_Mask.gts $STR.GTS
echo $STR-F_SilkS.gto -\> $STR.GTO
mv $STR-F_SilkS.gto $STR.GTO

# Bibliography
# https://eng-entrance.com/linux-shellscript-keyboard
# https://qiita.com/Lambda34/items/7d24ebe6f7bde5bedddc
# https://qiita.com/amaranthine/items/58115d268d2cb50ae5d2
