# Fix non-edible glistering melons in player inventory
# Triggered when any glistering melon enters inventory

# Re-arm the trigger
advancement revoke @s only rotten_apple:has_glistering_melon

# Count non-edible glistering melons (ones WITHOUT food component)
execute store result score @s ra_temp run clear @s minecraft:glistering_melon_slice[!minecraft:food] 0

# If there are any, replace them
execute if score @s ra_temp matches 1.. run clear @s minecraft:glistering_melon_slice[!minecraft:food]
execute if score @s ra_temp matches 1.. run function rotten_apple:give_melon_loop
