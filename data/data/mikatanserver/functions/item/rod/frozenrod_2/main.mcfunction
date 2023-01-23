summon armor_stand ~ ~ ~ {Invulnerable:1,Tags:["FrozenArmor2"],NoGravity:1,Invisible:1b}
tp @e[tag=FrozenArmor2,limit=1,sort=nearest] @s
scoreboard players set $mana TMP 100
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP
function mikatanserver:item/rod/frozenrod_2/loop