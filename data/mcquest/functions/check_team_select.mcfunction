# Check if team selected
execute if score @s select matches 5 store result score #bool select run function mcquest:joined_team
execute if score @s select matches 4 store result score #bool select run function mcquest:joined_team
execute if score @s select matches 3 store result score #bool select run function mcquest:joined_team

# Clear inventory
clear @s red_wool{mcquest:1b}
clear @s blue_wool{mcquest:1b}
clear @s gray_wool{mcquest:1b}
