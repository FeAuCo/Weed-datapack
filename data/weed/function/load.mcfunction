tellraw @a {"text": "Датапак для курения бамбука запущен", "color": "green", "bold": true}
setblock 0 -64 0 green_shulker_box

scoreboard objectives add smoking_effect_and_tech dummy
scoreboard objectives add to_smoke dummy
scoreboard objectives add stoning_effect dummy
scoreboard objectives add in_pre_smoking dummy

scoreboard players set *flint_and_steel_durability smoking_effect_and_tech 0
scoreboard players set *bamboo_durability smoking_effect_and_tech 0
