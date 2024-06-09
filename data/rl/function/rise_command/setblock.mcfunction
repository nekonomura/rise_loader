tag @s remove setblock
$setblock ~ ~ ~ $(baseblock)
execute if data entity @s Item.components.minecraft:custom_data.Blockdata{"has_ui":true} if data entity @s Item.components.minecraft:custom_data.Blockdata.block_name run data modify block ~ ~ ~ CustomName set from entity @s Item.components.minecraft:custom_data.Blockdata.block_name
summon minecraft:item_display ~ ~0.47 ~ {Tags:["cmd","block"],brightness:{block:0,sky:15},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.01f, 1.01f, 1.01f]}}
data modify entity @n[tag=block,type=item_display] item set from entity @s Item
data modify entity @n[tag=block,type=item_display] item.id set from entity @s Item.components.minecraft:custom_data.Blockdata.model_item
data modify entity @n[tag=block,type=item_display] item.components.minecraft:custom_model_data set from entity @s Item.components.minecraft:custom_data.Blockdata.custom_model_data
kill @s
#tag @s add block