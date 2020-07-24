# GAMEMODES

# @a[team!=] (in a team) @a[team=] (not in a team)
execute if score #data_holder timer matches 0..72000 run gamemode survival @a[team=!, team=!mod, team=!spec]
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
execute if score #data_holder respawn_disabled matches 1 run execute as @a[scores={deaths=1..}, team=!mod] run function mcquest:death_handler
execute if score #data_holder respawn_disabled matches 1 run execute as @a[team=!mod,scores={deaths=0}] run spawnpoint @s

# Give you regeneration and night vision if you are not in a team yet
effect give @a[team=] minecraft:regeneration 2 255 true
effect give @a[team=] minecraft:resistance 2 255 true
effect give @a[gamemode=adventure] minecraft:weakness 2 255 true
effect give @a[gamemode=adventure] minecraft:saturation 2 255 true

function mcquest:pets/loop

# Bars
bossbar set minecraft:0 players @a
bossbar set minecraft:1 players @a
bossbar set minecraft:2 players @a

# Add timer
scoreboard players add #data_holder timer 1
# Display timer
execute store result bossbar minecraft:1 value run scoreboard players get #data_holder timer

#Clear
execute at @a[team=mod,limit=1] unless entity @e[tag=cTimer] run summon minecraft:armor_stand ~ 255 ~ {Small:1b,Tags:["cTimer"],Invisible:1b}
scoreboard players add @e[tag=cTimer] tick_timer 1
scoreboard players remove @e[tag=cTimer,scores={tick_timer=20,min_timer=-1..}] min_timer 1
execute as @e[tag=cTimer,scores={tick_timer=10,min_timer=-1}] run title @a actionbar {"text":"Cleared","bold":"true","color":"green"}
scoreboard players set @e[tag=cTimer,scores={tick_timer=21..}] tick_timer 0
execute as @e[tag=cTimer,scores={tick_timer=10,min_timer=-1}] run kill @e[type=item,tag=!cTimer]
execute as @e[tag=cTimer,scores={min_timer=1..}] run title @a actionbar ["",{"text":"Items worden verwijderd over: ","bold":true,"underlined":false,"color":"dark_red"},{"score":{"name":"@e[tag=cTimer]","objective":"min_timer"},"bold":true,"color":"white"}]
scoreboard players set @e[tag=cTimer,scores={tick_timer=10,min_timer=-1}] min_timer -2

# Time left messages
execute store result score @a timer run scoreboard players get #data_holder timer
execute at @a[scores={timer=36000}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 30","bold":true,"color":"#F28003"},{"text":" minuten!","color":"yellow"}]
execute at @a[scores={timer=36000}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1.0 1.0
execute at @a[scores={timer=66000}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 5","bold":true,"color":"#F28003"},{"text":" minuten!","color":"yellow"}]
execute at @a[scores={timer=66000}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.0 1.0
execute at @a[scores={timer=70800}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 1","bold":true,"color":"#F28003"},{"text":" minuut!","color":"yellow"}]
execute at @a[scores={timer=70800}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.0 1.0
execute at @a[scores={timer=71900}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 5","bold":true,"color":"#F28003"},{"text":" seconden!","color":"yellow"}]
execute at @a[scores={timer=71900}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 2.0 1.0
execute at @a[scores={timer=71920}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 4","bold":true,"color":"#F28003"},{"text":" seconden!","color":"yellow"}]
execute at @a[scores={timer=71920}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1.5 1.0
execute at @a[scores={timer=71940}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 3","bold":true,"color":"#F28003"},{"text":" seconden!","color":"yellow"}]
execute at @a[scores={timer=71940}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1.0 1.0
execute at @a[scores={timer=71960}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 2","bold":true,"color":"#F28003"},{"text":" seconden!","color":"yellow"}]
execute at @a[scores={timer=71960}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.5 1.0
execute at @a[scores={timer=71980}] run tellraw @a ["",{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"MC","bold":true,"color":"green"},{"text":"Q","bold":true,"color":"red"},{"text":"|","bold":true,"obfuscated":true,"color":"light_purple"},{"text":" Nog","color":"yellow"},{"text":" 1","bold":true,"color":"#F28003"},{"text":" seconde!","color":"yellow"}]
execute at @a[scores={timer=71980}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.0 1.0
execute at @a[scores={timer=72000}] run function mcquest:end

# See if a player has 1 or more drops then run a function named mcquest:get_slot
execute as @a[scores={drop=1..}] run function mcquest:get_slot
kill @e[nbt={Item:{tag:{mcquest:1b}}}]

# Set the blocks in youre inventory
replaceitem entity @a[team=] hotbar.3 minecraft:carrot_on_a_stick{mcquest:1b,CustomModelData:2,display:{Name:"{\"text\":\"Rood\",\"color\":\"red\",\"bold\":\"true\"}"},}
replaceitem entity @a[team=] hotbar.5 minecraft:carrot_on_a_stick{mcquest:1b,CustomModelData:1,display:{Name:"{\"text\":\"Blauw\",\"color\":\"blue\",\"bold\":\"true\"}"},}
replaceitem entity @a[team=] hotbar.4 minecraft:carrot_on_a_stick{mcquest:1b,CustomModelData:3,display:{Name:"{\"text\":\"Spectator\",\"color\":\"gray\",\"bold\":\"true\"}"},}

# Trigger commands
scoreboard players enable @a credits
scoreboard players enable @a message
# Leave Trigger - DISABLED -  NOT NEEDED ANYMORE & DOESN'T WORK
# execute as @a[scores={leave=1..}, team=!spectator] run function mcquest:leave_team
# scoreboard players set @a leave 0

#credits
execute as @a[scores={credits=1}] run function mcquest:message2
execute as @a[scores={message=2}] run function mcquest:credits/rijk
execute as @a[scores={message=3}] run function mcquest:credits/youri
execute as @a[scores={message=4}] run function mcquest:credits/daan
execute as @a[scores={message=5}] run function mcquest:credits/richel
execute as @a[scores={message=7..}] run function mcquest:credits/error
execute as @a[scores={credits=2..}] run function mcquest:credits/error

#clicked on team
execute as @a[team=,scores={click=1..}] run function mcquest:get_clicked

#remove when in hand
execute as @a[team=!,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run clear @s carrot_on_a_stick{mcquest:1b} 1
execute as @a[team=!,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run clear @s carrot_on_a_stick{mcquest:1b} 1
execute as @a[team=!,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run clear @s carrot_on_a_stick{mcquest:1b} 1

# click remove 1
scoreboard players remove @a[scores={click=1..}] click 1

# Only mods are operator
function mcquest:set_op
