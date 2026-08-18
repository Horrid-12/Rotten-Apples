# Golden Apple - Cure zombie horses
# Called when a player eats a Golden Apple (@s = player)
# Only handles zombie horse curing, doesn't affect normal golden apple behavior

# Revoke to allow re-triggering
advancement revoke @s only rotten_apple:eat_golden_apple

# Check for zombie horse within 5 blocks
tag @s add ra_eating
tag @s remove ra_converted

execute as @e[type=minecraft:zombie_horse,distance=..5,limit=1,sort=nearest] at @s run function rotten_apple:cure/zombie_horse

# Feedback
execute if entity @s[tag=ra_converted] run title @s actionbar {"text":"The zombie horse has been cured!","color":"green","italic":true}

# Cleanup
tag @s remove ra_eating
tag @s remove ra_converted
