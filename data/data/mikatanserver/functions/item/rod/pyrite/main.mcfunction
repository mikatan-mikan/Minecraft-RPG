scoreboard players set @s RodCoolTime -200

##周囲5mのモブに鈍足1を付与する
effect give @e[type=#mikatanserver:mobs,distance=..5] slowness 3 1
##即時ダメージ2
effect give @e[type=#mikatanserver:undead,distance=..5] instant_health 1 1
effect give @e[type=#mikatanserver:not_undead,distance=..5] instant_damage 1 1

##攻撃力をわずかに下げる
execute as @e[type=#mikatanserver:mobs,distance=..5] run attribute @s generic.attack_damage modifier add aba06aa5-65a8-46ea-8c70-a3da4d2e8839 "pyrite" -0.25 add

function mikatanserver:item/rod/rare_stone_wand/particle_sound

#pyrite一式なら
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{armor_pyrite:1b}},{Slot:101b,tag:{armor_pyrite:1b}},{Slot:102b,tag:{armor_pyrite:1b}},{Slot:103b,tag:{armor_pyrite:1b}}]}] run function mikatanserver:item/rod/pyrite/pyrite_full/mana

#ruins一式なら
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{armor_ruins:1b}},{Slot:101b,tag:{armor_ruins:1b}},{Slot:102b,tag:{armor_ruins:1b}},{Slot:103b,tag:{armor_ruins:1b}}]}] run function mikatanserver:item/rod/pyrite/ruins_full/mana