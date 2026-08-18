# Rotten Apple - Initialization
scoreboard objectives add ra_temp dummy
scoreboard players set #256 ra_temp 256
kill @e[type=interaction,tag=rotten_apple_hitbox]
tag @a remove holding_rotten_apple
tag @a remove ra_eating
tag @a remove ra_converted
tag @a remove ra_converted_villager
tellraw @a [{"text":"[Rotten Apple]","color":"dark_green","bold":true},{"text":" Reloaded! Eat the apple near a mob to zombify it.","color":"green","bold":false}]
