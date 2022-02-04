
#tp処理
execute as @a[tag=ReapingTimeS] at @s run tp @s @e[tag=ReapingAr,sort=nearest,limit=1,type=armor_stand]
#再帰処理
execute if entity @a[tag=ReapingTimeS,scores={ReapingTimer=..200}] run schedule function mikatanserver:item/rod/reaping/teleport 1t
execute if entity @a[tag=ReapingTimeS] unless entity @a[scores={ReapingTimer=..200}] as @a[tag=ReapingTimeS] run function mikatanserver:item/rod/reaping/return

execute as @a at @s as @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] run effect give @e[type=#mikatanserver:undead,distance=..7] instant_health 1 1
execute as @a at @s as @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] run effect give @e[type=#mikatanserver:not_undead,distance=..7] instant_damage 1 1
execute as @a at @s as @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] as @e[distance=..7,type=#mikatanserver:mobs] run data merge entity @s {Fire:100}
execute as @a at @s as @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] run particle explosion ~ ~ ~ 1 1 1 2 100
execute as @a at @s as @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] run playsound entity.generic.explode master @a[distance=..10] ~ ~ ~ 2 1

execute as @a at @s as @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] at @s run function mikatanserver:item/rod/reaping/particle

#最終終了処理
execute as @a at @s if entity @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] run scoreboard objectives remove ReapingTimer
execute as @a at @s if entity @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] run tag @s remove ReapingTimeS
execute as @a at @s as @e[tag=ReapingAr,nbt={OnGround:true},distance=..2,type=armor_stand] run kill @s