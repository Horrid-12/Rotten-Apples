# Rotten Apple - Tick function
# Zombie Horse QoL: clear poison from healed zombie horses
execute as @e[type=minecraft:zombie_horse,tag=ra_healed_horse] run effect clear @s minecraft:poison

# Wandering Trader: inject custom trades on new traders
execute as @e[type=minecraft:wandering_trader,tag=!ra_trader] run function rotten_apple:setup_trader
