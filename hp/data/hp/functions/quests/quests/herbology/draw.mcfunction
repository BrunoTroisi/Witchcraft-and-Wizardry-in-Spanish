#############
## State 1 ##
#############

# Draw
execute as @e[type=armor_stand,tag=focusInventoryOption,tag=!selected,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"ˈˈˈ   \",\"color\":\"dark_gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Herbologia\",\"color\":\"gray\"},{\"text\":\"]   ˈˈ\",\"color\":\"dark_gray\"}]"}
execute as @e[type=armor_stand,tag=focusInventoryOption,tag=selected,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\" ˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Herbologia\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}
execute as @e[type=armor_stand,tag=focusInventoryIcon,tag=isTrackedQuest,limit=1] run data merge entity @s {CustomName:"[{\"text\":\"  ˈ°ˈ\"}]"}
execute as @e[type=armor_stand,tag=focusInventoryIcon,tag=!isTrackedQuest,limit=1] run data merge entity @s {CustomName:"[{\"text\":\"  ± \"}]"}

#############
## State 1 ##
#############
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1..2}] hotbar.0 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1508,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1..2}] hotbar.1 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1508,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1..2}] hotbar.2 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1508,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1..2}] hotbar.3 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1508,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1..2}] hotbar.4 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1508,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1..2}] hotbar.5 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1508,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1..2}] hotbar.6 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1508,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1..2}] hotbar.7 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1508,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1..2}] hotbar.8 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1508,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}

#############
## State 3 ##
#############
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=3}] hotbar.0 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1507,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=3}] hotbar.1 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1507,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=3}] hotbar.2 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1507,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=3}] hotbar.3 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1507,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=3}] hotbar.4 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1507,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=3}] hotbar.5 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1507,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=3}] hotbar.6 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1507,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=3}] hotbar.7 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1507,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=3}] hotbar.8 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1507,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}

################
## State 4..5 ##
################
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=4..5}] hotbar.0 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1506,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=4..5}] hotbar.1 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1506,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=4..5}] hotbar.2 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1506,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=4..5}] hotbar.3 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1506,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=4..5}] hotbar.4 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1506,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=4..5}] hotbar.5 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1506,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=4..5}] hotbar.6 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1506,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=4..5}] hotbar.7 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1506,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=4..5}] hotbar.8 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1506,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}

###############
## Completed ##
###############
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.0 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1505,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.1 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1505,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.2 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1505,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.3 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1505,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.4 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1505,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.5 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1505,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.6 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1505,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.7 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1505,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.8 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1505,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
