execute as @a[scores={smoking_effect_and_tech=1..}] run scoreboard players add @s smoking_effect_and_tech 1
execute as @a[scores={smoking_effect_and_tech=40..}] run scoreboard players set @s smoking_effect_and_tech 0
scoreboard players remove @a[scores={to_smoke=1..}] to_smoke 1
execute as @a[scores={stoning_effect=2500..5000}] run function weed:stoned
execute as @a[nbt=!{Inventory:[{id:"minecraft:cooked_porkchop",components:{"minecraft:custom_data":{smoking_bamboo:1b,smoking:1b}}}]}] if score @s stoning_effect matches 1.. run scoreboard players remove @s stoning_effect 1
kill @a[scores={stoning_effect=5000..}] 
execute as @a[nbt={SelectedItem:{id:"minecraft:cooked_porkchop",components:{"minecraft:custom_data":{smoking_bamboo:1b,can_be_smoked:1b}}}}] if data entity @s Inventory[{Slot:-106b,id:"minecraft:flint_and_steel"}] run item replace entity @s weapon.mainhand with minecraft:cooked_porkchop[minecraft:custom_model_data=1,minecraft:custom_data={smoking_bamboo:1b,can_be_smoked:1b},max_stack_size=1,custom_name='{"text": "Курительный бамбук", "color": "green"}',minecraft:max_damage=50,enchantment_glint_override=true,food={can_always_eat:true,nutrition:0,saturation:0,eat_seconds:1.6}]
execute as @a[nbt={SelectedItem:{id:"minecraft:cooked_porkchop",components:{"minecraft:custom_data":{smoking_bamboo:1b,can_be_smoked:1b}}}}] unless data entity @s Inventory[{Slot:-106b,id:"minecraft:flint_and_steel"}] run item replace entity @s weapon.mainhand with minecraft:cooked_porkchop[minecraft:custom_model_data=1,minecraft:custom_data={smoking_bamboo:1b,can_be_smoked:1b},max_stack_size=1,custom_name='{"text": "Курительный бамбук", "color": "green"}',minecraft:max_damage=50,enchantment_glint_override=true,food={can_always_eat:true,nutrition:0,saturation:0,eat_seconds:10000000}]

execute as @a unless score @s in_pre_smoking matches -2147483648..2147483647 run scoreboard players set @s in_pre_smoking 0
execute as @a unless score @s to_smoke matches -2147483648..2147483647 run scoreboard players set @s to_smoke 0
execute as @a unless score @s stoning_effect matches -2147483648..2147483647 run scoreboard players set @s stoning_effect 0
execute as @a unless score @s smoking_effect_and_tech matches -2147483648..2147483647 run scoreboard players set @s smoking_effect_and_tech 0