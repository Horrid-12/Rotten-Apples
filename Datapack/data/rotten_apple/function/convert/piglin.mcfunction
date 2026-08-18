# Convert Piglin/Piglin Brute → Zombified Piglin
# Runs as the piglin or piglin_brute, at their position

summon minecraft:zombified_piglin ~ ~ ~ {Tags:["rotten_apple_new"]}

# Copy identity data
data modify entity @e[type=minecraft:zombified_piglin,tag=rotten_apple_new,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[type=minecraft:zombified_piglin,tag=rotten_apple_new,limit=1,sort=nearest] CustomName set from entity @s CustomName

# Effects
particle minecraft:smoke ~ ~1 ~ 0.35 0.5 0.35 0.02 24 force
playsound minecraft:entity.piglin.converted_to_zombified hostile @a[distance=..16] ~ ~ ~ 1 1

# Signal to the player
tag @a[tag=ra_eating,limit=1] add ra_converted
tag @a[tag=ra_eating,limit=1] add ra_done_piglin
title @a[tag=ra_eating,limit=1] actionbar {"text":"Piglin has been corrupted...","color":"dark_green","italic":true}

# Cleanup
tag @e[type=minecraft:zombified_piglin,tag=rotten_apple_new] remove rotten_apple_new
kill @s
