#kill and reset everyting
scoreboard players set @s drop 1
scoreboard players set #bool select 0
kill @e[nbt={Item:{tag:{mcquest:1}}}]

#get the activated slot
execute unless data entity @s[team=] SelectedItem[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}] run scoreboard players set @s select 5
execute unless data entity @s[team=] SelectedItem[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}] run scoreboard players set @s select 4
execute unless data entity @s[team=] SelectedItem[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}] run scoreboard players set @s select 3
execute if score #bool select matches 0 run function mcquest:check_team_select


scoreboard players reset @s select