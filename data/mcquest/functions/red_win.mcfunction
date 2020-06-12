#Play music
execute as @a run playsound minecraft:music_disc.chirp master @a ~ ~ ~ 1.0 1.0 1.0


#make a subtitile witch the text is "Team rood heeft gewonnen" wich the color is yellow
title @a subtitle {"text":"Team rood heeft gewonnen!","color":"yellow"}


#make a title witch the text is "Rood wint!" wich the color is red,gold and bold
title @a title ["",{"text":"Rood ","bold":true,"color":"red"},{"text":"wint!","bold":true,"color":"gold"}]
tellraw @a ["",{"text":"Team rood heeft gewonnen!","color":"yellow"}]