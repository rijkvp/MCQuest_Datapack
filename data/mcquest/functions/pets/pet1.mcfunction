kill @e[type=armor_stand,tag=altijdyourigames]
kill @e[type=armor_stand,tag=minecraftydaan]
execute at @a[name=AltijdYourigames] run summon armor_stand ~ ~ ~ {Small:1b,NoBasePlate:1b,ShowArms:1b,Marker:0b,HandItems:[{},{}],Pose:{Head:[51f,0f,0f]},Health:2000000f,Tags:["altijdyourigames"]}
execute as @a[name=AltijdYourigames] run replaceitem entity @s armor.head minecraft:player_head{SkullOwner:AltijdYourigames}