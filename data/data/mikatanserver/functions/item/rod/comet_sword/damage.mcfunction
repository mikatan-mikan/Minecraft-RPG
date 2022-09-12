#演出
execute as @e[tag=StarSword_Comet] at @s run particle explosion ~ ~ ~ 0.5 0.5 0.5 2 10
execute as @e[tag=StarSword_Comet,scores={CometSwordTimer=1}] at @s as @a[distance=..40] at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 2 0
execute as @e[tag=StarSword_Comet,scores={CometSwordTimer=45}] at @s as @a[distance=..40] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 2 0

#ダメージ処理＆終了処理
execute as @e[tag=StarSword_Comet] at @s run effect give @e[distance=..2] instant_damage 1 1
execute as @e[tag=StarSword_Comet] at @s if entity @e[distance=..2,type=!armor_stand] run kill @s
execute as @e[tag=StarSword_Comet] at @s if entity @e[distance=..2] at @a[distance=..40] run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 2 0

#タイマー
execute as @e[tag=StarSword_Comet] run scoreboard players add @s CometSwordTimer 1

#再帰
execute as @e[tag=StarSword_Comet,scores={CometSwordTimer=..50}] run schedule function mikatanserver:item/rod/comet_sword/damage 1t
execute as @e[tag=StarSword_Comet,scores={CometSwordTimer=50..}] run kill @s