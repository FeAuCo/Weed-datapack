item replace block 0 -64 0 container.0 from entity @s weapon.offhand
execute as @s store result score *flint_and_steel_durability smoking_effect_and_tech run data get entity @s Inventory[{Slot:-106b}].components."minecraft:damage"
scoreboard players add *flint_and_steel_durability smoking_effect_and_tech 1
execute store result block 0 -64 0 Items[{Slot:0b}].components."minecraft:damage" int 1 run scoreboard players get *flint_and_steel_durability smoking_effect_and_tech
item replace entity @s weapon.offhand from block 0 -64 0 container.0
execute as @s if score *flint_and_steel_durability smoking_effect_and_tech matches 64 run function weed:flint_and_steel_breaking

