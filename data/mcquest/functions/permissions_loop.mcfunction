op @a[team=mod]
deop @a[team=!mod]
gamemode creative @a[team=mod, gamemode=survival]
# Set gm to survival if you're not an mod and in another team
gamemode survival @a[team=!mod, team=!]
# Set gm to spectator if you're not in a team
gamemode spectator @a[team=]