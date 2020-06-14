# Set gm to survival if you're not an mod and in another team
# NOT NEEDED ANYMORE: gamemode survival @a[team=!mod, team=!, team=!spec, gamemode=!adventure]

# Only if the game has been started and not ended yet
execute if score @e[tag=timer_tag, limit=1] timer matches 0..72000 run gamemode survival @a[team=!, team=!mod, team=!spec]

# Set gm to adventure if you're not in a team
gamemode adventure @a[team=]

gamemode spectator @a[team=spec]

# Send message if you're not in a team yet 
title @a[team=] actionbar ["",{"text":"Je bent nog niet aan een team toegevoegd!","bold":true,"underlined":true,"color":"dark_red"}]

# Bars
bossbar set minecraft:0 players @a
bossbar set minecraft:1 players @a
bossbar set minecraft:2 players @a

# Add timer
scoreboard players add @e[tag=timer_tag,limit=1] timer 1
# Display timer
execute store result bossbar minecraft:1 value run scoreboard players get @e[tag=timer_tag,limit=1] timer

# Some timer checks
execute at @e[scores={timer=84000..}] run function mcquest:end
execute at @e[scores={timer=42000..}] run tellraw @a "Nog 30 minuten!"
execute at @e[scores={timer=83700..}] run tellraw @a "Nog 5 minuten!"
#Drop GUI

#See if a player has 1 or more drops then run a function named mcquest:get_slot
execute as @a[scores={drop=1..}] run function mcquest:get_slot
kill @e[nbt={Item:{tag:{mcquest:1b}}}]

#Set the blocks in youre inventory
replaceitem entity @e[team=] hotbar.3 minecraft:red_wool{mcquest:1b,display:{Name:'"Rood","color":"red"}'},}
replaceitem entity @e[team=] hotbar.5 minecraft:blue_wool{mcquest:1b,display:{Name:'"Blauw","color":"red"}'},}
replaceitem entity @e[team=] hotbar.4 minecraft:gray_wool{mcquest:1b,display:{Name:'"Spectator","color":"red"}'},}

# Only mods are operator
function mcquest:set_op
