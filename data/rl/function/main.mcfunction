#コマンドプロントプト起動
execute as @a unless score @s Cmd matches 0 run function rl:commandpronpt
#コマンド
execute if entity @e[tag=cmd] as @e[tag=cmd] run function rl:command