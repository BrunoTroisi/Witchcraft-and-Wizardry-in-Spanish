# Executed as Mortifago spawnpoint
execute as @e[tag=creaturePoint] if score @s nestID = @e[tag=focusNest,limit=1] nestID at @s unless entity @e[tag=largeSpiderCreature,distance=..2] run tag @s add potentialSpawnPoint

execute at @e[tag=potentialSpawnPoint,limit=1,sort=random] run function hp:creatures/troll/summon_troll
execute as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] run tag @s add belongingToNest
execute as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players operation @s nestID = @e[tag=focusNest,limit=1] nestID
execute as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] run tag @s remove trollCreatureIsBeingSummoned

tag @e[tag=potentialSpawnPoint] remove potentialSpawnPoint

scoreboard players remove @s[scores={spawnCount=1..}] spawnCount 1
