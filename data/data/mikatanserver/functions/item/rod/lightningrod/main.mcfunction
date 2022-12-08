summon armor_stand ~ ~ ~ {Invulnerable:1,Tags:["lightningArmor"],NoGravity:1}
tp @e[tag=lightningArmor,limit=1,sort=nearest] @s
scoreboard players set $mana TMP 25
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP
execute as @e[tag=lightningArmor,limit=1,sort=nearest] at @s run function mikatanserver:item/rod/lightningrod/loop