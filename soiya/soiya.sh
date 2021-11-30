#!/bin/bash

# THE NOM FACE の AA
THENOMFACE () {
    echo -e "
           ⬛⬛⬛⬛⬛⬛⬛  ⬛         ⬛  ⬛⬛⬛⬛⬛⬛
                 ⬛        ⬛         ⬛  ⬛
                 ⬛        ⬛         ⬛  ⬛
                 ⬛        ⬛         ⬛  ⬛
                 ⬛        ⬛⬛⬛⬛⬛⬛   ⬛⬛⬛⬛⬛
                 ⬛        ⬛         ⬛  ⬛
                 ⬛        ⬛         ⬛  ⬛
                 ⬛        ⬛         ⬛  ⬛
                 ⬛        ⬛         ⬛  ⬛⬛⬛⬛⬛⬛

            ⬛⬛    ⬛     ⬛⬛⬛⬛    ⬛⬛       ⬛⬛
            ⬛⬛    ⬛   ⬛⬛   ⬛⬛   ⬛⬛       ⬛⬛
            ⬛ ⬛   ⬛  ⬛⬛     ⬛⬛  ⬛⬛       ⬛⬛
            ⬛  ⬛  ⬛  ⬛         ⬛  ⬛ ⬛    ⬛  ⬛
            ⬛  ⬛  ⬛  ⬛         ⬛  ⬛  ⬛  ⬛   ⬛
            ⬛   ⬛ ⬛  ⬛         ⬛  ⬛  ⬛  ⬛   ⬛
            ⬛    ⬛⬛  ⬛⬛     ⬛⬛  ⬛  ⬛⬛⬛   ⬛
            ⬛    ⬛⬛   ⬛⬛   ⬛⬛   ⬛   ⬛⬛    ⬛
            ⬛      ⬛     ⬛⬛⬛⬛    ⬛    ⬛     ⬛

                   ⬛
 ⬛⬛⬛⬛⬛⬛     ⬛⬛       ⬛⬛⬛⬛⬛   ⬛⬛⬛⬛⬛⬛
 ⬛              ⬛  ⬛     ⬛⬛      ⬛  ⬛
 ⬛             ⬛    ⬛    ⬛            ⬛
 ⬛            ⬛      ⬛   ⬛            ⬛
 ⬛⬛⬛⬛⬛   ⬛        ⬛  ⬛            ⬛⬛⬛⬛⬛
 ⬛           ⬛⬛⬛⬛⬛⬛  ⬛            ⬛
 ⬛           ⬛        ⬛  ⬛            ⬛
 ⬛           ⬛        ⬛  ⬛⬛      ⬛  ⬛
 ⬛           ⬛        ⬛   ⬛⬛⬛⬛⬛   ⬛⬛⬛⬛⬛⬛
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
        "" | *)
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

