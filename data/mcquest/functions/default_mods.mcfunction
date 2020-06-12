

#give the default mods the team
team leave @a
team join mod richelbilderbeek
team join mod _DaanDeBanaan_
team join mod AltijdYourigames

#setup
op @a[team=mod]
deop @a[team=!mod]
gamemode creative @a[team=mod]

#message
tellraw @a ["",{"text":"Richel,Daan & Youri zijn nu moderator en de rest niet (meer)! Zij moeten nu iedereen aan hun team toevoegen!","color":"green"}]