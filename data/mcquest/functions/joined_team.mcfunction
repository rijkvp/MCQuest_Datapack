
#See wich block has been activated and then say "Ik heb team rood gejoined!" or if you dropped blue then "Ik heb team blauw gejoined"
execute if score @s select matches 3 store result score #bool select run say Ik heb team rood gejoined!
execute if score @s select matches 5 store result score #bool select run say Ik heb team blauw gejoined

#See wich block has been activated and then join that team what you just dropped
execute if score @s select matches 5 store result score #bool select run team join blauw @s
execute if score @s select matches 3 store result score #bool select run team join rood @s

#clear the special tag items
clear @s red_wool{mcquest:1b}
clear @s blue_wool{mcquest:1b}