effect give @e[type=!player,distance=..5] slowness 3 1 true
effect give @s slowness 3 255 true
effect give @s poison 6 1 true
summon armor_stand ~ ~ ~ {Tags:["FrozenSubArmor"],Invisible:1b,NoGravity:1b}
kill @e[type=armor_stand,sort=nearest,distance=..2,tag=FrozenArmor]
execute as @e[type=armor_stand,tag=FrozenSubArmor,sort=nearest,distance=..2] run function mikatanserver:item/rod/frozenrod/exeloop