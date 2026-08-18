# Fix non-edible sugar in player inventory
advancement revoke @s only rotten_apple:has_sugar

# Count non-edible sugar (without food component)
execute store result score @s ra_temp run clear @s minecraft:sugar[!minecraft:food] 0

# Replace them
execute if score @s ra_temp matches 1.. run clear @s minecraft:sugar[!minecraft:food]
execute if score @s ra_temp matches 1.. run function rotten_apple:give_sugar_loop
