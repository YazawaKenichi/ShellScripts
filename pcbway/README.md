## 例の面倒くさいリネームを自動で行ってくれるスクリプト<br>

Windows で kicad を使っている人は [こっち](https://github.com/YazawaKenichi/ShellScripts/blob/main/pcbway/pcbway.bat)<br>
Linux で kicad を使っている人は [こっち](https://github.com/YazawaKenichi/ShellScripts/blob/main/pcbway/pcbway.sh)<br>

### どんなファイル？
pcbway.bat pcbway.sh<br>
PCBway で注文するときに、<br>
ハイフン以下拡張子以上を消す -> 拡張子を大文字にする -> 一部のファイルだけ拡張子を変更する<br>
というクソみたいに面倒な改名を自動でやってくれるスクリプトです。<br>
PCBway.bat（バッチファイル） は Windows でのみ動かせます。
PCBway.sh（シェルスクリプト） は Linux でのみ動かせます。

Debug 内は PCBway で注文するときの手順では必要ありません。<br>
pcbway.bat, pcbway.sh の動作を確かめるのに使ったファイルを入れたフォルダです。<br>
generatetestfile は、自動で製造ファイルを作ってくれます。<br>
pcbway.bat や pcbway.sh の動作が不安な方はこれで動作テストをすることをお勧めします。<br>

old_version 内は文字通り旧バージョンのスクリプトです。正直使いにくいと思いますが、逆にこっちの方がいい可能性もある（いやないだろ）と思ったので残してあります。つまり自己満です。

##### rero wiki から来た人へ
自分で使って便利だなって思うくらいで、人に使わせようとか考えてなかったので例外処理が入ってません。<br>
使う時は自己責任でお願いします。<br>
わからないことがあれば遠慮なくなんかしらの方法で質問してください。<br>

### 使いかた<br>
###### pcbway.bat (Windows で KiCAD を使っている人向け)<br>
KiCAD で吐き出した gerber ファイルがネットワーク上、あるいは NTFS 以外の場所にある場合は、ローカルの NTFS ボリュームに移します。 <- これめっちゃ大事。詳細は後述。<br>
gerber ファイル（hogehoge.drl とか hogehoge.gbl とか）があるところに pcbway.bat を突っ込みます。<br>
後はダブルクリックしたり、コマンドプロンプトから実行します。（操作結果が残るのでコマンドプロンプトから実行するのがおすすめ。）<br>
```> ProjectName:``` のところで改名したいガーバーファイルのプロジェクト名を入力することで、改名できます。<br>
<br>
例えば、```robotrace_sensorV3-B_Cu.gbl``` のようなファイルを改名する場合は、ProjectName が robotrace_sensorV3 なので、```> ProjectName:robotrace_sensorV3``` とすることで、```robotrace_sensorV3.GBL``` に改名されます。<br>
<br>
> ローカルの NTFS ボリューム<br>
例えば C:\Users\user\Documents\gerber のような、C ドライブ内の user 以下なら確実に大丈夫。<br>
D: とか \\\\ はダメ。<br>
USB メモリとか、SD カードメモリ内にある Gerber ファイルの改名をしたかったら一旦 C ドライブにコピーしてから改名する必要があるということ。<br>
ローカル NTFS に移さないで実行すると、大文字と小文字の区別を有効にするコマンドが実行できず、小文字を大文字に変更しても小文字扱いになり、ファイルが削除されます。<br>
<s>このファイル削除のコマンドを無くすべきか残すべきか悩んでます。</s><br>
結局無くしました。<br>
<!--理由<br>
PCBway の発注フローには、「小文字の拡張子を大文字にしろ」と指示があります。
正直やらなくていいと思うのですが、どうやらそういう文化らしいのでそういうことにしておきましょう。
しかし、Windows は通常、ファイル名の大文字と小文字に区別がありません。
なのでファイル名を変更して無理やり大文字にしても、システムによって小文字に戻される場合もあります。
そこで、「このフォルダでは大文字と小文字を区別してね～」とシステムに教える必要があります。
そのコマンドが ```> fsutil file SetCaseSensitiveInfo ./ disable``` です。
このコマンドの実行対象がローカルの NTFS になっていると、「ダメです。」と怒られます。
-->

###### pcbway.sh (Linux で KiCAD を使っている人向け)<br>
実行権限を与える必要があります。<br>
```$ chmod +x pcbway.sh```<br>
あとは gerber ファイルと同じ場所にぶち込んで実行するだけです。<br>
```ProjectName:``` のところでガーバーデータのプロジェクト名を入力して実行します。<br>


### 処理内容
<ol>
  <li>標準入力を受け付ける</li>
  <li>Windows 版では大文字と小文字の区別をつける。Linux 版では何もしない。</li>
  <li>.drl や .gbl など製造ファイルを改名する。</li>
  <li>Windows 版では大文字と小文字の区別をなくす。Linux 版では何もしない。</li>
</ol>

### これらのスクリプトを作る上で参考にしたサイト
https://qiita.com/kshibamo/items/9368b0b2a4a2f40b61f1
https://qiita.com/sta/items/8cab80fe74b8dcfa5336
https://eng-entrance.com/linux-shellscript-keyboard
https://qiita.com/Lambda34/items/7d24ebe6f7bde5bedddc
https://qiita.com/amaranthine/items/58115d268d2cb50ae5d2




