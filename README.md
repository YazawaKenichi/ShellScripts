# ShellScripts

### 基礎
#### Linux
シェルスクリプトを実行する前に権限を与えておく必要がある。
```
$ chmod +x <ShellScriptName>
```
例えば以下を実行
```
$ chmod +x pcbway.sh
```
#### Windows
特に権限を与える必要はない。そのまま行ける。

### PCBWay
#### Linux
##### pcbway.sh
[reRoWiKi の PCBWay の拡張子変更の項目](https://wiki.rero.tiryoh.com/shopping/how-to-buy/PCBWay#拡張子の変更)でいちいちリネームするのが面倒くさかったから自動リネーム＋拡張子変更まで行ってくれるシェルスクリプトを作った。
```NEWNAME```　が聞かれたら、リネームしたい新しい名前（Wiki にで言うと "robotrace_sensorV3"）を入力する。
すると自動でリネーム＋拡張子の変更まで行ってくれる。
エラーは今のところ一切考慮していないので注意が必要。
想定されるエラー（以下の条件で実行実験していないため、実際にどういう挙動をするかは不明）
- 製造ファイル・ドリルファイルの中で、一つでも足りないファイルがある。
- 指定した名称のファイルが既に存在する。
- リネーム前、ファイル名が違っていても拡張子が同じファイルの組が存在する。（リネームしたときに同じファイル名のファイルができてしまう。）

##### generatetestfile.sh
drl とか gm1 とか、模擬製造ファイル＋ドリルファイルを作成してくれる。
デバッグ用に作ったのだが普通に動作確認的な意味で使えそうな気がしたのでそのまま同梱。
```TESTHAME``` が聞かれたら、生成したい製造ファイルの名称を入力する。
すると ```TESTNAME?.*``` ファイルが生成される。（```?``` は数字 ```*``` は拡張子）

#### Windows
##### pcbway.bat
pcbway.sh の Windows Batch File 版。つまりこっちは Windows で使える。
こっちはわざわざ大文字と小文字の区別を有効にしてからリネームを行っている。
del コマンド実行時に drl が見つかりませんでした。と出るが、まぁ特に変なファイルが残ってたり必要なファイルが消えてたりしないのでヨシッ！
大文字と小文字の区別はスクリプト実行時に有効にしているが、終了前に無効に戻している。

##### generatetestfile.bat
pcbway.sh の Windows Batch File 版。つまりこっちは Windows で使える。
Windows の性質上、空ファイルの生成方法が ```copy nul <filename>``` と、Null をコピーしてくる形になってしまうので、処理時の出力が ```1 個のファイルをコピーしました。``` になってしまうが、ちゃんと模擬製造ファイルを出力できている。
