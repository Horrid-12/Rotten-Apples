# Rotten Apple - Main routing function
# Called when a player eats a Rotten Apple (@s = player)

# Revoke to allow re-triggering
advancement revoke @s only rotten_apple:eat_rotten_apple

# Prevent multiple conversions per apple
tag @s add ra_eating
tag @s remove ra_converted
tag @s remove ra_converted_villager

# --- Conversions (priority: nearest mob within 5 blocks) ---

# Villager → Zombie Villager
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:villager,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/villager

# Horse → Zombie Horse
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:horse,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/horse

# Hoglin → Zoglin
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:hoglin,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/hoglin

# Piglin → Zombified Piglin
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:piglin,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/piglin

# Piglin Brute → Amplified Zombified Piglin (elite variant)
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:piglin_brute,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/piglin_brute

# Cat → Black Cat
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:cat,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/cat

# Nautilus → Zombie Nautilus
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:nautilus,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:convert/nautilus

# Zombie Horse → Heal (not a conversion, a special feed)
execute if entity @s[tag=!ra_converted] as @e[type=minecraft:zombie_horse,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:heal/zombie_horse

# --- No target feedback ---
execute if entity @s[tag=!ra_converted] run title @s actionbar {"text":"The apple's corruption fades unused...","color":"gray","italic":true}

# --- Post-conversion rewards ---

# Grant Evil Twin if a villager was converted
execute if entity @s[tag=ra_converted_villager] run advancement grant @s only rotten_apple:evil_twin

# Check for Rotten to the Core (all 5 mob types)
execute if entity @s[tag=ra_done_villager,tag=ra_done_horse,tag=ra_done_hoglin,tag=ra_done_piglin,tag=ra_done_cat] run advancement grant @s only rotten_apple:rotten_to_the_core

# Cleanup
tag @s remove ra_eating
tag @s remove ra_converted
tag @s remove ra_converted_villager
