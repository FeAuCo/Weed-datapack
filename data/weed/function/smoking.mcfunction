advancement revoke @s only weed:rmb_smoking
execute if score @s smoking_effect_and_tech matches 0 positioned ~ ~1.5 ~ run particle minecraft:campfire_cosy_smoke ^ ^ ^0.5 0.05 0.05 0.05 0.01 3
execute if score @s smoking_effect_and_tech matches 0 positioned ~ ~1.4 ~ run particle minecraft:flame ^ ^ ^0.5 0.1 0.1 0.1 0.001 2
execute if score @s smoking_effect_and_tech matches 0 run playsound minecraft:block.candle.break master @s ~ ~ ~ 1000 1
execute as @s if score @s smoking_effect_and_tech matches 0 run function weed:bamboo_decreasing_durability
execute if score @s smoking_effect_and_tech matches 0 run scoreboard players add @s stoning_effect 60
execute if score @s smoking_effect_and_tech matches 0 run scoreboard players add @s smoking_effect_and_tech 1