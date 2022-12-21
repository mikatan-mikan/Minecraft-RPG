execute as @e[type=armor_stand,distance=..6,tag=giantkillarAr] at @s run tp @s ^ ^ ^1

execute store result score @s PHealth run data get entity @s Health
execute as @e[type=armor_stand,distance=..6,tag=giantkillarAr] at @s as @e[distance=..2] store result score @s MobNowHP run data get entity @s Health

execute as @e[type=armor_stand,distance=..6,tag=giantkillarAr] at @s as @e[distance=..2] if score @a[tag=Executegiantkillar,limit=1,sort=nearest] PHealth < @s MobNowHP as @a[tag=Executegiantkillar,limit=1,sort=nearest] run function mikatanserver:item/enchant/giantkillar/armor_hit

scoreboard players add @s giantkillarLoop 1
execute if entity @s[scores={giantkillarLoop=..6}] run function mikatanserver:item/enchant/giantkillar/armor
execute if entity @s[scores={giantkillarLoop=6..}] run tag @s remove Executegiantkillar
execute if entity @s[scores={giantkillarLoop=6..}] run kill @e[distance=..10,type=armor_stand,tag=giantkillarAr]
execute if entity @s[scores={giantkillarLoop=6..}] run scoreboard players set @s giantkillarLoop 0
