bossbar set minecraft:0 visible false
bossbar set minecraft:1 visible false
bossbar set minecraft:2 visible true

defaultgamemode spectator

execute as @a run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.0 1.0 1.0
title @a subtitle {"text":"Is afgelopen!","color":"yellow"}
title @a title ["",{"text":"Minecraft ","bold":true,"color":"green"},{"text":"Quest","bold":true,"color":"red"}]
tellraw @a ["",{"text":"De Minecraft Quest is over! De tijd is op! Heb je de quest gehaalt?","color":"yellow"}]