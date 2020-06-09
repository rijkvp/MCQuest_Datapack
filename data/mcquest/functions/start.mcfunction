bossbar set minecraft:0 visible false
bossbar set minecraft:1 visible true
bossbar set minecraft:2 visible false

gamerule showDeathMessages false
gamerule doImmediateRespawn true
clear @a
kill @a
gamerule showDeathMessages true
gamerule doImmediateRespawn false
defaultgamemode survival
gamemode survival @a[team=!mod] 

execute as @a run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.0 1.0 1.0
title @a subtitle {"text":"Is begonnen!","color":"yellow"}
title @a title ["",{"text":"Minecraft ","bold":true,"color":"green"},{"text":"Quest","bold":true,"color":"red"}]
tellraw @a ["",{"text":"De Minecraft Quest is begonnen! Veel succes!","color":"yellow"}]