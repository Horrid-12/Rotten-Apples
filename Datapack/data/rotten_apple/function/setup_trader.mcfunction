# Setup Wandering Trader with custom fruit trades
# Runs as the trader (@s)

tag @s add ra_trader

# Apple trade: 1 emerald → 4 apples
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:apple",count:4},maxUses:16,rewardExp:1b,xp:1}

# Green Apple trade: 1 emerald → 1 green apple
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:apple",count:1,components:{"minecraft:custom_data":{green_apple:1b},"minecraft:item_model":"rotten_apple:green_apple","minecraft:item_name":{text:"Green Apple",color:"green",italic:0b},"minecraft:food":{nutrition:5,saturation:0.8f,can_always_eat:0b},"minecraft:consumable":{consume_seconds:1.6f,animation:"eat",has_consume_particles:1b,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:speed",amplifier:0,duration:600}]}]},"minecraft:lore":[{text:"A crisp, fresh apple.",color:"gray",italic:0b},{text:"Grants Swiftness.",color:"blue",italic:0b}],"minecraft:rarity":"common"}},maxUses:8,rewardExp:1b,xp:2}

# Orange trade: 1 emerald → 2 oranges
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:apple",count:2,components:{"minecraft:custom_data":{orange:1b},"minecraft:item_model":"rotten_apple:orange","minecraft:item_name":{text:"Orange",color:"gold",italic:0b},"minecraft:food":{nutrition:4,saturation:14.4f,can_always_eat:0b},"minecraft:consumable":{consume_seconds:1.6f,animation:"eat",has_consume_particles:1b},"minecraft:lore":[{text:"Juicy and refreshing.",color:"gray",italic:0b},{text:"High saturation.",color:"yellow",italic:0b}],"minecraft:rarity":"common"}},maxUses:8,rewardExp:1b,xp:2}

# Rotten Apple trade: 3 emeralds → 1 rotten apple (rare, expensive)
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:apple",count:1,components:{"minecraft:custom_data":{rotten_apple:1b},"minecraft:item_model":"rotten_apple:rotten_apple","minecraft:item_name":{text:"Rotten Apple",color:"dark_green",italic:0b},"minecraft:food":{nutrition:2,saturation:0.1f,can_always_eat:1b},"minecraft:consumable":{consume_seconds:1.6f,animation:"eat",has_consume_particles:1b,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:hunger",amplifier:0,duration:600}]}]},"minecraft:lore":[{text:"Eat near a mob to zombify it.",color:"gray",italic:0b},{text:"Heals Zombie Horses.",color:"gray",italic:0b},{text:"Eating it gives Hunger.",color:"dark_red",italic:0b}],"minecraft:rarity":"uncommon"}},maxUses:4,rewardExp:1b,xp:5}
