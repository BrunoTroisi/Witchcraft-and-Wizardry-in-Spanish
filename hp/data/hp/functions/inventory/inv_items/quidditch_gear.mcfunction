execute if entity @s[tag=selected] run scoreboard players set @p[tag=activePlayer] inspectSound 3
execute as @s run scoreboard players set @s money 30
execute unless entity @p[tag=activePlayer,scores={clothesSlot3ID=103}] if entity @s[tag=selected] run scoreboard players set @p[tag=activePlayer] inspectType 1
execute if entity @p[tag=activePlayer,scores={clothesSlot3ID=103}] if entity @s[tag=selected] run scoreboard players set @p[tag=activePlayer] inspectType 2
execute if entity @p[tag=activePlayer,tag=buy] if score @s money > @p[tag=activePlayer] money run tag @s add cantAffordItem
execute as @s[tag=!cantAffordItem] run data merge entity @s {CustomName:"[\"\",{\"text\":\"   \",\"color\":\"dark_gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Sueter de la Casa\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"},{\"text\":\"                       ˈˈ\"},{\"text\":\"(\",\"color\":\"dark_gray\"},{\"text\":\"30\",\"color\":\"gray\",\"italic\":\"true\"},{\"text\":\")\",\"color\":\"dark_gray\"}]"}
execute if entity @p[tag=activePlayer,tag=!invInspectItem] as @s[tag=!cantAffordItem,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Sueter de la Casa\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"},{\"text\":\"                       ˈˈ\"},{\"text\":\"(\",\"color\":\"dark_gray\"},{\"text\":\"30\",\"color\":\"gray\",\"italic\":\"true\"},{\"text\":\")\",\"color\":\"dark_gray\"}]"}
execute as @s[tag=cantAffordItem] run data merge entity @s {CustomName:"[\"\",{\"text\":\"   \",\"color\":\"dark_gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Sueter de la Casa\",\"color\":\"dark_gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"},{\"text\":\"                       ˈˈ\"},{\"text\":\"(\",\"color\":\"dark_gray\"},{\"text\":\"30\",\"color\":\"red\",\"italic\":\"true\"},{\"text\":\")\",\"color\":\"dark_gray\"}]"}
execute if entity @p[tag=activePlayer,tag=!invInspectItem] as @s[tag=cantAffordItem,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Sueter de la Casa\",\"color\":\"dark_gray\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"},{\"text\":\"                       ˈˈ\"},{\"text\":\"(\",\"color\":\"dark_gray\"},{\"text\":\"30\",\"color\":\"red\",\"italic\":\"true\"},{\"text\":\")\",\"color\":\"dark_gray\"}]"}
execute if entity @p[tag=activePlayer,scores={house=0}] as @s[tag=!cantAffordItem] as @e[type=armor_stand,tag=focusInventoryIcon,limit=1] run data merge entity @s {CustomName:"[{\"text\":\"   \"}]"}
execute if entity @p[tag=activePlayer,scores={house=1}] as @s[tag=!cantAffordItem] as @e[type=armor_stand,tag=focusInventoryIcon,limit=1] run data merge entity @s {CustomName:"[{\"text\":\"   \"}]"}
execute if entity @p[tag=activePlayer,scores={house=2}] as @s[tag=!cantAffordItem] as @e[type=armor_stand,tag=focusInventoryIcon,limit=1] run data merge entity @s {CustomName:"[{\"text\":\"   \"}]"}
execute if entity @p[tag=activePlayer,scores={house=3}] as @s[tag=!cantAffordItem] as @e[type=armor_stand,tag=focusInventoryIcon,limit=1] run data merge entity @s {CustomName:"[{\"text\":\"   \"}]"}
execute if entity @p[tag=activePlayer,scores={house=4}] as @s[tag=!cantAffordItem] as @e[type=armor_stand,tag=focusInventoryIcon,limit=1] run data merge entity @s {CustomName:"[{\"text\":\"   \"}]"}
execute as @s[tag=cantAffordItem] as @e[type=armor_stand,tag=focusInventoryIcon,limit=1] run data merge entity @s {CustomName:"[{\"text\":\"   \"}]"}