# Give the default mods the team

team leave @a
team join mod richelbilderbeek
team join mod MinecraftyDaan
team join mod AltijdYourigames

gamemode creative @a[team=mod]
function mcquest:set_op

# Message
tellraw @a ["",{"text":"Richel, Daan & Youri zijn nu moderator en de rest niet (meer)! Zij moeten nu iedereen aan hun team toevoegen!","color":"green"}]