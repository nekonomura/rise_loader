#クラス
# メソッド
#型 インスタンス = new クラス名
#コンストラクタ=インスタンスの初期化処理(クラス名と同じ名前のメソッド)
#コンストラクタは取る引数で勝手に分岐
#子クラス名 extends 親クラス名
#superクラス=親クラス
#mainメソッド=プログラムを実行したときに実行される(必ずpublic static)
#static、つまり静的=事前にメモリが確保されている=インスタンスにする必要がない
#クラスの書き方
#pass type(public/private)(static/instance)
#rlfunction
#importとexport

#エンティティにrl_instanceタグを持たせることでコマンドの実行を強制する
#memoryにプログラムカウンタをはやす

#思想
#とりあえず書いて実行みたいな感じにさせろ、変数の宣言がややこしいのやめろ、
#・pythonみたいな実行しやすさ
#・簡単な変数宣言←よく考えたらscoreboardは変数宣言あるけど、storageは宣言ないね、最初っから変数の宣言しなくていいようにしよっか。
#インスタンスの変数はエンティティのdataに、
#staticな奴らはstorageに
#{"pass":"","argument":{},}

#[{"value":"str","n":0}]

##ポインタの書き方
#{"type":"block/entity/storage","target":"x y z/TargetSelecter/namespace","pass":"test.test.test"]}