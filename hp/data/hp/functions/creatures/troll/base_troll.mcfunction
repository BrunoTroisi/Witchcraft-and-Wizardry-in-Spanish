# Despawn if nest skeleton
execute as @s[tag=belongingToNest] at @s unless entity @p[distance=..60] run function hp:creatures/remove_creature

# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100

# This is to aggro the iron golem when you hurt it in case it was somehow un-aggroed
execute at @s if score @s creatureHealth < @s oldHealth run scoreboard players set @s tmp2 11
execute at @s if score @s creatureHealth < @s oldHealth run playsound minecraft:entity.iron_golem.custom_hit master @a ~ ~ ~ 1 1
scoreboard players operation @s oldHealth = @s creatureHealth
# Kill troll
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/troll/troll_death

# Damage nearby players
execute at @s[scores={tmp=0}] run data merge entity @s {Invulnerable:1b}
execute as @s[scores={tmp=1}] at @p[distance=..2.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] facing entity @s feet rotated ~ 0 run summon creeper ^ ^1 ^0.5 {Silent:1b,Fuse:1s,ignited:60b,ExplosionRadius:1}
execute as @s[scores={tmp=1}] at @p[distance=..2.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run playsound minecraft:entity.iron_golem.custom_attack master @a ~ ~ ~ 1 1
execute at @s[scores={tmp=1}] as @p[distance=..2.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run effect give @s minecraft:instant_damage 1 3 true
execute at @s[scores={tmp=4}] run data merge entity @s {Invulnerable:0b}

scoreboard players add @s[scores={tmp=..39}] tmp 1
execute at @s[scores={tmp=40}] if entity @p[distance=..2.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s tmp 0

# If the player is too far away
execute as @s[tag=!playerIsTooFarAway] unless entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerIsTooFarAway
execute as @s[tag=playerIsTooFarAway] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],Owner:[I;0,0,0,5]}
execute as @s[tag=playerIsTooFarAway] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[0] int 1 run data get entity @p[tag=activePlayer] UUID[0]
execute as @s[tag=playerIsTooFarAway] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[1] int 1 run data get entity @p[tag=activePlayer] UUID[1]
execute as @s[tag=playerIsTooFarAway] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[2] int 1 run data get entity @p[tag=activePlayer] UUID[2]
execute as @s[tag=playerIsTooFarAway] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[3] int 1 run data get entity @p[tag=activePlayer] UUID[3]
execute as @s[tag=playerIsTooFarAway] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @e[tag=trollAggro,limit=1,sort=nearest] run tag @s remove trollAggro
execute as @s[tag=playerIsTooFarAway] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s remove playerIsTooFarAway

# If the player relogs
execute if entity @p[scores={relogTimer=1},distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],Owner:[I;0,0,0,0],Tags:["trollAggro"]}
execute if entity @p[scores={relogTimer=1},distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[0] int 1 run data get entity @p[tag=activePlayer] UUID[0]
execute if entity @p[scores={relogTimer=1},distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[1] int 1 run data get entity @p[tag=activePlayer] UUID[1]
execute if entity @p[scores={relogTimer=1},distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[2] int 1 run data get entity @p[tag=activePlayer] UUID[2]
execute if entity @p[scores={relogTimer=1},distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[3] int 1 run data get entity @p[tag=activePlayer] UUID[3]
execute if entity @p[scores={relogTimer=1},distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @e[tag=trollAggro,limit=1,sort=nearest] run tag @s remove trollAggro