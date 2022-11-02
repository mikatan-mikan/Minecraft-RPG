execute as @e[type=armor_stand,distance=..6,tag=cubismAr] at @s run tp @s ^ ^ ^1
execute as @e[type=armor_stand,distance=..6,tag=cubismAr] at @s if entity @e[distance=..1,type=#mikatanserver:cube] as @a[tag=ExecuteCubism,nbt={SelectedItem:{tag:{CustomModelData:111},id:"minecraft:carrot_on_a_stick"}}] at @s run function mikatanserver:item/enchant/cubism/slime_sword/main
execute as @e[type=armor_stand,distance=..6,tag=cubismAr] at @s as @e[distance=..1,type=#mikatanserver:cube] store result score @s MobNowHP run data get entity @s Health
execute store result score @s CubismLevel run data get entity @s SelectedItem.tag.cubism[]
execute as @e[type=armor_stand,distance=..6,tag=cubismAr] at @s as @e[distance=..1,type=#mikatanserver:cube] run scoreboard players operation @s MobNowHP -= @p[tag=ExecuteCubism] CubismLevel
execute as @e[type=armor_stand,distance=..6,tag=cubismAr] at @s as @e[distance=..1,type=#mikatanserver:cube] store result entity @s Health float 1 run scoreboard players get @s MobNowHP
execute as @e[type=armor_stand,distance=..6,tag=cubismAr] at @s if entity @e[distance=..1,type=#mikatanserver:cube] run kill @s
execute if entity @e[distance=..6,scores={MobNowHP=..0},type=#mikatanserver:cube] run scoreboard players add @s attackSxp 1
scoreboard players add @s CubismLoop 1
execute if entity @s[scores={CubismLoop=..6}] run function mikatanserver:item/enchant/cubism/armor
execute if entity @s[scores={CubismLoop=6..}] run tag @s remove ExecuteCubism
execute if entity @s[scores={CubismLoop=6..}] run kill @e[distance=..10,type=armor_stand,tag=cubismAr]
execute if entity @s[scores={CubismLoop=6..}] run scoreboard players set @s CubismLoop 0