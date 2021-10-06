##############################################
# Brackium Emendo Lesson
##############################################
scoreboard players set @s questID 16
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.brackiumEmmendo"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

# Complete Quest Cheat
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add completeQuest
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add unlockedSpells
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s unlockedSpell 3
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tp @s 681.87 64.00 70.09 -70.52 -0.23
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Locate the charms classroom

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Mapa del Meroeador\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1551,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest,x=686,y=60,z=69,dx=29,dy=9,dz=10] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] unless entity @s[x=686,y=60,z=69,dx=29,dy=9,dz=10] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 687.96 61.00 73.99
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Trigger
execute as @s[scores={questState=1,lastLocation=5,discoverLocation=0},tag=inNormalState,tag=isTrackedQuest,x=686,y=60,z=69,dx=29,dy=9,dz=10,tag=play] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState,tag=isTrackedQuest] run scoreboard players operation @s trackQuestState = @s questState
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set flitwick p1convOverride 21
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set flitwick p2convOverride 21
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set flitwick p3convOverride 21
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set flitwick p4convOverride 21
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Mapa del Meroeador\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1551,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest,x=686,y=60,z=69,dx=29,dy=9,dz=10] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] unless entity @s[x=686,y=60,z=69,dx=29,dy=9,dz=10] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 687.96 61.00 73.99
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasLearnedBrackiumEmendo,tag=play] unless score @s trackedQuestID matches 16 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=!hasLearnedBrackiumEmendo,scores={trackedQuestID=16,trackQuestState=..2},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[tag=!hasLearnedBrackiumEmendo,scores={trackQuestState=2,lastLocation=5},x=686,y=60,z=69,dx=29,dy=9,dz=10,tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Espera a que todos se preparen (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Espera a que todos se preparen (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Espera a que todos se preparen (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Espera a que todos se preparen (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
# This weird double tag thing is because of a super strange bug I can't explain some people run into where all the commands below execute but they don't progress to the next
# Quest state. The tag "goToNextQuestState" is removed in set_quest, and so it should just execute everything again if it for some reason doesn't set the quest the first time
# Around
execute as @s[scores={questState=2},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add goToNextQuestState
execute as @s[tag=goToNextQuestState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 12
execute as @s[tag=newState] run tag @s add unlockedSpells
execute as @s[tag=newState] run scoreboard players set @s unlockedSpell 3
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 13
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=13}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run tag @s add cutsceneSlave
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set brackiumTimer p1Quests 1093
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set brackiumTimer p2Quests 1093
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set brackiumTimer p3Quests 1093
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set brackiumTimer p4Quests 1093
execute as @s[tag=newState] run tag @s add maraudersMapLocked
execute as @s[tag=newState] run tag @s add lockTrackedQuest
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Fight the waves of creatures (Oleada 1)

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Mapa del Meroeador\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1550,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1.. run scoreboard players remove brackiumTimer p1Quests 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1.. run scoreboard players remove brackiumTimer p2Quests 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1.. run scoreboard players remove brackiumTimer p3Quests 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1.. run scoreboard players remove brackiumTimer p4Quests 1


execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"¡Derrota a 5 Oleadas de enemigos!","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"¡Derrota a 5 Oleadas de enemigos!","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"¡Derrota a 5 Oleadas de enemigos!","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"¡Derrota a 5 Oleadas de enemigos!","color":"gold"}]

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Oleada 1","color":"gold"}]	
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Oleada 1","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Oleada 1","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Oleada 1","color":"gold"}]

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=3,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=3,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=3,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=3,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors

execute as @s[scores={questState=3,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 5 run function hp:quests/quests/brackium_emendo/wave1_enemies
execute as @s[scores={questState=3,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 5 run function hp:quests/quests/brackium_emendo/wave1_enemies
execute as @s[scores={questState=3,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 5 run function hp:quests/quests/brackium_emendo/wave1_enemies
execute as @s[scores={questState=3,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 5 run function hp:quests/quests/brackium_emendo/wave1_enemies

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1 at @s run function hp:music/music/wands_at_the_ready
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1 at @s run function hp:music/music/wands_at_the_ready
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1 at @s run function hp:music/music/wands_at_the_ready
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1 at @s run function hp:music/music/wands_at_the_ready

execute as @s[scores={questState=3,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=3,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=3,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=3,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors


# Count the enemies
scoreboard players set @s tmp 8
execute as @e[tag=creature,scores={waveID=1,questID=16}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 8)","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 8)","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 8)","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 8)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=3,playerID=1,tmp=8}] if score brackiumTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=3,playerID=2,tmp=8}] if score brackiumTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=3,playerID=3,tmp=8}] if score brackiumTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=3,playerID=4,tmp=8}] if score brackiumTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set brackiumTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set brackiumTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set brackiumTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set brackiumTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Fight the waves of creatures (Oleada 2)

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Mapa del Meroeador\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1550,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1.. run scoreboard players remove brackiumTimer p1Quests 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1.. run scoreboard players remove brackiumTimer p2Quests 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1.. run scoreboard players remove brackiumTimer p3Quests 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1.. run scoreboard players remove brackiumTimer p4Quests 1


execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"¡Oleada completa!","color":"gold"}]

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Oleada 2","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Oleada 2","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Oleada 2","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Oleada 2","color":"gold"}]

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=4,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=4,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=4,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=4,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors

execute as @s[scores={questState=4,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 5 run function hp:quests/quests/brackium_emendo/wave2_enemies
execute as @s[scores={questState=4,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 5 run function hp:quests/quests/brackium_emendo/wave2_enemies
execute as @s[scores={questState=4,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 5 run function hp:quests/quests/brackium_emendo/wave2_enemies
execute as @s[scores={questState=4,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 5 run function hp:quests/quests/brackium_emendo/wave2_enemies

execute as @s[scores={questState=4,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=4,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=4,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=4,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors



# Count the enemies
scoreboard players set @s tmp 15
execute as @e[tag=creature,scores={waveID=2,questID=16}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 15)","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 15)","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 15)","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 15)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=4,playerID=1,tmp=15}] if score brackiumTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=4,playerID=2,tmp=15}] if score brackiumTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=4,playerID=3,tmp=15}] if score brackiumTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=4,playerID=4,tmp=15}] if score brackiumTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set brackiumTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set brackiumTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set brackiumTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set brackiumTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Fight the waves of creatures (Oleada 3)

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Mapa del Meroeador\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1550,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1.. run scoreboard players remove brackiumTimer p1Quests 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1.. run scoreboard players remove brackiumTimer p2Quests 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1.. run scoreboard players remove brackiumTimer p3Quests 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1.. run scoreboard players remove brackiumTimer p4Quests 1


execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2


execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @a ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @a ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @a ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @a ~ ~ ~ 10000 1 1

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"¡Oleada completa!","color":"gold"}]

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @a ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @a ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @a ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @a ~ ~ ~ 10000 1 1

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Oleada 3","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Oleada 3","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Oleada 3","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Oleada 3","color":"gold"}]

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @a ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @a ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @a ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @a ~ ~ ~ 10000 1 1

