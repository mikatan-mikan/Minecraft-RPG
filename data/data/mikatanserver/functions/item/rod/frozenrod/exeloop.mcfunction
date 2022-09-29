execute as @e[type=armor_stand,tag=FrozenSubArmor] run scoreboard players add @s FrozenBlockS 1
execute as @e[type=armor_stand,tag=FrozenSubArmor,scores={FrozenBlockS=1}] at @s run function mikatanserver:item/rod/frozenrod/exeloop1
execute as @e[type=armor_stand,tag=FrozenSubArmor,scores={FrozenBlockS=39}] at @s run function mikatanserver:item/rod/frozenrod/exeloop59
execute if entity @e[type=armor_stand,tag=FrozenSubArmor] run schedule function mikatanserver:item/rod/frozenrod/exeloop 1t