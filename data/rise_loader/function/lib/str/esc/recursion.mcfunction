##再帰処理
tellraw @a "再帰!"
#   ((-1)～(文字数)文字目の文字列)を取得する
$tellraw @a "$(len)"
$data modify storage rise_loader: lib.str.esc.list.new set string storage rise_loader: lib.str.esc.txt.value -1 $(len)
data modify storage rise_loader: lib.str.esc.end.txt set from storage rise_loader: lib.str.esc.list.new

##検証
execute as kimura_family run data get storage rise_loader:
##終わり
#   (listの最後の文字)を(list[-1])にする.
    data modify storage rise_loader: lib.str.esc.list.end set from storage rise_loader: lib.str.esc.list.value[-1]
##もし<<not<((-1)～(文字数)文字目の文字列)=("\\")>>and<not<((-1)～(文字数)文字目の文字列)=("\"")>>>なら
#------------------------------------------------------------------
#    気付き:  単体の\や"をコピーしてくるとエスケープ文字が勝手に生えてくる
#------------------------------------------------------------------
#    パスの書き方:
#       パスに条件を付ける.下の場合lib.str.escに{"txt":"\\"}を持つendがあるかどうかを判定している.
#------------------------------------------------------------------
    #もしlistが空ではないなら
            execute if data storage rise_loader: lib.str.esc.list.value \
                unless data storage rise_loader: lib.str.esc.end{"txt":"\\"} \
                    unless data storage rise_loader: lib.str.esc.end{"txt":"\""} \
                        run function rise_loader:lib/str/esc/new/ with storage rise_loader: lib.str.esc.list
                        #run function rise_loader:lib/logger/ {"command":"function rise_loader:lib/str/esc/new/ with storage rise_loader: lib.str.esc.list"}
    #でなければ
            #(list)に(文字列の最後)を追加する
            execute unless data storage rise_loader: lib.str.esc.list.value \
                unless data storage rise_loader: lib.str.esc.end{"txt":"\\"} \
                    unless data storage rise_loader: lib.str.esc.end{"txt":"\""} \
                        run data modify storage rise_loader: lib.str.esc.list.value append from storage rise_loader: lib.str.esc.end.txt

#でなければ
#   もし<((-1)～(文字数)文字目の文字列)=("\\")>なら
#       "\\"をリストの最後に追加
            execute if data storage rise_loader: lib.str.esc.end{"txt":"\\"} run data modify storage rise_loader: lib.str.esc.list.value append value "\\"
#   でなければ
#       "\""をリストの最後に追加
            execute if data storage rise_loader: lib.str.esc.end{"txt":"\""} run data modify storage rise_loader: lib.str.esc.list.value append value "\""
#   (リストの最後に文字列を追加する必要がある)を(true)にする
            execute if data storage rise_loader: lib.str.esc.end{"txt":"\\"} run data modify storage rise_loader: lib.str.esc.end.cond set value 1
            execute if data storage rise_loader: lib.str.esc.end{"txt":"\""} run data modify storage rise_loader: lib.str.esc.end.cond set value 1
#(文字数)を((文字数)-(1))にする
execute store result storage rise_loader: lib.str.esc.len int 0.9 run data get storage rise_loader: lib.str.esc.len
#もし<<(文字数)が(0)>ではない>なら
    #   (文字列)を((文字列)の(0)~(-1)までの文字列)で上書きする
    execute unless data storage rise_loader: lib.str.esc{"len":0} run \
        data modify storage rise_loader: lib.str.esc.txt.value set string storage rise_loader: lib.str.esc.txt.value 0 -1
#   #再帰
    execute unless data storage rise_loader: lib.str.esc{"len":0} run function rise_loader:lib/logger/ {"command":"function rise_loader:lib/str/esc/recursion with storage rise_loader: lib.str.esc"}
#でなければ
#   エスケープ開始
    #execute if data storage rise_loader: lib.str.esc{"len":0} run tellraw @a "done!"