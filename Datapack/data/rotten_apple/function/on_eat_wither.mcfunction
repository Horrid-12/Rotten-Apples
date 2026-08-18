# Wither Apple - Main routing function
# Conversions same as Rotten Apple, but applies Wither to nearby mobs (not the player)
# Called when a player eats a Wither Apple (@s = player)

# Revoke to allow re-triggering
advancement revoke @s only rotten_apple:eat_wither_apple

# Prevent multiple conversions per apple
tag @s add ra_eating
tag @s remove ra_converted
tag @s remove ra_converted_villager

# --- Same conversions as rotten apple ---
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:villager,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/villager
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:horse,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/horse
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:hoglin,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/hoglin
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:piglin,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/piglin
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:piglin_brute,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/piglin_brute
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:cat,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/cat
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:nautilus,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/nautilus
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:zombie_horse,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:heal/zombie_horse

# --- Wither Aura: damage ALL nearby entities (not the eater) ---
# Apply Wither II for 10 seconds to all mobs within 8 blocks
effect give @e[distance=..8,type=!#rotten_apple:wither_immune,sort=nearest] minecraft:wither 200 1

# Remove wither from the player who ate it (they're immune)
effect clear @s minecraft:wither

# Apply to other players too
execute as @a[distance=..8] unless entity @s[tag=ra_eating] run effect give @s minecraft:wither 200 1

# Wither particles around the player
particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 20 force
particle minecraft:smoke ~ ~1 ~ 0.8 0.8 0.8 0.01 30 force
playsound minecraft:entity.wither.ambient hostile @a[distance=..16] ~ ~ ~ 0.5 1.5

# No target feedback
execute if entity @s[tag=!ra_converted] run title @s actionbar {"text":"A withering aura radiates from you...","color":"dark_gray","italic":true}
execute if entity @s[tag=ra_converted] run title @s actionbar {"text":"The wither consumes all nearby...","color":"dark_purple","italic":true}

# Rewards
execute if entity @s[tag=ra_converted_villager] run advancement grant @s only rotten_apple:evil_twin
execute if entity @s[tag=ra_done_villager,tag=ra_done_horse,tag=ra_done_hoglin,tag=ra_done_piglin,tag=ra_done_cat] run advancement grant @s only rotten_apple:rotten_to_the_core

# Cleanup
tag @s remove ra_eating
tag @s remove ra_converted
tag @s remove ra_converted_villager
