effect give @e[type=!player,distance=..10] slowness 2 4 true
effect give @s slowness 2 255 true
effect give @s poison 6 1 true
summon armor_stand ~ ~ ~ {Tags:["FrozenSubArmor_2"],Invisible:1b,NoGravity:1b}
kill @e[type=armor_stand,sort=nearest,distance=..2,tag=FrozenArmor2]
execute as @e[type=armor_stand,tag=FrozenSubArmor_2,sort=nearest,distance=..2] run function mikatanserver:item/rod/frozenrod_2/exeloop