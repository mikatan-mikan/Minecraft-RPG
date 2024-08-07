scoreboard players set @s devilwandcount 0

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
effect give @e[type=#mikatanserver:mobs,distance=..5] slowness 3 0
##即時ダメージ1
effect give @e[type=#mikatanserver:undead,distance=..5] instant_health 1 0
effect give @e[type=#mikatanserver:not_undead,distance=..5] instant_damage 1 0
##弱体
effect give @e[type=#mikatanserver:mobs,distance=..5] weakness 3 0

function mikatanserver:item/rod/devil/particle_sound

#devil一式なら
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{devil_ar:1b}},{Slot:101b,tag:{devil_ar:1b}},{Slot:102b,tag:{devil_ar:1b}},{Slot:103b,tag:{devil_ar:1b}}]}] run function mikatanserver:item/rod/devil/devil_full/mana

#fresh green一式なら
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{fresh_ar:true}},{Slot:101b,tag:{fresh_ar:true}},{Slot:102b,tag:{fresh_ar:true}},{Slot:103b,tag:{fresh_ar:true}}]}] run function mikatanserver:item/rod/devil/f_green_full/mana