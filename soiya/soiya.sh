#!/bin/bash

# THE NOM FACE の AA
THENOMFACE () {
    echo -e "
                                MMMMMMMMMMMMMMM[ (MMM]       MMM#   .MMMMMMMMMMMMMM~                                 .             
                                HMMMMMMMMMMMMMM\ (MMM]       MMM#   .MMMMMMMMMMMMMM~                      ...+++++J-.dMNl..           
                                     .MMM@       (MMM]       MMM#   .MMM@                             .JNMMMMMMMMMMMMMMMMNgdN,            
                                     .MMM@       (MMM]       MMM#   .MMM@                         ..dMMMMMMMMMMMMMMMMMMMMMMMMNa.    
                                     .MMM@       (MMMMMMMMMMMMMM#   .MMMMMMMMMMMMM[       ...., .&MMMMMMMMMMMMMMMMMMMMMMMMMMMMMNm.   
                                     .MMM@       (MMMMMMMMMMMMMM#   .MMMMMMMMMMMMM\     .MMMMBNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm.      
                                     .MMM@       (MMM]       MMM#   .MMM@               .MMF.MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN,   
                                     .MMM@       (MMM]       MMM#   .MMM@               .MM(MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN;
                                     .MMM@       (MMM]       MMM#   .MMMNJ(((((((((,    dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMp    
                                     .MMM@       (MMM]       MMM#   .MMMMMMMMMMMMMM]   .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM_
                                                                                       (MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM!    
                                                 ......                               .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM!
                       .MMMNe      -MMM~     ..NMMMMMMMMNJ      JMMMMMb      dMMMMM}  .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM[
                       .MMMMMp     (MMM~    .MMMMB\"77TWMMMN&    JMMMMMN,    .MMMMMM}  ,MMMMMMMMMM#B\"=??~.MMMMMMMMMMMMMMMMMMMMMMMMMMMMM#    
                       .MMMMMMb.   (MMM~   (MMM@       .WMMM[   JMMMMMMb    dMMMMMM}  ,MMMMMMMMMF  ...MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM#
                       .MMMMMMMN.  (MMM~  .MMM#         .MMMN.  JMMMvMMN<  .MMFJMMM}   ,MMMMM^\"TMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM=
                       .MMMb(MMMN, (MMM~  (MMMP          dMMM}  JMMM:dMMR  dMM\JMMM}   ,TMMMF   ,WM\"\"\"\"THMMMMMMMMMMMMMMMMMMMMMMMMMMM\"!
                       .MMMb .MMMN,(MMM~  (MMMP          dMMM}  JMMM:.MMM<.MM# JMMM}   MMDdM\    ..JdNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN
                       .MMMb   WMMMgMMM~  ,MMMN.        .MMMM   JMMN! dMMNdMM% (MMM}    D.gM:   .  .dMMMMMMMM# .MMMMMMMMMMMMMMMMMMMMp
                       .MMMb    TMMMMMM~   ZMMMm.      .dMMMD   JMMN! ,MMMMM#  (MMN}     ,M#        \"TM\"WMMMF    MMMMMMMMMMMMMMMMMMMN,   
                       .MMMb     ?MMMMM~    ?MMMMNJ..(gMMMM=    JMMN~  dMMMMt  (MMM}     (M~           .MMMF     jMMMMMMMMMMMMMMMMMMMm
                       .MMMb      /MMMM~      TMMMMMMMMM#\"      JMMN~  (MMM#   (MMM}                ..gMMM}       MMMMMMMMMMMMMMMMMMMF
                                                                                                  .JMMMMM#       .MMMMMMMMMMMMMMMMMMY
                                                                                                 .MMMMMMMNJ(JJJdMMMMMMMMMMMMMMMM#
              .ggggggggggggm        (gggx           ..+gMMMNaa,     .gggggggggggggg.            .MMMMMMMM@7??YMMMMMMMMMMMMMMMMMM#        
              (MMMMMMMMMMMM#       .MMMMN,        .JMMMMMMMMMMMN,   .MMMMMMMMMMMMMM~            .MMMMMMMo...-(JMMMMMMMMMMMMMMMMM#     
              (MMM]               .MMMMMMN.      .dMMM=     (MMMM,  .MMM@                          7MMMMMMM\"TT9T@\"TMMMMMMMMMMMM#    
              (MMM]               dMM@(MMMb      dMMM\       .!     .MMM@                           (MMMMM#!    .. dMMMMMMMMMMMN.
              (MMMm.......,      (MM#: JMMM[     MMM#               .MMMNNgNNNNNNN;                 JMMM_ _7(n..(x.MMMMMMMMMMMM#      
              (MMMMMMMMMMMb     .MMMF   dMMN,   .MMMN               .MMMMMMMMMMMMM%                  UMM,   .m....(MMMMMMMMMMM@     
              (MMMF            .dMMMgggggMMMN.   MMMM.       .,     .MMM@                                  (MMMMMMMMMMMMMMMMM           
              (MMM]            JMMMMMMMMMMMMMb   ?MMMb.      jMMN\  .MMM@                                   .TMMMMMMMMMMMMM=               
              (MMM]           .MMMF       WMMM[   ?MMMNa...(MMMMF   .MMMN..........,                        .+MMMMMMMMMM9!            
              (MMM]          .MMM#        .MMMN,    TMMMMMMMMMB^    .MMMMMMMMMMMMMM]                       (\"MMMMMMMM9!                 
              .777           ?777!         (777^       _?77!         ?7777777777777                             !!                        
"
}

SOIYA () {
    echo -e "
"
}

HELP () {
    echo -e "
    ソイヤコマンド 有効なオプション
    -a  ASCII Art SOIYA!
    -e  Emotional SOIYA!
    -n  THE NOM FACE
"
}

while getopts aen optKey >& /dev/null
do
    case "$optKey" in
        a)
#            mplayer ~/Documents/GitHub/ShellScripts/soiya/media/SOIYA\!.mp3 # >& /dev/null &
            mplayer /ybin/media/soiya.mp3 >& /dev/null &
#            SOIYA
            ;;
        e)
            while true
            do
                echo -n -e "\r\033[31m\033[1m SOIYA! L(‘ω’)┘ \033[0m"
                sleep 0.5
                echo -n -e "\r\033[34m\033[1m SOIYA! └(‘ω’)」 \033[0m"
                sleep 0.5
            done
            ;;
        n)
            THENOMFACE
            ;;
        "")
            mplayer /ybin/media/soiya.mp3 >& /dev/null &
            THENOMFACE
            ;;
        *)
            HELP
            ;;
    esac
done

# https://qiita.com/blueskyarea/items/f07466393ccb5efb3dc5	// sleep コマンド
# https://www.mm2d.net/main/prog/c/console-02.html	// ANSI エスケープコード
# https://ktpcschool.com/imageToAscii/	// アスキーアート作成
# https://qiita.com/wakaba130/items/3951e4a4cc35f268f452    // ターミナルから音楽ファイルを出力する方法
# https://qiita.com/Esfahan/items/e88bb806c7ca1dc8b758  // シェルスクリプトオプション付き処理
# https://stackoverflow.com/questions/17575392/how-do-i-test-for-an-empty-string-in-a-bash-case-statement/17575693  // case において変数の中身が Empty の時

