# Convert Nautilus → Zombie Nautilus
# Runs as the nautilus, at the nautilus's position

summon minecraft:zombie_nautilus ~ ~ ~ {Tags:["rotten_apple_new"]}

# Copy identity data
data modify entity @e[type=minecraft:zombie_nautilus,tag=rotten_apple_new,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[type=minecraft:zombie_nautilus,tag=rotten_apple_new,limit=1,sort=nearest] CustomName set from entity @s CustomName

# Effects
particle minecraft:smoke ~ ~1 ~ 0.35 0.5 0.35 0.02 24 force
playsound minecraft:entity.drowned.ambient hostile @a[distance=..16] ~ ~ ~ 1 0.8

# Signal to the player
tag @a[tag=ra_eating,limit=1] add ra_converted
title @a[tag=ra_eating,limit=1] actionbar {"text":"Nautilus has been corrupted...","color":"dark_aqua","italic":true}

# Cleanup
tag @e[type=minecraft:zombie_nautilus,tag=rotten_apple_new] remove rotten_apple_new
kill @s
