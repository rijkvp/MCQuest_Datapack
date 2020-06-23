# Blue has won text
execute as @a run playsound minecraft:music_disc.chirp master @a ~ ~ ~ 1.0 1.0 1.0
title @a subtitle {"text":"Team blauw heeft gewonnen!","color":"yellow"}
title @a title ["",{"text":"Blauw ","bold":true,"color":"blue"},{"text":"wint!","bold":true,"color":"gold"}]
tellraw @a ["",{"text":"Team blauw heeft gewonnen!","color":"yellow"}] 
