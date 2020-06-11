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

# Remove old timer
bossbar set minecraft:1 value 0
scoreboard objectives remove timer
kill @e[type=minecraft:armor_stand]
tag @e remove timer_tag

# Setup Timer
summon armor_stand ~ 255 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Small:1b}
bossbar set minecraft:1 name "MCQ - Game (1 uur)"
tag @e[type=minecraft:armor_stand, limit=1] add timer_tag
scoreboard objectives add timer dummy "game-timer"
scoreboard players set @e[tag=timer_tag,limit=1] timer 0
bossbar set minecraft:1 max 72000

# Reset time
time set 0

title @a subtitle {"text":"Is begonnen!","color":"yellow"}
title @a title ["",{"text":"Minecraft ","bold":true,"color":"green"},{"text":"Quest","bold":true,"color":"red"}]
tellraw @a ["",{"text":"De Minecraft Quest is begonnen! Veel succes!","color":"yellow"}]
schedule function mcquest:playsound 4t