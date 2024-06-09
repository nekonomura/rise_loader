setblock ~ ~ ~ stone
#左
summon minecraft:item_display ~0.51 ~0.5 ~ {Tags:["cmd","block","summoning"],brightness:{block:0,sky:15},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 1.02f, 1.02f]},item:{id:tnt}}
#右
summon minecraft:item_display ~-0.51 ~0.5 ~ {Tags:["cmd","block","summoning"],brightness:{block:0,sky:15},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 1.02f, 1.02f]},item:{id:tnt}}
#正面
summon minecraft:item_display ~ ~0.5 ~0.51 {Tags:["cmd","block","summoning"],brightness:{block:0,sky:15},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.02f, 1.02f, 0.0f]},item:{id:tnt}}
#背面
summon minecraft:item_display ~ ~0.5 ~-0.51 {Tags:["cmd","block","summoning"],brightness:{block:0,sky:15},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.02f, 1.02f, 0.0f]},item:{id:tnt}}
#上
summon minecraft:item_display ~ ~1.0001 ~ {Tags:["cmd","block","summoning","up"],brightness:{block:0,sky:15},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.02f, 0.0f, 1.02f]},item:{id:tnt}}
#下
summon minecraft:item_display ~ ~-0.0001 ~ {Tags:["cmd","block","summoning"],brightness:{block:0,sky:15},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.02f, 0.0f, 1.02f]},item:{id:tnt}}
#execute align xyz positioned ~0.5 ~ ~0.5 run function rl:test