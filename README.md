# ShellScripts

##### 基礎
シェルスクリプトを実行する前に権限を与えておく必要がある。
```
$ chmod +x <ShellScriptName>
```
例えば以下を実行
```
$ chmod +x pcbway.sh
```

##### PCBWay
###### pcbway.sh
[reRoWiKi の PCBWay の拡張子変更の項目](https://wiki.rero.tiryoh.com/shopping/how-to-buy/PCBWay#拡張子の変更)でいちいちリネームするのが面倒くさかったから自動リネーム＋拡張子変更まで行ってくれるシェルスクリプトを作った。
```NEWNAME```　が聞かれたら、リネームしたい新しい名前（Wiki にで言うと "robotrace_sensorV3"）を入力する。
すると自動でリネーム＋拡張子の変更まで行ってくれる。
エラーは今のところ一切考慮していないので注意が必要。
###### generatetestfile.sh
drl とか gm1 とか、模擬製造ファイル＋ドリルファイルを作成してくれる。
デバッグ用に作ったのだが普通に動作確認的な意味で使えそうな気がしたのでそのまま同梱。
```TESTHAME``` が聞かれたら、生成したい製造ファイルの名称を入力する。
すると ```TESTNAME?.*``` ファイルが生成される。（```?``` は数字 ```*``` は拡張子）
