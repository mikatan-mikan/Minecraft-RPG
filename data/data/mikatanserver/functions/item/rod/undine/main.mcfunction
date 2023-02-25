scoreboard players set $mana TMP 35
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

playsound block.water.ambient master @a ~ ~ ~ 2 1.3
effect give @s haste 5 0

execute as @e[type=#mikatanserver:mobs,distance=..5] run effect give @s poison 5 0 true
execute as @e[type=#mikatanserver:mobs,distance=..5] run effect give @s slowness 5 0 true
execute as @e[type=#mikatanserver:mobs,distance=..5] run effect give @s instant_damage 1 2 true