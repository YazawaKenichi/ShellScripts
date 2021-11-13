#!/bin/bash

echo -n "FILENAME:"
read STR

NAME=${STR%.*}

echo $NAME

while true
do
    case "$STR" in
        *.c | *.C)
            echo "gcc $NAME.c -o $NAME.out -lglut -lGL"
            gcc $NAME.c -o $NAME.out -lglut -lGL
            exit
            ;;
        *.cpp | *.Cpp | *.CPP)
            echo "g++ $NAME.cpp -o $NAME.out -lglut -lGL"
            g++ $NAME.cpp -o $NAME.out -lglut -lGL
            exit
            ;;
        *)
            echo "undefined..."
            exit
            ;;
    esac
done

# Bibliography
# https://atmarkit.itmedia.co.jp/ait/articles/1705/26/news013.html  // echo オプション
# https://atmarkit.itmedia.co.jp/ait/articles/1811/21/news009.html  // case による条件分岐
# https://qiita.com/tamurashingo@github/items/54b25acc93e37580989d  // while によるループ
# https://cloudpack.media/19739 // パスを格納した変数からファイル名（拡張子なし）を取り出す方法と拡張子のみを取り出す方法







