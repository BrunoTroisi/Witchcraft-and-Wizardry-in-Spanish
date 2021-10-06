# From what I can tell the only way to make shulker bullets target a specific spot is if you also give it an entity UUID (even though you can also specify coordinates? Why??).
# Because of that I summon an area effect cloud with a predetermined UUID, based on which player is closest, and summon the shulker bullet with that entity as its target.
# By teleporting the area effect cloud to the player, I can make the shulker_bullet follow the player

execute as @p[tag=play] at @s if entity @s[scores={playerID=1}] unless entity 0-0-0-0-1 run summon armor_stand ~ ~ ~ {UUID:[I;0,0,0,1],Tags:["shulkerTarget"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @p[tag=play] at @s if entity @s[scores={playerID=2}] unless entity 0-0-0-0-2 run summon armor_stand ~ ~ ~ {UUID:[I;0,0,0,2],Tags:["shulkerTarget"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @p[tag=play] at @s if entity @s[scores={playerID=3}] unless entity 0-0-0-0-3 run summon armor_stand ~ ~ ~ {UUID:[I;0,0,0,3],Tags:["shulkerTarget"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @p[tag=play] at @s if entity @s[scores={playerID=4}] unless entity 0-0-0-0-4 run summon armor_stand ~ ~ ~ {UUID:[I;0,0,0,4],Tags:["shulkerTarget"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}

execute as @p[tag=play] at @s if entity @s[scores={playerID=1}] run tp 0-0-0-0-1 10000 0 0
execute as @p[tag=play] at @s if entity @s[scores={playerID=2}] run tp 0-0-0-0-2 10000 0 0
execute as @p[tag=play] at @s if entity @s[scores={playerID=3}] run tp 0-0-0-0-3 10000 0 0
execute as @p[tag=play] at @s if entity @s[scores={playerID=4}] run tp 0-0-0-0-4 10000 0 0

execute as @p[tag=play] if entity @s[scores={playerID=1}] run summon shulker_bullet ~ ~ ~ {NoGravity:1b,Tags:["darkWizardProjectile","darkWizardProjectileIsBeingSummoned"],Steps:5,Dir:5,TXD:10000d,TYD:0d,TZD:0d,Target:[I;0,0,0,1]}
execute as @p[tag=play] if entity @s[scores={playerID=2}] run summon shulker_bullet ~ ~ ~ {NoGravity:1b,Tags:["darkWizardProjectile","darkWizardProjectileIsBeingSummoned"],Steps:5,Dir:5,TXD:10000d,TYD:0d,TZD:0d,Target:[I;0,0,0,2]}
execute as @p[tag=play] if entity @s[scores={playerID=3}] run summon shulker_bullet ~ ~ ~ {NoGravity:1b,Tags:["darkWizardProjectile","darkWizardProjectileIsBeingSummoned"],Steps:5,Dir:5,TXD:10000d,TYD:0d,TZD:0d,Target:[I;0,0,0,3]}
execute as @p[tag=play] if entity @s[scores={playerID=4}] run summon shulker_bullet ~ ~ ~ {NoGravity:1b,Tags:["darkWizardProjectile","darkWizardProjectileIsBeingSummoned"],Steps:5,Dir:5,TXD:10000d,TYD:0d,TZD:0d,Target:[I;0,0,0,4]}
# execute as @e[tag=darkWizardProjectileIsBeingSummoned] store result entity @s TXD double 1 run data get entity @p Pos[0] 1
# execute as @e[tag=darkWizardProjectileIsBeingSummoned] store result entity @s TYD double 1 run data get entity @p Pos[1] 1
# execute as @e[tag=darkWizardProjectileIsBeingSummoned] store result entity @s TZD double 1 run data get entity @p Pos[2] 1

execute as @e[tag=darkWizardProjectileIsBeingSummoned,limit=1] run tag @s remove darkWizardProjectileIsBeingSummoned 

# Kill the vex
tp @s ~ ~-1000 ~
kill @s

