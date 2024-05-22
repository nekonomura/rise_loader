#バグ防止
advancement revoke @a only rl:inventry_changed
#ログ
advancement revoke @a only rl:inslog
#　　　　　　　　　　　　　　　　データコマンドリスト
#ブロック

#プラグイン
data modify storage rl:pluginlist defult set value [{id:1,name:{"translate":"rl"}}]
#　　　　　　　　　　　　　　　　スコア類
#設定
scoreboard objectives add SettingsOn trigger {"translate":"settings.on"}
scoreboard objectives add Cmd trigger
scoreboard players enable @a Cmd
#/data get storage rl:pluginlist defult[{id:}].name