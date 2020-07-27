#reset timer
scoreboard players set #countdown timer 0

#Countdown
execute if score #countdown timer matches 20..40 run replaceitem entity @a weapon.offhand minecraft:paper{CustomModelData:3}
execute if score #countdown timer matches 40..60 run replaceitem entity @a weapon.offhand minecraft:paper{CustomModelData:2}
execute if score #countdown timer matches 60..80 run replaceitem entity @a weapon.offhand minecraft:paper{CustomModelData:1}

#Clear Items
execute if score #countdown timer matches 81 run clear @a paper
execute if score #countdown timer matches 81 run kill @e[type=item]

#start
execute if score #countdown timer matches 80 run title @a subtitle {"text":"Is begonnen!","color":"yellow"}
execute if score #countdown timer matches 80 run title @a title ["",{"text":"Minecraft ","bold":true,"color":"green"},{"text":"Quest","bold":true,"color":"red"}]