execute as @s[scores={questState=5,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=5,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=5,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=5,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors

execute as @s[scores={questState=5,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 5 run function hp:quests/quests/brackium_emendo/wave3_enemies
execute as @s[scores={questState=5,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 5 run function hp:quests/quests/brackium_emendo/wave3_enemies
execute as @s[scores={questState=5,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 5 run function hp:quests/quests/brackium_emendo/wave3_enemies
execute as @s[scores={questState=5,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 5 run function hp:quests/quests/brackium_emendo/wave3_enemies

execute as @s[scores={questState=5,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=5,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=5,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=5,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors


# Count the enemies
scoreboard players set @s tmp 6
execute as @e[tag=creature,scores={waveID=3,questID=16}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 6)","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 6)","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 6)","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 6)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=5,playerID=1,tmp=6}] if score brackiumTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=5,playerID=2,tmp=6}] if score brackiumTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=5,playerID=3,tmp=6}] if score brackiumTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=5,playerID=4,tmp=6}] if score brackiumTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set brackiumTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set brackiumTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set brackiumTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set brackiumTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState


#############
## State 6 ###########################################################################################
#############
# Fight the waves of creatures (Oleada 4)

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Mapa del Meroeador\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1550,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1.. run scoreboard players remove brackiumTimer p1Quests 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1.. run scoreboard players remove brackiumTimer p2Quests 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1.. run scoreboard players remove brackiumTimer p3Quests 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1.. run scoreboard players remove brackiumTimer p4Quests 1


execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"¡Oleada completa!","color":"gold"}]

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Oleada 4","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Oleada 4","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Oleada 4","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Oleada 4","color":"gold"}]

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=6,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=6,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=6,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=6,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors

