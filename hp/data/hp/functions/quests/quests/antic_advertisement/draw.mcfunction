#############
## State 1 ##
#############

# Draw
execute as @e[type=armor_stand,tag=focusInventoryOption,tag=!selected,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"ˈˈˈ   \",\"color\":\"dark_gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Anuncio Anticuado\",\"color\":\"gray\"},{\"text\":\"]   ˈˈ\",\"color\":\"dark_gray\"}]"}
execute as @e[type=armor_stand,tag=focusInventoryOption,tag=selected,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\" ˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Anuncio Anticuado\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}
execute as @e[type=armor_stand,tag=focusInventoryIcon,tag=isTrackedQuest,limit=1] run data merge entity @s {CustomName:"[{\"text\":\"  ˈ°ˈ\"}]"}
execute as @e[type=armor_stand,tag=focusInventoryIcon,tag=!isTrackedQuest,limit=1] run data merge entity @s {CustomName:"[{\"text\":\"  ± \"}]"}


execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1}] hotbar.0 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1383,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1}] hotbar.1 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1383,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1}] hotbar.2 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1383,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1}] hotbar.3 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1383,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1}] hotbar.4 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1383,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1}] hotbar.5 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1383,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1}] hotbar.6 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1383,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1}] hotbar.7 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1383,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=1}] hotbar.8 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1383,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}

execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=2..6}] hotbar.0 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1382,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=2..6}] hotbar.1 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1382,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=2..6}] hotbar.2 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1382,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=2..6}] hotbar.3 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1382,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=2..6}] hotbar.4 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1382,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=2..6}] hotbar.5 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1382,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=2..6}] hotbar.6 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1382,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=2..6}] hotbar.7 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1382,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=2..6}] hotbar.8 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1382,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}

execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=7}] hotbar.0 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1381,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=7}] hotbar.1 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1381,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=7}] hotbar.2 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1381,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=7}] hotbar.3 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1381,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=7}] hotbar.4 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1381,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=7}] hotbar.5 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1381,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=7}] hotbar.6 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1381,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=7}] hotbar.7 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1381,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=1,questState=7}] hotbar.8 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1381,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}


###############
## Completed ##
###############
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.0 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1380,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.1 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1380,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.2 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1380,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.3 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1380,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.4 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1380,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.5 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1380,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.6 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1380,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.7 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1380,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}
execute if entity @s[tag=focusInventoryOptionIsSelected] run replaceitem entity @s[scores={questMenu=3,questState=-1}] hotbar.8 minecraft:diamond_hoe{display:{Name:"{\"text\":\" \"}"},Damage:1380,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-99999,Operation:0,UUID:[I;1997641946,856640959,-1199930564,-1073699668]}],HideFlags:63}