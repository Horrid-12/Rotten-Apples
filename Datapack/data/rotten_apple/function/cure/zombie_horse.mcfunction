# Cure Zombie Horse → Horse
# Runs as the zombie horse, at its position

# Spawn a tame horse with random color
summon minecraft:horse ~ ~ ~ {Tags:["rotten_apple_new"],Tame:1b}

# Randomize color (0-6: white, creamy, chestnut, brown, black, gray, dark brown)
execute store result score @s ra_temp run random value 0..6
# Randomize markings (0-4, stored as marking * 256)
execute store result score #marking ra_temp run random value 0..4
scoreboard players operation #marking ra_temp *= #256 ra_temp
scoreboard players operation @s ra_temp += #marking ra_temp
execute store result entity @e[type=minecraft:horse,tag=rotten_apple_new,limit=1,sort=nearest] Variant int 1 run scoreboard players get @s ra_temp

# Copy identity data
data modify entity @e[type=minecraft:horse,tag=rotten_apple_new,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[type=minecraft:horse,tag=rotten_apple_new,limit=1,sort=nearest] CustomName set from entity @s CustomName

# Copy stats
data modify entity @e[type=minecraft:horse,tag=rotten_apple_new,limit=1,sort=nearest] Attributes set from entity @s Attributes
data modify entity @e[type=minecraft:horse,tag=rotten_apple_new,limit=1,sort=nearest] Health set from entity @s Health

# Handle baby
execute if data entity @s {Age:-1} run data modify entity @e[type=minecraft:horse,tag=rotten_apple_new,limit=1,sort=nearest] Age set from entity @s Age

# Give the cured horse a brief regeneration
effect give @e[type=minecraft:horse,tag=rotten_apple_new,limit=1,sort=nearest] minecraft:regeneration 100 1

# Effects
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 20 force
particle minecraft:heart ~ ~1.5 ~ 0.3 0.3 0.3 0 5 force
playsound minecraft:entity.zombie_villager.cure neutral @a[distance=..16] ~ ~ ~ 1 1

# Signal
tag @a[tag=ra_eating,limit=1] add ra_converted

# Cleanup — silent removal (no drops, no death sound)
tag @e[type=minecraft:horse,tag=rotten_apple_new] remove rotten_apple_new
data merge entity @s {Silent:1b,DeathLootTable:"minecraft:empty"}
kill @s
