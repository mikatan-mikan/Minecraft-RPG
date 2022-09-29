summon armor_stand ~ ~ ~ {Invulnerable:1,Tags:["FrozenArmor"],NoGravity:1,Invisible:1b}
tp @e[tag=FrozenArmor,limit=1,sort=nearest] @s
scoreboard players remove @s mana 60
function mikatanserver:item/rod/frozenrod_2/loop