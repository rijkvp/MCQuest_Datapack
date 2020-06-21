# Set bossbar visibility
bossbar set minecraft:0 visible false
bossbar set minecraft:1 visible true
bossbar set minecraft:2 visible false

# Teleport everyone to spawn & set gm to survival
gamerule showDeathMessages false
gamerule doImmediateRespawn true
clear @a
kill @a
gamerule showDeathMessages true

# Do only turn on immediate respawn if playing UHC 
gamerule doImmediateRespawn false

gamemode survival @a[team=!mod]

# Gamerules
gamerule doDaylightCycle true
gamerule doMobSpawning true
defaultgamemode survival

# Remove old timer
bossbar set minecraft:1 value 0
bossbar set minecraft:1 style notched_20
scoreboard objectives remove timer
kill @e[type=minecraft:armor_stand]
tag @e remove timer_tag
scoreboard players set @a deaths 0

# Setup Timer
summon armor_stand ~ 255 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Small:1b}
tag @e[type=minecraft:armor_stand, limit=1] add timer_tag
scoreboard objectives add timer dummy "game-timer"
scoreboard players set @e[tag=timer_tag,limit=1] timer 0
bossbar set minecraft:1 max 84000

# Reset time & weather
time set 0
weather clear 12000

title @a subtitle {"text":"Is begonnen!","color":"yellow"}
title @a title ["",{"text":"Minecraft ","bold":true,"color":"green"},{"text":"Quest","bold":true,"color":"red"}]
schedule function mcquest:playsound 1t
tellraw @a ["",{"text":"Credits:","bold":true,"italic":true,"color":"light_purple"},{"text":"\n"},{"text":"Rijk","bold":true,"italic":true,"color":"dark_red"},{"text":" (Rycoder) ","italic":true},{"text":"- Server host, hoofd datapack zaken","italic":true,"color":"dark_gray"},{"text":"\n","italic":true},{"text":"Youri","bold":true,"italic":true,"color":"dark_red"},{"text":" (AltijdYouriGames) ","italic":true},{"text":"- Helper en maker van gui","italic":true,"color":"dark_gray"},{"text":"\n","italic":true},{"text":"Daan","bold":true,"italic":true,"color":"dark_red"},{"text":" (MinecraftyDaan) ","italic":true},{"text":"- Oude server host, Helper en maker van deze tekst :)","italic":true,"color":"dark_gray"},{"text":"\n"},{"text":"Richel","bold":true,"italic":true,"color":"dark_red"},{"text":" (richelbilderbeek) ","italic":true},{"text":"- Bedenker en lui iemand die verder niets doet","italic":true,"color":"dark_gray"},{"text":"\n"},{"text":"Veel plezier!","bold":true,"italic":true,"underlined":true,"color":"yellow"},{"text":"\n\n "}]
