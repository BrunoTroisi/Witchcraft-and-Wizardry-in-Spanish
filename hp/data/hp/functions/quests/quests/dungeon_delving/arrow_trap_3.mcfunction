# This is the arrow trap
execute if score arrowTrap3 global matches 0 run setblock 1773 62 799 minecraft:redstone_block
execute if score arrowTrap3 global matches 1 run setblock 1773 62 799 minecraft:stone
execute if score arrowTrap3 global matches 10 run setblock 1773 62 799 minecraft:redstone_block
execute if score arrowTrap3 global matches 11 run setblock 1773 62 799 minecraft:stone
execute if score arrowTrap3 global matches 20 run setblock 1773 62 799 minecraft:redstone_block
execute if score arrowTrap3 global matches 21 run setblock 1773 62 799 minecraft:stone
execute if score arrowTrap3 global matches 30 run setblock 1773 62 799 minecraft:redstone_block
execute if score arrowTrap3 global matches 31 run setblock 1773 62 799 minecraft:stone
execute if score arrowTrap3 global matches 40 run setblock 1773 62 799 minecraft:redstone_block
execute if score arrowTrap3 global matches 41 run setblock 1773 62 799 minecraft:stone
execute if score arrowTrap3 global matches 41 run data merge block 1773 61 799 {Items:[{Slot:0b,id:"minecraft:arrow",Count:64b},{Slot:1b,id:"minecraft:arrow",Count:64b},{Slot:2b,id:"minecraft:arrow",Count:64b},{Slot:3b,id:"minecraft:arrow",Count:64b},{Slot:4b,id:"minecraft:arrow",Count:64b},{Slot:5b,id:"minecraft:arrow",Count:64b},{Slot:6b,id:"minecraft:arrow",Count:64b},{Slot:7b,id:"minecraft:arrow",Count:64b},{Slot:8b,id:"minecraft:arrow",Count:64b}],Lock:"Locked"}

# Direction
execute unless score arrowTrap3 global matches 100.. run scoreboard players add arrowTrap3 global 1