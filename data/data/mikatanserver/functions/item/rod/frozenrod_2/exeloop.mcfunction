execute as @e[type=armor_stand,tag=FrozenSubArmor_2,sort=nearest] run scoreboard players add @s FrozenBlockS 1
execute as @e[type=armor_stand,tag=FrozenSubArmor_2,sort=nearest,scores={FrozenBlockS=1}] at @s run function mikatanserver:item/rod/frozenrod_2/exeloop1
execute as @e[type=armor_stand,tag=FrozenSubArmor_2,sort=nearest,scores={FrozenBlockS=39}] at @s run function mikatanserver:item/rod/frozenrod_2/exeloop59

execute if entity @e[type=armor_stand,tag=FrozenSubArmor_2] run schedule function mikatanserver:item/rod/frozenrod_2/exeloop 1t