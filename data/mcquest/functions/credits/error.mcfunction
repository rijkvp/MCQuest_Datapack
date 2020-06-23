
tellraw @a[scores={message=6..}] {"text":"Error: gebruik 1/5 en niet hoger","bold":true,"color":"dark_red"}\
tellraw @a[scores={credits=2..}] {"text":"Error: gebruik 1 en niet hoger","bold":true,"color":"dark_red"}
scoreboard players set @s message 0
scoreboard players set @s credits 0
