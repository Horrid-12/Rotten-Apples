# Give 1 edible sugar and loop
give @s minecraft:sugar[minecraft:food={nutrition:1,saturation:0.4f,can_always_eat:false},minecraft:consumable={consume_seconds:0.4f,animation:"eat",has_consume_particles:true,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:speed",amplifier:0,duration:200}]}]}] 1
scoreboard players remove @s ra_temp 1
execute if score @s ra_temp matches 1.. run function rotten_apple:give_sugar_loop
