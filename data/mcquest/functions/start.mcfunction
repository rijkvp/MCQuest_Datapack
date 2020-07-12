# Set bossbar visibility
bossbar set minecraft:0 visible false
bossbar set minecraft:1 visible true
bossbar set minecraft:2 visible false

# Teleport everyone to spawn
clear @a
execute at @s run setworldspawn ~ ~ ~
execute at @s run spawnpoint @a ~ ~ ~
execute at @s run spreadplayers ~ ~ 5 5 true @a
execute as @a[team=blauw] run execute at @s run tp @s ~ ~ ~ 90.0 0
execute as @a[team=rood] run execute at @s run tp @s ~ ~ ~ -90.0 0


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
tag @e remove data_holder
scoreboard players set @a deaths 0

# Setup Timer
summon armor_stand ~ 255 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Small:1b}
tag @e[type=minecraft:armor_stand, limit=1, tag=] add data_holder
scoreboard objectives add timer dummy "game-timer"
scoreboard players set @e[tag=data_holder,limit=1] timer 0
bossbar set minecraft:1 max 72000

scoreboard objectives add respawn_disabled dummy
scoreboard players set @e[tag=data_holder,limit=1] respawn_disabled 0

# Reset time & weather
time set 0
weather clear 12000

title @a subtitle {"text":"Is begonnen!","color":"yellow"}
title @a title ["",{"text":"Minecraft ","bold":true,"color":"green"},{"text":"Quest","bold":true,"color":"red"}]
schedule function mcquest:playsound 1t
scoreboard players set @a credits 1
tellraw @a {"text":"Veel plezier","bold":true,"italic":true,"underlined":true,"color":"yellow","clickEvent":{"action":"suggest_command","value":"Veel plezier xD"},"hoverEvent":{"action":"show_text","value":["",{"text":"V","bold":true,"italic":true,"underlined":true,"color":"dark_blue"},{"text":"e","bold":true,"italic":true,"underlined":true,"color":"dark_green"},{"text":"e","bold":true,"italic":true,"underlined":true,"color":"dark_aqua"},{"text":"l","bold":true,"italic":true,"underlined":true,"color":"dark_red"},{"text":" p","bold":true,"italic":true,"underlined":true,"color":"dark_purple"},{"text":"l","bold":true,"italic":true,"underlined":true,"color":"gold"},{"text":"e","bold":true,"italic":true,"underlined":true,"color":"gray"},{"text":"z","bold":true,"italic":true,"underlined":true,"color":"dark_gray"},{"text":"i","bold":true,"italic":true,"underlined":true,"color":"blue"},{"text":"e","bold":true,"italic":true,"underlined":true,"color":"green"},{"text":"r","bold":true,"italic":true,"underlined":true,"color":"aqua"}]}}
