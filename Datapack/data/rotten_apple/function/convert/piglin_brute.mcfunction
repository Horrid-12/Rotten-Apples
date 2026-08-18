# Convert Piglin Brute → Amplified Zombified Piglin
# Runs as the piglin_brute, at their position
# Brutes get bonus stats to reflect their elite status

summon minecraft:zombified_piglin ~ ~ ~ {Tags:["rotten_apple_new"],PersistenceRequired:1b}

# Copy identity data
data modify entity @e[type=minecraft:zombified_piglin,tag=rotten_apple_new,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[type=minecraft:zombified_piglin,tag=rotten_apple_new,limit=1,sort=nearest] CustomName set from entity @s CustomName

# Amplification: Brutes are elite — give permanent Strength II + Resistance I + extra HP
effect give @e[type=minecraft:zombified_piglin,tag=rotten_apple_new,limit=1,sort=nearest] minecraft:strength infinite 1
effect give @e[type=minecraft:zombified_piglin,tag=rotten_apple_new,limit=1,sort=nearest] minecraft:resistance infinite 0

# Give them a golden axe like brutes carry
item replace entity @e[type=minecraft:zombified_piglin,tag=rotten_apple_new,limit=1,sort=nearest] weapon.mainhand with minecraft:golden_axe

# Set higher max health (brutes have 50 HP vs normal piglin 16)
attribute @e[type=minecraft:zombified_piglin,tag=rotten_apple_new,limit=1,sort=nearest] minecraft:max_health base set 50
data modify entity @e[type=minecraft:zombified_piglin,tag=rotten_apple_new,limit=1,sort=nearest] Health set value 50.0f

# Effects
particle minecraft:smoke ~ ~1 ~ 0.35 0.5 0.35 0.02 24 force
particle minecraft:flame ~ ~1 ~ 0.2 0.3 0.2 0.02 12 force
playsound minecraft:entity.piglin_brute.converted_to_zombified hostile @a[distance=..16] ~ ~ ~ 1 0.6

# Signal to the player
tag @a[tag=ra_eating,limit=1] add ra_converted
tag @a[tag=ra_eating,limit=1] add ra_done_piglin
title @a[tag=ra_eating,limit=1] actionbar {"text":"Piglin Brute has been corrupted...","color":"dark_red","italic":true}

# Cleanup
tag @e[type=minecraft:zombified_piglin,tag=rotten_apple_new] remove rotten_apple_new
kill @s
