#インストールログ
#コナンオタク4869さんから動作用の進捗を借りた。何をやってるのか理解できた。ありがとうございます!
tellraw @s [{"color":"green","text":"[RL] "},{"color": "white","translate": "rl.inslog.do"}]
tellraw @s [{"color":"green","text":"|"},{"color":"white","translate": "introduced"},{"color":"white","translate": "rl.plugin.list"},{"color":"white","text":"[⚙]","clickEvent": {"action":"run_command","value":"/trigger SettingsOn"}}]