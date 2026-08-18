# Convert Villager → Zombie Villager (preserving trades)
# Runs as the villager, at the villager's position

# Spawn zombie villager
summon minecraft:zombie_villager ~ ~ ~ {Tags:["rotten_apple_new"],PersistenceRequired:1b}

# Copy all trade and profession data
data modify entity @e[type=minecraft:zombie_villager,tag=rotten_apple_new,limit=1,sort=nearest] VillagerData set from entity @s VillagerData
data modify entity @e[type=minecraft:zombie_villager,tag=rotten_apple_new,limit=1,sort=nearest] Offers set from entity @s Offers
data modify entity @e[type=minecraft:zombie_villager,tag=rotten_apple_new,limit=1,sort=nearest] Gossips set from entity @s Gossips
data modify entity @e[type=minecraft:zombie_villager,tag=rotten_apple_new,limit=1,sort=nearest] Xp set from entity @s Xp

# Copy identity data
data modify entity @e[type=minecraft:zombie_villager,tag=rotten_apple_new,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[type=minecraft:zombie_villager,tag=rotten_apple_new,limit=1,sort=nearest] CustomName set from entity @s CustomName
data modify entity @e[type=minecraft:zombie_villager,tag=rotten_apple_new,limit=1,sort=nearest] CustomNameVisible set from entity @s CustomNameVisible

# Handle baby villagers
execute if data entity @s {Age:-2147483648} run data modify entity @e[type=minecraft:zombie_villager,tag=rotten_apple_new,limit=1,sort=nearest] IsBaby set value 1b

# Effects
particle minecraft:smoke ~ ~1 ~ 0.35 0.45 0.35 0.02 24 force
playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 1 1

# Signal to the player
tag @a[tag=ra_eating,limit=1] add ra_converted
tag @a[tag=ra_eating,limit=1] add ra_converted_villager
tag @a[tag=ra_eating,limit=1] add ra_done_villager
title @a[tag=ra_eating,limit=1] actionbar {"text":"Villager has been corrupted...","color":"dark_green","italic":true}

# Cleanup
tag @e[type=minecraft:zombie_villager,tag=rotten_apple_new] remove rotten_apple_new
kill @s
