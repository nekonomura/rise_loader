#{"type":"block/entity/storage","target":"x y z/TargetSelecter/namespace","pass":"test.test.test"}

#{"type":"storage","target":"rise_loader:","pass":"test4"}
#function rise_loader:lib/str/esc/ {"type":"storage","target":"rise_loader:","pass":"test4"}
### 文字列エスケープ処理
## 初期化

# (元の文字列)を(引数で指定された先)にする
## 危険なのでマクロでのstr型の直接の引数代入は絶対行ってはいけない.必ずパスを引数にとる.
    $data modify storage rise_loader: lib.str.esc.txt.value set from $(type) $(target) $(pass)

# (文字数)を(文字列の長さ)にする
    execute store result storage rise_loader: lib.str.esc.len int 1 run data get storage rise_loader: lib.str.esc.txt.value
### 必要なし------------------------------------------------------------------
## (切り取り範囲)を(0)にする
#    data modify storage rise_loader: lib.str.esc.CutRange set value 0
### ここまで------------------------------------------------------------------
# (リストの最後に文字列を追加する必要がある)を真(1)にする
    data modify storage rise_loader: lib.str.esc.end.cond set value 0
# リストを空にする
    data remove storage rise_loader: lib.str.esc.list
# 再帰処理開始
    function rise_loader:lib/str/esc/recursion with storage rise_loader: lib.str.esc
## エスケープ処理
#

#

# "ab\cde"
# どちらでもないのでリストの長さが()どちらでもないことを確認して-1~6をリストに追加
# "ab\cd"
# どちらでもないがリストの最後が
# "ab\c"
# どちら(ry
# "ab\"
# \なので

### エスケープ処理は最終的にエスケープ文字が"と\の上に3個ついていればよい

### 最終結果
## \\\"+[文字列2]+\\\"+[文字列1]

## (最終結果)
## (前回までの文字列+(2^3-1))+(文字列1)
## ((前回までの文字列+(2^4-1))+(文字列2))+(2^4-1)個の\つき"
## (前回までの文字列+(2^5-1))+(文字列2)

# 2^((リストの長さ)+1)-1