execute as @e[distance=..5,type=enderman] store result score @s MobNowHP run data get entity @s Health
execute as @e[distance=..5,type=enderman] store result score @s MobAngry run data get entity @s AngerTime
execute store result score @s EnderSlayerLevel run data get entity @s SelectedItem.tag.enderslayer[]
execute as @e[distance=..5,type=enderman,scores={MobAngry=1..}] run scoreboard players operation @s MobNowHP -= @a[distance=..5,limit=1] EnderSlayerLevel
execute if entity @e[scores={MobNowHP=..0}] run scoreboard players add @s attackSxp 1
execute as @e[distance=..5,type=enderman,scores={MobAngry=1..}] store result entity @s Health float 1 run scoreboard players get @s MobNowHP