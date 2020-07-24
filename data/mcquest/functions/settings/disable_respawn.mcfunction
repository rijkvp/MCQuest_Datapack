scoreboard players reset @a deaths
scoreboard players set #data_holder respawn_disabled 1
title @a times 20 100 20
title @a subtitle {"text":"Je kan nu niet meer respawnen!","color":"yellow"}
title @a title ["",{"text":"PvP","bold":true,"underlined":true,"color":"dark_red"},{"text":" ingeschakeld!","color":"gold"}]
tellraw @a ["",{"text":"PvP","bold":true,"color":"dark_red"},{"text":" is ingeschakeld!","color":"gold"},{"text":" Je kan nu","color":"yellow"},{"text":" ","color":"gold"},{"text":"niet","underlined":true,"color":"dark_red"},{"text":" meer respawnen!","color":"yellow"}]
schedule function mcquest:playsound 1t
