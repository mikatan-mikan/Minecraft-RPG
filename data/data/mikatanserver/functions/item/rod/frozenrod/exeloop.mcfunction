execute as @e[type=armor_stand,tag=FrozenSubArmor,sort=nearest] run scoreboard players add @s FrozenBlockS 1
execute as @e[type=armor_stand,tag=FrozenSubArmor,sort=nearest,scores={FrozenBlockS=1}] at @s run function mikatanserver:item/rod/frozenrod/exeloop1
execute as @e[type=armor_stand,tag=FrozenSubArmor,sort=nearest,scores={FrozenBlockS=119}] at @s run function mikatanserver:item/rod/frozenrod/exeloop59
schedule function mikatanserver:item/rod/frozenrod/exeloop 1t