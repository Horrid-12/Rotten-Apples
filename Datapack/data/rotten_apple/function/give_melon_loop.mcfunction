# Give 1 edible glistering melon and loop until count is 0
give @s minecraft:glistering_melon_slice[minecraft:food={nutrition:4,saturation:1.2f,can_always_eat:false},minecraft:consumable={consume_seconds:1.6f,animation:"eat",has_consume_particles:true,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:regeneration",amplifier:0,duration:100}]}]}] 1
scoreboard players remove @s ra_temp 1
execute if score @s ra_temp matches 1.. run function rotten_apple:give_melon_loop
