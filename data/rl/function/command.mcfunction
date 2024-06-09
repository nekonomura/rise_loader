execute if entity @s[tag=setblock] at @s run function rl:rise_command/setblock with entity @s Item.components.minecraft:custom_data.Blockdata
#通常描画
execute if entity @s[tag=block] at @s run function rl:block/function with entity @s item.components.minecraft:custom_data.Blockdata
#function rl:rise_command/setblock with storage rl:blocks defult[{id:"rise_loader:rise_crafting_table"}]
#tellraw @a "a"