# уменьшение прочности зажигалки
advancement revoke @s only weed:ignition_detection
scoreboard players add @s to_smoke 2

# замена бамбука
execute if score @s to_smoke matches 32.. run item replace entity @s weapon.mainhand with minecraft:cooked_porkchop[minecraft:custom_model_data=1,minecraft:custom_data={smoking_bamboo:1b,smoking:1b},max_stack_size=1,custom_name='{"text": "Курительный бамбук", "color": "green"}',minecraft:max_damage=50,enchantment_glint_override=true,food={can_always_eat:true,nutrition:0,saturation:0,eat_seconds:10000000}]
execute as @s if score @s to_smoke matches 32.. run function weed:flint_and_steel_decreasing_durability
execute if score @s to_smoke matches 32.. run scoreboard players set @s to_smoke 0
execute if score @s to_smoke matches 32.. run scoreboard players set @s in_pre_smoking 0