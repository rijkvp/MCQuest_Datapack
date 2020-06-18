effect give @s minecraft:regeneration 2 255 true
effect give @s minecraft:resistance 2 255 true
effect give @s minecraft:weakness 2 255 true
effect give @s minecraft:saturation 2 255 true
effect give @s minecraft:invisibility 2 255 true
gamerule doFireTick false
gamerule doImmediateRespawn false
tellraw @a ["",{"selector":"@s"},{"text":" is "},{"text":"DOOD GEGAAN!","bold":true,"underlined":true,"color":"dark_red"}]
summon lightning_bolt
gamerule doImmediateRespawn true
scoreboard players set @s deaths 0
gamerule doFireTick true
team join spec @s
title @s times 20 120 20
title @s subtitle {"text":"Je bent dood gegaan!","color":"red"}
title @s title {"text":"GAME OVER!","bold":true,"underlined":true,"color":"dark_red"}