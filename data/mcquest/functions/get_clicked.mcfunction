#kill and reset everyting
scoreboard players set #bool select 0
kill @e[nbt={Item:{tag:{mcquest:1}}}]

#get the activated slot
execute as @a[scores={click=1..},team=,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run scoreboard players set @s cselect 4
#execute as @a[scores={click=1..},team=,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run team join spec @s
execute as @a[scores={click=1..},team=,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run scoreboard players set @s cselect 3
#execute as @a[scores={click=1..},team=,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run team join blauw @s
execute as @a[scores={click=1..},team=,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run scoreboard players set @s cselect 5
#execute as @a[scores={click=1..},team=,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run team join rood @s

# See wich block has been activated and then say "Ik heb team rood gejoined!" or if you dropped blue then "Ik heb team blauw gejoined"
execute if score @s cselect matches 3 store result score #bool cselect run tellraw @a {"text":"","color":"green","extra":[{"selector":"@s","bold":"true"} ,{"text":" Heeft team","color":"white"},{"text":" Rood","color":"red","bold":"true"},{"color":"yellow","text":" gejoined"}]}
execute if score @s cselect matches 5 store result score #bool cselect run tellraw @a {"text":"","color":"green","extra":[{"selector":"@s","bold":"true"} ,{"text":" Heeft team","color":"white"},{"text":" Blauw","color":"blue","bold":"true"},{"color":"yellow","text":" gejoined"}]}
execute if score @s cselect matches 4 store result score #bool cselect run tellraw @a {"text":"","color":"green","extra":[{"selector":"@s","bold":"true"} ,{"text":" Heeft team","color":"white"},{"text":" Spectator","color":"gray","bold":"true"},{"color":"yellow","text":" gejoined"}]}

# See wich block has been activated and then join that team what you just dropped
execute if score @s cselect matches 5 store result score #bool cselect run team join blauw @s
execute if score @s cselect matches 4 store result score #bool cselect run team join spec @s
execute if score @s cselect matches 4 store result score #bool cselect run tp ~ ~0.4 ~
execute if score @s cselect matches 3 store result score #bool cselect run team join rood @s

# Clear the special tag items
execute if score @s cselect matches 5 store result score #bool cselect run clear @s carrot_on_a_stick{mcquest:1b}
execute if score @s cselect matches 4 store result score #bool cselect run clear @s carrot_on_a_stick{mcquest:1b}
execute if score @s cselect matches 3 store result score #bool cselect run clear @s carrot_on_a_stick{mcquest:1b}
execute as @a[scores={click=1..},team=!,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run clear @s carrot_on_a_stick{mcquest:1b}
execute as @a[scores={click=1..},team=!,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run clear @s carrot_on_a_stick{mcquest:1b}
execute as @a[scores={click=1..},team=!,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run clear @s carrot_on_a_stick{mcquest:1b}
scoreboard players reset @s cselect