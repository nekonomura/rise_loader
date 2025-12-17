#data modify storage rl:api math set value {}
#function rl_api:data/registries/registration {"registries":"registries","id":"rise_loader:registry","entry":[]}
#data modify storage rise_loader:api math set value {}
#辞書
data modify storage rise_loader:api dict set value {"\\":"\\","\"":"\""}
scoreboard objectives add rise_loader_value dummy
scoreboard players set #2 rise_loader_value 2
execute in rise_loader:temp positioned 0.0 0.0 0.0 run forceload add ~ ~