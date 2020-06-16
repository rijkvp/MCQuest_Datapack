execute as @a[scores={deaths=1..}] run effect give @s minecraft:regeneration 2 255 true
execute as @a[scores={deaths=1..}] run effect give @s minecraft:resistance 2 255 true
execute as @a[scores={deaths=1..}] run effect give @s minecraft:weakness 2 255 true
execute as @a[scores={deaths=1..}] run effect give @s minecraft:saturation 2 255 true
execute as @a[scores={deaths=1..}] run effect give @s minecraft:invisibility 2 255 true

scoreboard players set @a deaths 0
