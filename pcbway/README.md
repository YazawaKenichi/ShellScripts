## 例の面倒くさいリネームを自動で行ってくれるスクリプト<br>

Windows で kicad を使っている人は [こっち](https://github.com/YazawaKenichi/ShellScripts/blob/main/pcbway/windows)<br>
Linux で kicad を使っている人は [こっち](https://github.com/YazawaKenichi/ShellScripts/blob/main/pcbway/linux)<br>

### ファイルの説明
pcbway.bat pcbway.sh<br>
PCBway で注文するときに、<br>
ハイフン以下拡張子以上を消す -> 拡張子を大文字にする -> 一部のファイルだけ拡張子を変更する<br>
というクソみたいに面倒な改名を自動でやってくれるスクリプトです。<br>
PCBway.bat（バッチファイル） は Windows でのみ動かせます。
PCBway.sh（シェルスクリプト） は Linux でのみ動かせます。

Debug 内は pcbway.bat, pcbway.sh の動作を確かめるのに使ったファイルです。<br>
generatetestfile は、自動で製造ファイルを作ってくれます。PCBway で注文するときの手順では必要ありません。<br>
ただ pcbway.bat や pcbway.sh の動作が不安な方はこれで動作テストをすることをお勧めします。<br>


### 使いかた
pcbway.bat
KiCAD で吐き出した gerber ファイルがネットワーク上、あるいは NTFS 以外の場所にある場合は、ローカルの NTFS ボリュームに移します。 <- これめっちゃ大事。詳細は後述。
gerber ファイル（hogehoge.drl とか hogehoge.gbl とか）があるところに pcbway.bat を突っ込みます。
後はダブルクリックしたり、コマンドプロンプトから実行します。（操作結果が残るのでコマンドプロンプトから実行するのがおすすめ。）
```> NEWNAME:``` のところで新しく生成するファイルの名前（拡張子なし）を指定できます。

###### ローカルの NTFS ボリューム
例えば C:\Users\user\Documents\gerber のような、C ドライブ内の user 以下なら確実に大丈夫。<br>
D: とか \\ はダメ。<br>
USB メモリとか、SD カードメモリ内にある Gerber ファイルの改名をしたかったら一旦 C ドライブにコピーしてから改名する必要があるということ。<br>
<!--理由<br>
PCBway の発注フローには、「小文字の拡張子を大文字にしろ」と指示があります。
正直やらなくていいと思うのですが、どうやらそういう文化らしいのでそういうことにしておきましょう。
しかし、Windows は通常、ファイル名の大文字と小文字に区別がありません。
なのでファイル名を変更して無理やり大文字にしても、システムによって小文字に戻される場合もあります。
そこで、「このフォルダでは大文字と小文字を区別してね～」とシステムに教える必要があります。
そのコマンドが ```> fsutil file SetCaseSensitiveInfo ./ disable``` です。
このコマンドの実行対象がローカルの NTFS になっていると、「ダメです。」と怒られます。
-->

pcbway.sh
実行権限を与える必要があります。
```$ chmod +x pcbway.sh```
あとは gerber ファイルと同じ場所にぶち込んで実行するだけです。
```NEWNAME:``` のところで新しく生成するファイルの名前（拡張子なし）を指定できます。
