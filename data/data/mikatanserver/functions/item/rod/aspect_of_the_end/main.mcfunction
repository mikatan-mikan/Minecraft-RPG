scoreboard players set $mana TMP 50
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP
tp ^ ^ ^8

effect give @s slow_falling 1 255 true
effect give @s speed 3 1 true
playsound minecraft:entity.ender_pearl.throw master @s ~ ~ ~ 2 0 1