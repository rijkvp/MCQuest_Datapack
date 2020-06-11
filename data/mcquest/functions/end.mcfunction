bossbar set minecraft:0 visible false
bossbar set minecraft:1 visible false
bossbar set minecraft:2 visible true


# Remove old timer
scoreboard players set @e timer -100000
bossbar set minecraft:1 value 0
scoreboard objectives remove timer
kill @e[type=minecraft:armor_stand]
tag @e remove timer_tag

defaultgamemode spectator

execute as @a run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.0 1.0 1.0
title @a subtitle {"text":"Is afgelopen!","color":"yellow"}
title @a title ["",{"text":"Minecraft ","bold":true,"color":"green"},{"text":"Quest","bold":true,"color":"red"}]
tellraw @a ["",{"text":"De Minecraft Quest is over! De tijd is op! Heb je de quest gehaalt?","color":"yellow"}]
tellraw @a ["",{"text":"Credits:","bold":true,"italic":true,"color":"light_purple"},{"text":"\n","bold":true,"italic":true},{"text":"Rijk ","bold":true,"italic":true,"color":"dark_red"},{"text":"(Rycoder) ","bold":true,"italic":true},{"text":"- Server host, hoofd datapack zaken","bold":true,"italic":true,"color":"dark_gray"},{"text":"\n","bold":true,"italic":true},{"text":"Youri ","bold":true,"italic":true,"color":"dark_red"},{"text":"(AltijdYouriGames) ","bold":true,"italic":true},{"text":"- Helper en maker van gui","bold":true,"italic":true,"color":"dark_gray"},{"text":"\n","bold":true,"italic":true},{"text":"Daan ","bold":true,"italic":true,"color":"dark_red"},{"text":"(MinecraftyDaan) ","bold":true,"italic":true},{"text":"- Oude server host, Helper en maker van deze tekst :)","bold":true,"italic":true,"color":"dark_gray"},{"text":"\n\n\n","bold":true,"italic":true},{"text":"Bedankt voor het spelen!","bold":true,"italic":true,"underlined":true,"color":"yellow"},{"text":"\n\n "}]
