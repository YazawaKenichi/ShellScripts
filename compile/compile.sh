#!/bin/bash
if [ -n "$1" ]; then
    NAME=${1%.*}    # 拡張子なしファイル名を抽出する。

    echo "rm -rf $NAME.out"
    rm -rf $NAME.out

    while true
    do
        case "$1" in
            *.c | *.C)
                echo "gcc $NAME.c -o $NAME.out -lglut -lGL -lm $2 $3 $4 $5"
                gcc $NAME.c -o $NAME.out -lglut -lGL -lm $2 $3 $4 $5
                echo ".$NAME.out"
                ./$NAME.out
                echo "rm -rf $NAME.out"
                rm -rf $NAME.out
                exit
                ;;
            *.cpp | *.Cpp | *.CPP)
                echo "g++ $NAME.cpp -o $NAME.out -lglut -lGL -lm $2 $3 $4 $5"
                g++ $NAME.cpp -o $NAME.out -lglut -lGL -lm $2 $3 $4 $5
                echo ".$NAME.out"
                ./$NAME.out
                echo "rm -rf $NAME.out"
                rm -rf $NAME.out
                exit
                ;;
            *)
                echo "undefined..."
                exit
                ;;
        esac
    done
else
    echo -n "FILENAME:"
    read STR

    NAME=${STR%.*}

    echo $NAME

    while true
    do
        case "$STR" in
            *.c | *.C)
                echo "gcc $NAME.c -o $NAME.out -lglut -lGL -lm"
                gcc $NAME.c -o $NAME.out -lglut -lGL -lm
                echo ".$NAME.out"
                ./$NAME.out
                echo "rm -rf $NAME.out"
                rm -rf $NAME.out
                exit
                ;;
            *.cpp | *.Cpp | *.CPP)
                echo "g++ $NAME.cpp -o $NAME.out -lglut -lGL -lm"
                g++ $NAME.cpp -o $NAME.out -lglut -lGL -lm
                echo ".$NAME.out"
                ./$NAME.out
                echo "rm -rf $NAME.out"
                rm -rf $NAME.out
                exit
                ;;
            *)
                echo "undefined..."
                exit
                ;;
        esac
    done
fi



# Bibliography
# https://atmarkit.itmedia.co.jp/ait/articles/1705/26/news013.html  // echo オプション
# https://atmarkit.itmedia.co.jp/ait/articles/1811/21/news009.html  // case による条件分岐
# https://qiita.com/tamurashingo@github/items/54b25acc93e37580989d  // while によるループ
# https://cloudpack.media/19739 // パスを格納した変数からファイル名（拡張子なし）を取り出す方法と拡張子のみを取り出す方法
# https://eng-entrance.com/linux-shellscript-if // 条件分岐のしかた
# https://hacknote.jp/archives/32292/   // 変数の空文字判定の方法






