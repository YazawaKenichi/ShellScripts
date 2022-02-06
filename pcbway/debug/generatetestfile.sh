#!/bin/bash

echo -n TESTNAME:
read STR

echo file \"$STR\1.drl\" is Generated
touch $STR\1.drl
echo file \"$STR\2.gbl\" is Generated
touch $STR\2.gbl
echo file \"$STR\3.gbs\" is Generated
touch $STR\3.gbs
echo file \"$STR\4.gbo\" is Generated
touch $STR\4.gbo
echo file \"$STR\5.gm1\" is Generated
touch $STR\5.gm1
echo file \"$STR\6.gtl\" is Generated
touch $STR\6.gtl
echo file \"$STR\7.gts\" is Generated
touch $STR\7.gts
echo file \"$STR\8.gto\" is Generated
touch $STR\8.gto

