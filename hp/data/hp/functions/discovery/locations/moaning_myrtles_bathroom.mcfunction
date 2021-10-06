# On Discover
execute as @s[tag=!discovered_moaning_myrtles_bathroom,tag=!inProperCutScene,scores={playerID=1}] run bossbar set minecraft:player1empty name {"text":"Descubierto","color":"white","italic":"true"}
execute as @s[tag=!discovered_moaning_myrtles_bathroom,tag=!inProperCutScene,scores={playerID=2}] run bossbar set minecraft:player2empty name {"text":"Descubierto","color":"white","italic":"true"}
execute as @s[tag=!discovered_moaning_myrtles_bathroom,tag=!inProperCutScene,scores={playerID=3}] run bossbar set minecraft:player3empty name {"text":"Descubierto","color":"white","italic":"true"}
execute as @s[tag=!discovered_moaning_myrtles_bathroom,tag=!inProperCutScene,scores={playerID=4}] run bossbar set minecraft:player4empty name {"text":"Descubierto","color":"white","italic":"true"}
execute at @s[tag=!discovered_moaning_myrtles_bathroom,tag=!inProperCutScene] run playsound minecraft:custom.ui.discovery.discover_location master @s ~ ~ ~ 10 1 1
# Unlock location if it has not been Descubierto
execute as @s[tag=!discovered_moaning_myrtles_bathroom,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 19
execute as @s[tag=!discovered_moaning_myrtles_bathroom,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_moaning_myrtles_bathroom,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_moaning_myrtles_bathroom,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_moaning_myrtles_bathroom,tag=!inProperCutScene] run tag @s add discovered_moaning_myrtles_bathroom

# Title
execute as @s[scores={playerID=1},tag=!inProperCutScene] run bossbar set minecraft:player1discover name {"text":"El baño de Myrtle la Llorona","color":"white","italic":"false"}
execute as @s[scores={playerID=2},tag=!inProperCutScene] run bossbar set minecraft:player2discover name {"text":"El baño de Myrtle la Llorona","color":"white","italic":"false"}
execute as @s[scores={playerID=3},tag=!inProperCutScene] run bossbar set minecraft:player3discover name {"text":"El baño de Myrtle la Llorona","color":"white","italic":"false"}
execute as @s[scores={playerID=4},tag=!inProperCutScene] run bossbar set minecraft:player4discover name {"text":"El baño de Myrtle la Llorona","color":"white","italic":"false"}
execute as @s[tag=!inProperCutScene] run function hp:misc/update_bossbars

# Set location
scoreboard players set @s lastRegion 1
scoreboard players set @s lastArea 2
scoreboard players set @s lastLocation 19