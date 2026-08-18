# Convert Cat → Black Cat (cosmetic curse)
# Runs as the cat, at the cat's position

# Change variant to all_black
data modify entity @s variant set value "minecraft:all_black"

# Effects
particle minecraft:smoke ~ ~0.5 ~ 0.2 0.3 0.2 0.02 12 force
particle minecraft:witch ~ ~0.5 ~ 0.2 0.3 0.2 0.02 8 force
playsound minecraft:entity.cat.hiss neutral @a[distance=..16] ~ ~ ~ 1 0.5

# Signal + tracking
tag @a[tag=ra_eating,limit=1] add ra_converted
tag @a[tag=ra_eating,limit=1] add ra_done_cat

# Actionbar
title @a[tag=ra_eating,limit=1] actionbar {"text":"Cat has been cursed...","color":"dark_purple","italic":true}
