

scoreboard players set @s drop 0
scoreboard players set #bool select 0
kill @e[nbt={Item:{tag:{test:1}}}]

execute unless data entity @s[team=] Inventory[{Slot:5b}] run scoreboard players set @s select 5
execute unless data entity @s Inventory[{Slot:3b}] run scoreboard players set @s select 3
execute if score #bool select matches 0 run function mcquest:check_team_select


scoreboard players reset @s select