gamerule commandBlockOutput false
gamerule mobGriefing false
gamerule sendCommandFeedback false
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
tellraw @a ["",{"text":"MCQuest is opgezet!","bold":true,"color":"gold"}]