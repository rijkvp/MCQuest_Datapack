effect give @s minecraft:regeneration 2 255 true
effect give @s minecraft:resistance 2 255 true
effect give @s minecraft:weakness 2 255 true
effect give @s minecraft:saturation 2 255 true
effect give @s minecraft:invisibility 2 255 true
run tellraw @a {"text":"","color":"red","extra":[{"selector":"@s","bold":"true"} ,{"text":"  is","color":"white"},{"text":" dood","color":"red"},{"color":"red","text":" Gegaan"}]}

scoreboard players set @s deaths 0
