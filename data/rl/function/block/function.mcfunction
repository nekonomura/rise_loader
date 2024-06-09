#通常描画
$function $(function) with entity @s item.components.minecraft:custom_data.Blockdata
$execute if block ~ ~ ~ #air unless data entity @s item.components.minecraft:custom_data.Blockdata{"need_silktouch":true} if data entity @s item.components.minecraft:custom_data.Blockdata{"break_result_type":"loot"} run loot spawn ~ ~ ~ loot $(break_result_pass)
execute if block ~ ~ ~ #air run kill @s 