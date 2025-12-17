##引数[(-1)～(文字数)文字目の文字列,リスト[-1]]
#   もし(リストの最後に文字列を追加する必要がある)が真(1)なら
#       (リスト)の最後に(-1)～(文字数)文字目の文字列を追加する
    #execute if data storage rise_loader: lib.str.esc.end{cond:1} run tellraw @a "文字列を追加する必要があります!"
    execute if data storage rise_loader: lib.str.esc.end{cond:1} run function rise_loader:lib/logger/ {"command":"data modify storage rise_loader: lib.str.esc.list.value append from storage rise_loader: lib.str.esc.end.txt"}
    #function rise_loader:lib/logger/ {"command":"data modify storage rise_loader: lib.str.esc.list.value append from storage rise_loader: lib.str.esc.end.txt"}
#       (リストの最後に文字列を追加する必要がある)を(false)にする
    execute if data storage rise_loader: lib.str.esc.end{cond:1} run function rise_loader:lib/logger/ {"command":"data modify storage rise_loader: lib.str.esc.end.cond set value 0"}
    #data modify storage rise_loader: lib.str.esc.end.cond set value 0
#   でなければ
#       (リスト[-1])を(((-1)～(文字数)文字目の文字)+(リスト[-1]))で上書きする。
    #$tellraw @a "newは\"$(new)\"です。"
    $execute unless data storage rise_loader: lib.str.esc.end{cond:1} run data modify storage rise_loader: lib.str.esc.list.value[-1] set value "$(new)$(end)"
    $execute unless data storage rise_loader: lib.str.esc.end{cond:1} run tellraw @a "リストの最後を$(new)$(end)に"