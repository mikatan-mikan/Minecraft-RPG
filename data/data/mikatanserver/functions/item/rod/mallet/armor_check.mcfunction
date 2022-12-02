scoreboard players add @s ArmorStandTimer 1

execute if score @s ArmorStandTimer matches 0..39 run particle dust 0.596 0.843 0.145 0.5 ~ ~ ~ 0.5 0.5 0.5 1 20 
execute if score @s ArmorStandTimer matches 40 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.7
execute if score @s ArmorStandTimer matches 40 as @e[type=#mikatanserver:mobs,distance=..3.5] at @s run function mikatanserver:item/rod/mallet/mob_damage
execute if score @s ArmorStandTimer matches 40 run kill @s

execute if score @s ArmorStandTimer matches ..39 run schedule function mikatanserver:item/rod/mallet/loop 1t