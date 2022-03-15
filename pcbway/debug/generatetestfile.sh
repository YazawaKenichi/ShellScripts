#!/bin/bash

echo -n TESTNAME:
read STR

touch $STR.drl
echo file \"$STR.drl\" is Generated
touch $STR-B_Cu.gbl
echo file \"$STR-B_Cu.gbl\" is Generated
touch $STR-B_Mask.gbs
echo file \"$STR-B_Mask.gbs\" is Generated
touch $STR-B_SilkS.gbo
echo file \"$STR-B_SilkS.gbo\" is Generated
touch $STR-Edge_Cuts.gm1
echo file \"$STR-Edge_Cuts.gm1\" is Generated
touch $STR-F_Cu.gtl
echo file \"$STR-F_Cu.gtl\" is Generated
touch $STR-F_Mask.gts
echo file \"$STR-F_Mask.gts\" is Generated
touch $STR-F_SilkS.gto
echo file \"$STR-F_SilkS.gto\" is Generated