execute as @s[scores={questState=6,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 5 run function hp:quests/quests/brackium_emendo/wave4_enemies
execute as @s[scores={questState=6,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 5 run function hp:quests/quests/brackium_emendo/wave4_enemies
execute as @s[scores={questState=6,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 5 run function hp:quests/quests/brackium_emendo/wave4_enemies
execute as @s[scores={questState=6,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 5 run function hp:quests/quests/brackium_emendo/wave4_enemies

execute as @s[scores={questState=6,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=6,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=6,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=6,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors


# Count the enemies
scoreboard players set @s tmp 15
execute as @e[tag=creature,scores={waveID=4,questID=16}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 15)","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 15)","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 15)","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 15)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=6,playerID=1,tmp=15}] if score brackiumTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=6,playerID=2,tmp=15}] if score brackiumTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=6,playerID=3,tmp=15}] if score brackiumTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=6,playerID=4,tmp=15}] if score brackiumTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set brackiumTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set brackiumTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set brackiumTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set brackiumTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState




#############
## State 7 ###########################################################################################
#############
# Fight the waves of creatures (Oleada 5)

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Mapa del Meroeador\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1550,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1.. run scoreboard players remove brackiumTimer p1Quests 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1.. run scoreboard players remove brackiumTimer p2Quests 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1.. run scoreboard players remove brackiumTimer p3Quests 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1.. run scoreboard players remove brackiumTimer p4Quests 1


execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"¡Oleada completa!","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"¡Oleada completa!","color":"gold"}]

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Oleada final","color":"gold"}]
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Oleada final","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Oleada final","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Oleada final","color":"gold"}]

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

