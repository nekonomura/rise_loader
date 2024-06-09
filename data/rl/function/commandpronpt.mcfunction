scoreboard players remove @s Cmd 1
execute as @a if score @s Cmd matches 0 run tellraw @s "end"
execute as @a if score @s Cmd matches 0 run scoreboard players enable @s Cmd