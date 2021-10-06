execute positioned 5999.5 37.59 25.14 run function hp:creatures/dark_spirit/summon_dark_spirit
execute positioned 6000.5 37.59 25.14 run function hp:creatures/dark_spirit/summon_dark_spirit
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 16
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = brackiumSpellChallengeID global
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 3
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.0d,1.0d,-2.1d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.1d,-2.2d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,0.9d,-2.3d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.0d,-2.05d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.05d,-2.01d]}

execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:resistance 2 255 true
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:jump_boost 2 255 true
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run tag @s add brackiumEmendoClassWaveThreeEnemy
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run tag @s remove darkSpiritCreatureIsBeingSummoned



execute positioned 6025.14 36.66 1.5 run function hp:creatures/dark_spirit/summon_dark_spirit
execute positioned 6025.14 36.66 -0.5 run function hp:creatures/dark_spirit/summon_dark_spirit

execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 16
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = brackiumSpellChallengeID global
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 3
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] run data merge entity @s {Motion:[-2.1d,1.0d,0.0d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.2d,1.1d,0.0d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.3d,0.9d,0.0d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.05d,1.0d,0.0d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.01d,1.05d,0.0d]}

execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:resistance 2 255 true
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:jump_boost 2 255 true
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run tag @s add brackiumEmendoClassWaveThreeEnemy
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run tag @s remove darkSpiritCreatureIsBeingSummoned




execute positioned 5999.5 37.59 -24.14 run function hp:creatures/dark_spirit/summon_dark_spirit
execute positioned 6001.5 37.59 -24.14 run function hp:creatures/dark_spirit/summon_dark_spirit

execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 16
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = brackiumSpellChallengeID global
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 3
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.0d,1.0d,2.1d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.1d,2.2d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,0.9d,2.3d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.0d,2.05d]}
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.05d,2.01d]}

execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:resistance 2 255 true
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:jump_boost 2 255 true
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run tag @s add brackiumEmendoClassWaveThreeEnemy
execute as @e[tag=darkSpiritCreatureIsBeingSummoned,sort=nearest] run tag @s remove darkSpiritCreatureIsBeingSummoned