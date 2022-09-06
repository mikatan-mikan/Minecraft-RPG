

execute store result score @s GiantKillarLevel run data get entity @s SelectedItem.tag.giantkillar[]
execute as @e[type=armor_stand,distance=..6,tag=giantkillarAr] as @e[distance=..3.5] run scoreboard players operation @s MobNowHP -= @p[tag=Executegiantkillar] GiantKillarLevel
execute as @e[type=armor_stand,distance=..6,tag=giantkillarAr] as @e[distance=..3.5] store result entity @s Health float 1 run scoreboard players get @s MobNowHP
execute as @e[type=armor_stand,distance=..6,tag=giantkillarAr] if entity @e[distance=..3.5] run kill @s
execute if entity @e[distance=..6,scores={MobNowHP=..0}] run scoreboard players add @s[tag=Executegiantkillar] attackSxp 1
execute if entity @e[distance=..6,scores={MobNowHP=..0}] run tag @s remove Executegiantkillar