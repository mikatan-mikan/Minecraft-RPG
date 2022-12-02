scoreboard players add @s ArmorStandTimer 1

execute if score @s ArmorStandTimer matches 0..39 run particle dust 0.145 0.678 0.843 0.5 ~ ~ ~ 0.5 0.5 0.5 1 20 
execute if score @s ArmorStandTimer matches 40 run playsound block.anvil.place master @a ~ ~ ~ 2 1.7
execute if score @s ArmorStandTimer matches 40 as @a[distance=..3] at @s run function mikatanserver:item/rod/saxophone/add_effect
execute if score @s ArmorStandTimer matches 40 run kill @s

execute if score @s ArmorStandTimer matches ..39 run schedule function mikatanserver:item/rod/saxophone/loop 1t