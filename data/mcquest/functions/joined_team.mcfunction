# See wich block has been activated and then say "Ik heb team rood gejoined!" or if you dropped blue then "Ik heb team blauw gejoined"
execute if score @s select matches 3 store result score #bool select run tellraw @a {"text":"","color":"green","extra":[{"selector":"@s","bold":"true"} ,{"text":" Heeft team","color":"white"},{"text":" Rood","color":"red","bold":"true"},{"color":"yellow","text":" gejoined"}]}
execute if score @s select matches 5 store result score #bool select run tellraw @a {"text":"","color":"green","extra":[{"selector":"@s","bold":"true"} ,{"text":" Heeft team","color":"white"},{"text":" Blauw","color":"blue","bold":"true"},{"color":"yellow","text":" gejoined"}]}
execute if score @s select matches 4 store result score #bool select run tellraw @a {"text":"","color":"green","extra":[{"selector":"@s","bold":"true"} ,{"text":" Heeft team","color":"white"},{"text":" Spectator","color":"gray","bold":"true"},{"color":"yellow","text":" gejoined"}]}

# See wich block has been activated and then join that team what you just dropped
execute if score @s select matches 5 store result score #bool select run team join blauw @s
execute if score @s select matches 4 store result score #bool select run team join spec @s
execute if score @s select matches 3 store result score #bool select run team join rood @s

# Clear the special tag items
clear @s red_wool{mcquest:1b}
clear @s blue_wool{mcquest:1b}
clear @s gray_wool{mcquest:1b}
