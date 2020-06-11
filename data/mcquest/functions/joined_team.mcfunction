execute if score @s select matches 3 store result score #bool select run say Ik heb team rood gejoined!
execute if score @s select matches 5 store result score #bool select run say Ik heb team blauw gejoined!

execute if score @s select matches 3 store result score #bool select run clear @s red_wool{mcquest:1b}
execute if score @s select matches 5 store result score #bool select run clear @s blue_wool{mcquest:1b}