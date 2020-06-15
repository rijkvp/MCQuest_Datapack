#Bossbars set visibility
bossbar set minecraft:0 visible false
bossbar set minecraft:1 visible false
bossbar set minecraft:2 visible true


# Remove old timer
scoreboard players set @e timer -100000
bossbar set minecraft:1 value 0
scoreboard objectives remove timer
kill @e[type=minecraft:armor_stand]
tag @e remove timer_tag
# Set gamemode to spectator for everyone
team join spec @a[team=!mod]
defaultgamemode spectator

#music and message's
execute as @a run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.0 1.0 1.0
title @a subtitle {"text":"Is afgelopen!","color":"yellow"}
title @a title ["",{"text":"Minecraft ","bold":true,"color":"green"},{"text":"Quest","bold":true,"color":"red"}]
tellraw @a ["",{"text":"Credits:","bold":true,"italic":true,"color":"light_purple"},{"text":"\n"},{"text":"Rijk","bold":true,"italic":true,"color":"dark_red"},{"text":" (Rycoder) ","italic":true},{"text":"- Server host, hoofd datapack zaken","italic":true,"color":"dark_gray"},{"text":"\n","italic":true},{"text":"Youri","bold":true,"italic":true,"color":"dark_red"},{"text":" (AltijdYouriGames) ","italic":true},{"text":"- Helper en maker van gui","italic":true,"color":"dark_gray"},{"text":"\n","italic":true},{"text":"Daan","bold":true,"italic":true,"color":"dark_red"},{"text":" (MinecraftyDaan) ","italic":true},{"text":"- Oude server host, Helper en maker van deze tekst :)","italic":true,"color":"dark_gray"},{"text":"\n"},{"text":"Richel","bold":true,"italic":true,"color":"dark_red"},{"text":" (richelbilderbeek) ","italic":true},{"text":"- Bedenker en lui iemand die verder niets doet","italic":true,"color":"dark_gray"},{"text":"\n"},{"text":"Bedankt voor het spelen!","bold":true,"italic":true,"underlined":true,"color":"yellow"},{"text":"\n\n "}]
