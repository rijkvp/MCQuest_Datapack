execute as @a run playsound minecraft:music_disc.chirp master @a ~ ~ ~ 1.0 1.0 1.0
title @a subtitle {"text":"Team rood heeft gewonnen!","color":"yellow"}
title @a title ["",{"text":"Rood ","bold":true,"color":"red"},{"text":"wint!","bold":true,"color":"gold"}]
tellraw @a ["",{"text":"Team rood heeft gewonnen!","color":"yellow"}]