# Summoning the troll needs to happen before the other enemies in this kind of awkward way since the snowball that aggros the troll misses if it's spawned with the velocity, so it's aggroed somewhere on top where you can't see or hear it and then tped and given the right motion tag when the other enemies are summoned
execute as @s[scores={questState=7,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 15 run function hp:quests/quests/brackium_emendo/wave_5_troll
execute as @s[scores={questState=7,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 15 run function hp:quests/quests/brackium_emendo/wave_5_troll
execute as @s[scores={questState=7,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 15 run function hp:quests/quests/brackium_emendo/wave_5_troll
execute as @s[scores={questState=7,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 15 run function hp:quests/quests/brackium_emendo/wave_5_troll



execute as @s[scores={questState=7,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=7,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=7,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors
execute as @s[scores={questState=7,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 15 run function hp:quests/quests/brackium_emendo/open_doors

execute as @s[scores={questState=7,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 5 run function hp:quests/quests/brackium_emendo/wave5_enemies
execute as @s[scores={questState=7,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 5 run function hp:quests/quests/brackium_emendo/wave5_enemies
execute as @s[scores={questState=7,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 5 run function hp:quests/quests/brackium_emendo/wave5_enemies
execute as @s[scores={questState=7,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 5 run function hp:quests/quests/brackium_emendo/wave5_enemies

execute as @s[scores={questState=7,playerID=1},tag=gameLeader] if score brackiumTimer p1Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=7,playerID=2},tag=gameLeader] if score brackiumTimer p2Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=7,playerID=3},tag=gameLeader] if score brackiumTimer p3Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors
execute as @s[scores={questState=7,playerID=4},tag=gameLeader] if score brackiumTimer p4Quests matches 1 run function hp:quests/quests/brackium_emendo/close_doors


# Count the enemies
scoreboard players set @s tmp 10
execute as @e[tag=creature,scores={waveID=5,questID=16}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 10)","color":"gold"}]
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 10)","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 10)","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Derrota a los oponentes (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" de 10)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=7,playerID=1,tmp=10}] if score brackiumTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=7,playerID=2,tmp=10}] if score brackiumTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=7,playerID=3,tmp=10}] if score brackiumTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=7,playerID=4,tmp=10}] if score brackiumTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set flitwick p1convOverride 18
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set flitwick p2convOverride 18
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set flitwick p3convOverride 18
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set flitwick p4convOverride 18
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set brackiumTimer p1Quests 100
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set brackiumTimer p2Quests 100
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set brackiumTimer p3Quests 100
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set brackiumTimer p4Quests 100
execute as @s[tag=newState] run function hp:music/music/silence
execute as @s[tag=newState] run tag @s remove newState



#############
## State 8 ###########################################################################################
#############
# Speak to professor Flitwick

### Tracked Quest ###
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Mapa del Meroeador\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1549,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=8},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 709.37 64.38 72.47
execute as @s[scores={questState=8,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=6},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1.. run scoreboard players remove brackiumTimer p1Quests 1
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1.. run scoreboard players remove brackiumTimer p2Quests 1
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1.. run scoreboard players remove brackiumTimer p3Quests 1
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1.. run scoreboard players remove brackiumTimer p4Quests 1

### Function ###
execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score brackiumTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"¡Oponentes derrotados!","color":"gold"}]
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score brackiumTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"¡Oponentes derrotados!","color":"gold"}]
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score brackiumTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"¡Oponentes derrotados!","color":"gold"}]
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score brackiumTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"¡Oponentes derrotados!","color":"gold"}]

execute as @s[scores={questState=8,playerID=1}] if score brackiumTimer p1Quests matches 1 run scoreboard players set @s overrideRespawn 0
execute as @s[scores={questState=8,playerID=2}] if score brackiumTimer p2Quests matches 1 run scoreboard players set @s overrideRespawn 0
execute as @s[scores={questState=8,playerID=3}] if score brackiumTimer p3Quests matches 1 run scoreboard players set @s overrideRespawn 0
execute as @s[scores={questState=8,playerID=4}] if score brackiumTimer p4Quests matches 1 run scoreboard players set @s overrideRespawn 0
execute as @s[scores={questState=8,playerID=1}] if score brackiumTimer p1Quests matches 1 run scoreboard players set @s cutSceneID 14
execute as @s[scores={questState=8,playerID=2}] if score brackiumTimer p2Quests matches 1 run scoreboard players set @s cutSceneID 14
execute as @s[scores={questState=8,playerID=3}] if score brackiumTimer p3Quests matches 1 run scoreboard players set @s cutSceneID 14
execute as @s[scores={questState=8,playerID=4}] if score brackiumTimer p4Quests matches 1 run scoreboard players set @s cutSceneID 14
execute as @s[scores={questState=8,playerID=1}] if score brackiumTimer p1Quests matches 1 run function hp:cutscenes/init_cutscene
execute as @s[scores={questState=8,playerID=2}] if score brackiumTimer p2Quests matches 1 run function hp:cutscenes/init_cutscene
execute as @s[scores={questState=8,playerID=3}] if score brackiumTimer p3Quests matches 1 run function hp:cutscenes/init_cutscene
execute as @s[scores={questState=8,playerID=4}] if score brackiumTimer p4Quests matches 1 run function hp:cutscenes/init_cutscene



### Trigger ###
execute as @s[scores={questState=8},tag=inNormalState,tag=hasSpokenToFlitwickAfterBrackiumLesson] run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/timer/end_pensive_timer
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 29
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 120
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set flitwick p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set flitwick p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set flitwick p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set flitwick p4convOverride 1
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToFlitwickAfterBrackiumLesson
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle true
execute as @s[tag=completeQuest] run tag @s remove maraudersMapLocked
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] run tag @s add hasLearnedBrackiumEmendo
execute as @s[tag=completeQuest] unless entity @p[scores={trackedQuestID=16}] run scoreboard players set playerInBrackiumEmendoSpellChallenge global 0
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest