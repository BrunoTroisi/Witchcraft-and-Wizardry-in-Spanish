summon iron_golem ~ ~ ~ {Silent:0b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Team:"Creature",Tags:["creature","trollCreature","trollCreatureIsBeingSummoned","keep"],UUID:[I;0,0,0,10],Health:200f,Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.followRange,Base:100}]}
execute as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.trollID int 1 run scoreboard players set @s trollID 1
execute as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] at @s run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],Owner:[I;0,0,0,5],Tags:["trollAggro"]}
execute at @s as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[0] int 1 run data get entity @p UUID[0]
execute at @s as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[1] int 1 run data get entity @p UUID[1]
execute at @s as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[2] int 1 run data get entity @p UUID[2]
execute at @s as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[3] int 1 run data get entity @p UUID[3]
execute at @s as @e[tag=trollAggro,limit=1,sort=nearest] run tag @s remove trollAggro

execute as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] run function hp:creatures/setup_health
execute as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] run scoreboard players set @s tmp 4