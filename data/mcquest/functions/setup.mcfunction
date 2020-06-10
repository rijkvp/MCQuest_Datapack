gamerule commandBlockOutput false
gamerule mobGriefing false
gamerule sendCommandFeedback true
gamerule spectatorsGenerateChunks false
difficulty easy
team add blauw "Blauw"
team add rood "Rood"
team add mod "Moderator"
team modify blauw color blue
team modify rood color red
team modify mod color green
team modify blauw prefix "[B] "
team modify rood prefix "[R] "
team modify mod prefix "[MOD] "
team modify blauw friendlyFire false
team modify rood friendlyFire false
team modify mod friendlyFire false
team modify rood collisionRule pushOtherTeams
team modify blauw collisionRule pushOtherTeams
team modify mod collisionRule pushOtherTeams
defaultgamemode adventure
gamemode adventure @a

bossbar add 0 "MCQ - Pre-Game"
bossbar add 1 "MCQ - Game (test 1 minuut)"
bossbar add 2 "MCQ - Post-Game"
bossbar set minecraft:0 players @a
bossbar set minecraft:1 players @a
bossbar set minecraft:2 players @a
bossbar set minecraft:0 color red
bossbar set minecraft:1 color green
bossbar set minecraft:2 color purple
bossbar set minecraft:0 max 1
bossbar set minecraft:1 max 1
bossbar set minecraft:2 max 1
bossbar set minecraft:0 value 1
bossbar set minecraft:1 value 1
bossbar set minecraft:2 value 1
bossbar set minecraft:0 visible true
bossbar set minecraft:1 visible false
bossbar set minecraft:2 visible false
tellraw @a ["",{"text":"MCQuest is opgezet!","bold":true,"color":"gold"}]
title @a subtitle {"text":"Begint binnen 5 minuten!","color":"yellow"}
title @a title ["",{"text":"Minecraft ","bold":true,"color":"green"},{"text":"Quest","bold":true,"color":"red"}]
tellraw @a ["",{"text":"De MCQuest begint binnen 5 minuten!","color":"yellow"}]
execute as @a run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.0 1.0 1.0
function mcquest:default_mods
function mcquest:default_teams