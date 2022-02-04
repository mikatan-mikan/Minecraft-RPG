tag @s add ExecuteCubism
summon armor_stand ~ ~1.4 ~ {Tags:["cubismAr"],NoGravity:1b}
execute store result entity @e[tag=cubismAr,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=cubismAr,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
function mikatanserver:item/enchant/cubism/armor


# execute as @e[distance=..5,type=enderman] store result score @s MobNowHP run data get entity @s Health
# execute as @e[distance=..5,type=enderman] store result score @s MobAngry run data get entity @s AngerTime
# execute store result score @s EnderSlayerLevel run data get entity @s SelectedItem.tag.enderslayer[]
# execute as @e[distance=..5,type=enderman,scores={MobAngry=1..}] run scoreboard players operation @s MobNowHP -= @a[distance=..5,limit=1] EnderSlayerLevel
# execute if entity @e[scores={MobNowHP=..0}] run scoreboard players add @s attackSxp 1
# execute as @e[distance=..5,type=enderman,scores={MobAngry=1..}] store result entity @s Health float 1 run scoreboard players get @s MobNowHP