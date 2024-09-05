item replace block 0 -64 0 container.1 from entity @s weapon.mainhand
execute as @s store result score *bamboo_durability smoking_effect_and_tech run data get entity @s SelectedItem.components."minecraft:damage"
scoreboard players add *bamboo_durability smoking_effect_and_tech 1
execute store result block 0 -64 0 Items[{Slot:1b}].components."minecraft:damage" int 1 run scoreboard players get *bamboo_durability smoking_effect_and_tech
item replace entity @s weapon.mainhand from block 0 -64 0 container.1
execute as @s if score *bamboo_durability smoking_effect_and_tech matches 50 run function weed:bamboo_breaking
