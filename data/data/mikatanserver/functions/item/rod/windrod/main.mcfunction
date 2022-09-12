summon armor_stand ~ ~ ~ {Invulnerable:1,Tags:["WindArmor"],NoGravity:1,Invisible:1b}
tp @e[tag=WindArmor,limit=1,sort=nearest] @s
scoreboard players remove @s mana 35
function mikatanserver:item/rod/windrod/loop