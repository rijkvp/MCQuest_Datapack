op @a[team=mod]
deop @a[team=!mod]
# Set gm to survival if you're not an mod and in another team
gamemode survival @a[team=!mod, team=!, gamemode=!adventure]
# Set gm to spectator if you're not in a team
gamemode spectator @a[team=]
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

# Game over!
execute at @e[scores={timer=7200..}] run function mcquest:end
