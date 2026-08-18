# Heal Zombie Horse + Age acceleration + QoL buffs
# Runs as the zombie horse, at its position

# Heal (use instant_damage for undead mobs — heals them)
effect give @s minecraft:instant_damage 1 0

# QoL buffs: Speed I + Resistance I for 60 seconds
effect give @s minecraft:speed 1200 0
effect give @s minecraft:resistance 1200 0

# Tag as player-healed (persistent for undead perks)
tag @s add ra_healed_horse

# Visual/audio feedback
particle minecraft:heart ~ ~1.5 ~ 0.3 0.3 0.3 0 5 force
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.5 0.4 0 8 force
playsound minecraft:entity.horse.eat neutral @a[distance=..16] ~ ~ ~ 1 1

# Age acceleration for babies (4 minutes = 4800 ticks)
execute store result score @s ra_temp run data get entity @s Age
execute if score @s ra_temp matches ..-1 run scoreboard players add @s ra_temp 4800
execute if score @s ra_temp matches 0.. run scoreboard players set @s ra_temp 0
execute store result entity @s Age int 1 run scoreboard players get @s ra_temp

# Signal to the player
tag @a[tag=ra_eating,limit=1] add ra_converted
title @a[tag=ra_eating,limit=1] actionbar {"text":"Zombie Horse has been healed!","color":"green","italic":true}

# Grant Horseback Medic
advancement grant @a[tag=ra_eating,limit=1] only rotten_apple:horseback_medic
