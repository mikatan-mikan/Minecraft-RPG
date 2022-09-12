scoreboard players set @s jadewandcount 0

##周囲5mのモブの数を保管
execute store result score @s NowMobCount if entity @e[type=#mikatanserver:mobs,distance=..5]

##モブの数*0.5のマナを回復
scoreboard players operation @s NowMobCount /= num TWO
#tellraw @a [{"score":{"name":"@s","objective":"NowMobCount"},"color":"light_purple"}]
scoreboard players operation @s NowMobCount += @s mana

##マナの増加後がmanamaxをオーバーするなら最大値にする(オーバーフローしない)
execute if score @s NowMobCount <= @s manamax run scoreboard players operation @s mana = @s NowMobCount
execute unless score @s NowMobCount <= @s manamax run scoreboard players operation @s mana = @s manamax

##周囲5mのモブに鈍足1を付与する
effect give @e[type=#mikatanserver:mobs,distance=..5] slowness 3 1
##即時ダメージ2
effect give @e[type=#mikatanserver:undead,distance=..5] instant_health 1 1
effect give @e[type=#mikatanserver:not_undead,distance=..5] instant_damage 1 1

function mikatanserver:item/rod/rare_stone_wand/particle_sound

#angel一式なら
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{armor_angel:1b}},{Slot:101b,tag:{armor_angel:1b}},{Slot:102b,tag:{armor_angel:1b}},{Slot:103b,tag:{armor_angel:1b}}]}] run function mikatanserver:item/rod/rare_stone_wand/angel_full/mana

#forest一式なら
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{armor_forest:1b}},{Slot:101b,tag:{armor_forest:1b}},{Slot:102b,tag:{armor_forest:1b}},{Slot:103b,tag:{armor_forest:1b}}]}] run function mikatanserver:item/rod/rare_stone_wand/forest_full/mana