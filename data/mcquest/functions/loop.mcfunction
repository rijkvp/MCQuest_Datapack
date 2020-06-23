# GAMEMODES

# @a[team!=] (in a team) @a[team=] (not in a team)
execute if score @e[tag=timer_tag, limit=1] timer matches 0..72000 run gamemode survival @a[team=!, team=!mod, team=!spec]
gamemode adventure @a[team=, scores={deaths=0}]
gamemode spectator @a[team=spec]

# Night vision & invis for mods
effect give @a[team=mod] minecraft:night_vision 16 255 true
effect give @a[team=mod] minecraft:invisibility 2 255 true

# No pvp/damage if in adventure
effect give @a[gamemode=adventure] minecraft:regeneration 2 255 true
effect give @a[gamemode=adventure] minecraft:resistance 2 255 true
effect give @a[gamemode=adventure] minecraft:weakness 2 255 true
effect give @a[gamemode=adventure] minecraft:saturation 2 255 true

# Execute commands if you are dead
# Turned off for now, we are not playing UHC
# execute if score @e[tag=timer_tag, limit=1] timer matches 200..72000 run execute as @a[scores={deaths=1..}, team=!mod] run function mcquest:death_handler

# Give you regeneration and night vision if you are not in a team yet
effect give @a[team=] minecraft:regeneration 2 255 true
effect give @a[team=] minecraft:resistance 2 255 true
effect give @a[gamemode=adventure] minecraft:weakness 2 255 true
effect give @a[gamemode=adventure] minecraft:saturation 2 255 true

# Bars
bossbar set minecraft:0 players @a
bossbar set minecraft:1 players @a
bossbar set minecraft:2 players @a

# Add timer
scoreboard players add @e[tag=timer_tag,limit=1] timer 1
# Display timer
execute store result bossbar minecraft:1 value run scoreboard players get @e[tag=timer_tag,limit=1] timer

# Time left messages
execute at @e[scores={timer=48000}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 30","bold":true,"color":"#F28003"},{"text":" minuten!","color":"yellow"}]
execute at @e[scores={timer=48000}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1.0 1.0
execute at @e[scores={timer=78000}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 5","bold":true,"color":"#F28003"},{"text":" minuten!","color":"yellow"}]
execute at @e[scores={timer=78000}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.0 1.0
execute at @e[scores={timer=82800}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 1","bold":true,"color":"#F28003"},{"text":" minuut!","color":"yellow"}]
execute at @e[scores={timer=82800}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.0 1.0
execute at @e[scores={timer=83900}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 5","bold":true,"color":"#F28003"},{"text":" seconden!","color":"yellow"}]
execute at @e[scores={timer=83900}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 2.0 1.0
execute at @e[scores={timer=83920}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 4","bold":true,"color":"#F28003"},{"text":" seconden!","color":"yellow"}]
execute at @e[scores={timer=83920}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1.5 1.0
execute at @e[scores={timer=83940}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 3","bold":true,"color":"#F28003"},{"text":" seconden!","color":"yellow"}]
execute at @e[scores={timer=83940}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1.0 1.0
execute at @e[scores={timer=83960}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 2","bold":true,"color":"#F28003"},{"text":" seconden!","color":"yellow"}]
execute at @e[scores={timer=83960}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.5 1.0
execute at @e[scores={timer=83980}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 1","bold":true,"color":"#F28003"},{"text":" seconde!","color":"yellow"}]
execute at @e[scores={timer=83980}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.0 1.0
execute at @e[scores={timer=84000}] run function mcquest:end

# See if a player has 1 or more drops then run a function named mcquest:get_slot
execute as @a[scores={drop=1..}] run function mcquest:get_slot
kill @e[nbt={Item:{tag:{mcquest:1b}}}]

# Set the blocks in youre inventory
replaceitem entity @a[team=] hotbar.3 minecraft:red_wool{mcquest:1b,display:{Name:"{\"text\":\"Rood\",\"color\":\"red\",\"bold\":\"true\"}"},}
replaceitem entity @a[team=] hotbar.5 minecraft:blue_wool{mcquest:1b,display:{Name:"{\"text\":\"Blauw\",\"color\":\"blue\",\"bold\":\"true\"}"},}
replaceitem entity @a[team=] hotbar.4 minecraft:gray_wool{mcquest:1b,display:{Name:"{\"text\":\"Spectator\",\"color\":\"gray\",\"bold\":\"true\"}"},}

# Trigger commands - NOT NEEDED ANYMORE & DOESN'T WORK
scoreboard players enable @a credits
scoreboard players enable @a message
# execute as @a[scores={leave=1..}, team=!spectator] run function mcquest:leave_team
# scoreboard players set @a leave 0

#credits
execute as @a[scores={credits=1}] run function mcquest:message2
execute as @a[scores={message=2}] run function mcquest:credits/rijk
execute as @a[scores={message=3}] run function mcquest:credits/youri
execute as @a[scores={message=4}] run function mcquest:credits/daan
execute as @a[scores={message=5}] run function mcquest:credits/richel
execute as @a[scores={message=6}] run function mcquest:credits/daan2
execute as @a[scores={message=7..}] run function mcquest:credits/error
execute as @a[scores={credits=2..}] run function mcquest:credits/error

# Only mods are operator
function mcquest:set_op
