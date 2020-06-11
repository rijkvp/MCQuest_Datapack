execute if score @s select matches 5 store result score #bool select run team join blauw @s
execute if score @s select matches 3 store result score #bool select run team join rood @s 
clear @s red_wool{mcquest:1b}
clear @s blue_wool{mcquest:1b}
# This doesn't work
# execute if score @s select matches 5 store result score #bool select run function mcquest:joined_team
# execute if score @s select matches 3 store result score #bool select run function mcquest:joined_team

