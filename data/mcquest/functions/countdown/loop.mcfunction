#give effects
execute if score #data_holder timer matches ..60 run effect give @a[team=!mod] minecraft:slowness 1 255 true
execute if score #data_holder timer matches ..60 run effect give @a[team=!mod] minecraft:blindness 2 255 true
execute if score #data_holder timer matches ..60 run effect give @a[team=!mod] minecraft:jump_boost 1 200 true
execute if score #data_holder timer matches ..60 run effect give @a[team=!mod] minecraft:weakness 1 255 true
execute if score #data_holder timer matches ..60 run effect give @a[team=!mod] minecraft:mining_fatigue 1 255 true

#cursor cant move
execute if score #data_holder timer matches ..80 run execute at @a[team=blauw] as @a[team=blauw] run tp @s ~ ~ ~ 90 0
execute if score #data_holder timer matches ..80 run execute at @a[team=rood] as @a[team=rood] run tp @s ~ ~ ~ -90 0

#Countdown
execute if score #data_holder timer matches 20..40 run replaceitem entity @a weapon.offhand minecraft:paper{CustomModelData:3}
execute if score #data_holder timer matches 40..60 run replaceitem entity @a weapon.offhand minecraft:paper{CustomModelData:2}
execute if score #data_holder timer matches 60..80 run replaceitem entity @a weapon.offhand minecraft:paper{CustomModelData:1}

#Clear Items
execute if score #data_holder timer matches 81 run clear @a paper
execute if score #data_holder timer matches 81 run kill @e[type=item]

#start
execute if score #data_holder timer matches 80 run title @a subtitle {"text":"Is begonnen!","color":"yellow"}
execute if score #data_holder timer matches 80 run title @a title ["",{"text":"Minecraft ","bold":true,"color":"green"},{"text":"Quest","bold":true,"color":"red"}]


#Countdown
execute unless score #data_holder timer matches ..120 if score #countdown timer matches 20..40 run replaceitem entity @a weapon.offhand minecraft:paper{CustomModelData:3}
execute unless score #data_holder timer matches ..120 if score #countdown timer matches 40..60 run replaceitem entity @a weapon.offhand minecraft:paper{CustomModelData:2}
execute unless score #data_holder timer matches ..120 if score #countdown timer matches 60..80 run replaceitem entity @a weapon.offhand minecraft:paper{CustomModelData:1}

#Clear Items
execute unless score #data_holder timer matches ..120 if score #countdown timer matches 81 run clear @a paper
execute unless score #data_holder timer matches ..120 if score #countdown timer matches 81 run kill @e[type=item]

#start
execute unless score #data_holder timer matches ..120 if score #countdown timer matches 80 run title @a subtitle {"text":"STOP!","color":"yellow"}
execute unless score #data_holder timer matches ..120 if score #countdown timer matches 80 run title @a title ["",{"text":"STOP ","bold":true,"color":"green"},{"text":"STOP","bold":true,"color":"red"}]

#always remove the items
execute if score #data_holder timer matches 120.. run clear @a paper
execute if score #data_holder timer matches 120.. run kill @e[type=item]