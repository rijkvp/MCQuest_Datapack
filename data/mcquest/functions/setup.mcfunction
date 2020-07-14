# Create scoreboards
scoreboard objectives add tick-timer dummy
scoreboard objectives add min-timer dummy
scoreboard objectives remove drop
scoreboard objectives add drop minecraft.custom:minecraft.drop
scoreboard objectives add select dummy
scoreboard objectives add health health
scoreboard objectives add credits trigger
scoreboard objectives add message trigger
scoreboard players set @a message 1
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay belowName health
# scoreboard objectives add leave trigger
scoreboard objectives add deaths deathCount
scoreboard players set @a deaths 0

# Gamerules
gamerule commandBlockOutput false
gamerule mobGriefing false
gamerule sendCommandFeedback true
gamerule spectatorsGenerateChunks false
gamerule doDaylightCycle false
gamerule doMobSpawning false
defaultgamemode adventure
difficulty easy

#auto clear
summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Health: 1.0f,NoGravity:1b}
tag @e[type=minecraft:armor_stand] add tick

# Create the teams
team add blauw "Blauw"
team add rood "Rood"
team add spec "Spectator"
team add mod "Moderator"

# Set team colors
team modify blauw color blue
team modify rood color red
team modify mod color green
team modify spec color gray

# Set team prefixes
team modify blauw prefix "[B] "
team modify spec prefix "[S] "
team modify rood prefix "[R] "
team modify mod prefix "[MOD] "

# Setup team rules
team modify blauw friendlyFire false
team modify rood friendlyFire false
team modify mod friendlyFire false
team modify rood collisionRule pushOtherTeams
team modify blauw collisionRule pushOtherTeams
team modify mod collisionRule never
team modify mod nametagVisibility hideForOtherTeams
team modify mod seeFriendlyInvisibles true

# Remove old timer
bossbar set minecraft:1 value 0
bossbar set minecraft:1 style notched_20
scoreboard objectives remove timer
kill @e[type=minecraft:armor_stand]
tag @e remove data_holder

# Setup the bossbars
bossbar add 0 "MCQ - Pre-Game"
bossbar add 1 "MCQ - Game (test 1 minuut)"
bossbar add 2 "MCQ - Post-Game"
bossbar set minecraft:0 name ["",{"text":"MCQ","bold":true,"underlined":true,"color":"green"},{"text":" - ","color":"yellow"},{"text":"Pre-Game","color":"red"}]
bossbar set minecraft:1 name ["",{"text":"MCQ","bold":true,"underlined":true,"color":"green"},{"text":" - ","color":"yellow"},{"text":"Game ","color":"light_purple"},{"text":"(60 min)","color":"yellow"}]
bossbar set minecraft:2 name ["",{"text":"MCQ","bold":true,"underlined":true,"color":"green"},{"text":" - ","color":"yellow"},{"text":"Post-Game","color":"green"}]
bossbar set minecraft:0 players @a
bossbar set minecraft:1 players @a
bossbar set minecraft:2 players @a
bossbar set minecraft:0 color red
bossbar set minecraft:1 color purple
bossbar set minecraft:2 color green
bossbar set minecraft:0 max 1
bossbar set minecraft:1 max 1
bossbar set minecraft:2 max 1
bossbar set minecraft:0 value 1
bossbar set minecraft:1 value 1
bossbar set minecraft:2 value 1
bossbar set minecraft:0 visible true
bossbar set minecraft:1 visible false
bossbar set minecraft:2 visible false

function mcquest:default_mods

execute as @a[scores={message=1..}] run function mcquest:message
# Message that it has been successfully executed
tellraw @a ["",{"text":"\n"},{"text":"De MCQuest is succesvol opgezet!","color":"yellow"}]
