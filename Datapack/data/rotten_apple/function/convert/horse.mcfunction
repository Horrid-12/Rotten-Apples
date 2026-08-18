# Convert Horse → Zombie Horse
# Runs as the horse, at the horse's position

# Spawn tame zombie horse (so the player can ride it)
summon minecraft:zombie_horse ~ ~ ~ {Tags:["rotten_apple_new"],Tame:1b}

# Copy identity data
data modify entity @e[type=minecraft:zombie_horse,tag=rotten_apple_new,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[type=minecraft:zombie_horse,tag=rotten_apple_new,limit=1,sort=nearest] CustomName set from entity @s CustomName

# Effects
particle minecraft:smoke ~ ~1 ~ 0.35 0.5 0.35 0.02 24 force
playsound minecraft:entity.horse.death hostile @a[distance=..16] ~ ~ ~ 1 0.5

# Signal to the player
tag @a[tag=ra_eating,limit=1] add ra_converted
tag @a[tag=ra_eating,limit=1] add ra_done_horse
title @a[tag=ra_eating,limit=1] actionbar {"text":"Horse has been corrupted...","color":"dark_green","italic":true}

# Cleanup
tag @e[type=minecraft:zombie_horse,tag=rotten_apple_new] remove rotten_apple_new
kill @s
