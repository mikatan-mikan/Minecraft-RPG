scoreboard players set $mana TMP 50
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

execute if entity @e[type=#mikatanserver:mobs,distance=..7,sort=nearest,limit=1] run function mikatanserver:item/rod/pointer/damage
execute unless entity @e[type=#mikatanserver:mobs,distance=..7,sort=nearest,limit=1] run function mikatanserver:item/rod/pointer/cant_damage