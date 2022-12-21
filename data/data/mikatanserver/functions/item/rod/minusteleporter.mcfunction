scoreboard players set $mana TMP 5
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP
tp ~ ~-3 ~
playsound minecraft:entity.ender_pearl.throw master @s ~ ~ ~ 2 0 1
scoreboard players set @s ROD 0