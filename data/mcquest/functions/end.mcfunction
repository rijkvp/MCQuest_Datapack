#Bossbars set visibility
bossbar set minecraft:0 visible false
bossbar set minecraft:1 visible false
bossbar set minecraft:2 visible true


# Remove old timer
scoreboard players set @e timer -100000
bossbar set minecraft:1 value 0
scoreboard objectives remove timer
# Set gamemode to spectator for everyone
team join spec @a[team=!mod]
defaultgamemode spectator

#music and message's
execute as @a run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.0 1.0 1.0
title @a subtitle {"text":"Is afgelopen!","color":"yellow"}
title @a title ["",{"text":"Minecraft ","bold":true,"color":"green"},{"text":"Quest","bold":true,"color":"red"}]
tellraw @a ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"Credits: ","bold":true,"italic":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"Kijk ook eens in de credits ;) of doe /trigger credits"},"hoverEvent":{"action":"show_text","value":["",{"text":"Credits","bold":true,"color":"light_purple"}]}},{"text":"\n"},{"text":"  Rijk","bold":true,"italic":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger message set 2"},"hoverEvent":{"action":"show_text","value":["",{"text":"Zie meer"}]}},{"text":"    (Rycoder)","color":"white","clickEvent":{"action":"suggest_command","value":"Rycoder"},"hoverEvent":{"action":"show_text","value":["",{"text":"Minecraft naam","bold":true,"color":"aqua"}]}},{"text":"\n"},{"text":"  Youri","bold":true,"italic":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger message set 3"},"hoverEvent":{"action":"show_text","value":["",{"text":"Zie meer","color":"white"}]}},{"text":"  (AltijdYourigames)","color":"white","clickEvent":{"action":"suggest_command","value":"AltijdYourigames"},"hoverEvent":{"action":"show_text","value":["",{"text":"Minecraft naam","bold":true,"color":"aqua"}]}},{"text":"\n"},{"text":"  Daan","bold":true,"italic":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger message set 4"},"hoverEvent":{"action":"show_text","value":["",{"text":"Zie meer"}]}},{"text":"   (MinecraftyDaan)","color":"white","clickEvent":{"action":"suggest_command","value":"MinecraftyDaan"},"hoverEvent":{"action":"show_text","value":["",{"text":"Minecraft naam","bold":true,"color":"aqua"}]}},{"text":"\n"},{"text":"  Richel","bold":true,"italic":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger message set 5"},"hoverEvent":{"action":"show_text","value":["",{"text":"Zie meer"}]}},{"text":" (Richelbilderbeek)","color":"white","clickEvent":{"action":"suggest_command","value":"Richelbilderbeek"},"hoverEvent":{"action":"show_text","value":["",{"text":"Minecraft naam","bold":true,"color":"aqua"}]}}]
tellraw @a [{"text":"\n"},{"text":"Bedankt voor het spelen!","bold":true,"italic":true,"underlined":true,"color":"yellow"}]
