scoreboard players add @a[tag=ReapingTimeS] ReapingTimer2 1
#tp処理
execute as @a[tag=ReapingTimeS] at @s run tp @s @e[tag=ReapingAr,sort=nearest,limit=1,type=armor_stand]
#再帰処理
execute if entity @a[tag=ReapingTimeS,scores={ReapingTimer2=..200}] run schedule function mikatanserver:item/rod/reaping/level_2/teleport 1t
execute if entity @a[tag=ReapingTimeS] unless entity @a[scores={ReapingTimer2=..200}] as @a[tag=ReapingTimeS] run function mikatanserver:item/rod/reaping/level_2/return

execute as @a at @s as @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] run function mikatanserver:item/rod/reaping/level_2/damage


#最終終了処理
scoreboard players set @a[tag=ReapingTimeS,scores={ReapingTimer2=200..}] ReapingTimer2 0
execute as @a at @s as @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] run scoreboard players set @a[tag=ReapingTimeS,distance=..2] ReapingTimer2 0
execute as @a at @s if entity @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] run tag @s remove ReapingTimeS
execute as @a at @s as @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] run kill @s