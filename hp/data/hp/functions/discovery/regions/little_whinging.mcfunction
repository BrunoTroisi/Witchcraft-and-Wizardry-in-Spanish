scoreboard players set @s discoverLocation 50

# Title
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1discover name {"text":"Little Whinging","color":"white","italic":"false"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2discover name {"text":"Little Whinging","color":"white","italic":"false"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3discover name {"text":"Little Whinging","color":"white","italic":"false"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4discover name {"text":"Little Whinging","color":"white","italic":"false"}
function hp:misc/update_bossbars

# Set location
scoreboard players set @s lastRegion 6
scoreboard players set @s lastArea 0