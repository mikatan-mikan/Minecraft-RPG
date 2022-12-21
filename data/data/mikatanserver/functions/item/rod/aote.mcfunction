effect give @s slow_falling 1 1 true
scoreboard players set $mana TMP 75
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP
tp ^ ^ ^8
playsound minecraft:entity.ender_pearl.throw master @s ~ ~ ~ 2 0 1
scoreboard players set @s ROD 0