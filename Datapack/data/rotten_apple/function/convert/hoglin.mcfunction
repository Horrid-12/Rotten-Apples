# Convert Hoglin → Zoglin
# Runs as the hoglin, at the hoglin's position

summon minecraft:zoglin ~ ~ ~ {Tags:["rotten_apple_new"]}

# Copy identity data
data modify entity @e[type=minecraft:zoglin,tag=rotten_apple_new,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[type=minecraft:zoglin,tag=rotten_apple_new,limit=1,sort=nearest] CustomName set from entity @s CustomName

# Effects
particle minecraft:smoke ~ ~1 ~ 0.35 0.5 0.35 0.02 24 force
playsound minecraft:entity.hoglin.converted_to_zombified hostile @a[distance=..16] ~ ~ ~ 1 1

# Signal to the player
tag @a[tag=ra_eating,limit=1] add ra_converted
tag @a[tag=ra_eating,limit=1] add ra_done_hoglin
title @a[tag=ra_eating,limit=1] actionbar {"text":"Hoglin has been corrupted...","color":"dark_green","italic":true}

# Cleanup
tag @e[type=minecraft:zoglin,tag=rotten_apple_new] remove rotten_apple_new
kill @s
