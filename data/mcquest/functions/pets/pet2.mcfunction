kill @e[type=armor_stand,tag=minecraftydaan]
execute anchored eyes run execute at @a[name=minecraftydaan] run summon armor_stand ^-1 ^-1 ^0.4 {Small:1b,NoBasePlate:1b,ShowArms:1b,Marker:0b,HandItems:[{},{}],Pose:{Head:[51f,0f,0f]},Health:2000000f,Tags:["minecraftydaan"]}
execute as @a[name=minecraftydaan] run replaceitem entity @s armor.head minecraft:player_head{SkullOwner:minecraftyDaan}