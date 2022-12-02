scoreboard players set $mana TMP 35
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @a[distance=..3] resistance 3 0

execute as @a[distance=..3] at @s run summon armor_stand ~ ~ ~ {Tags:["AincientAr"],Small:1b,Invisible:1b,Invulnerable:1b}
execute as @a[distance=..3] at @s run tp @e[tag=AincientAr,sort=nearest,limit=1] @s

scoreboard players reset $AincientAr Temporary

function mikatanserver:item/rod/ancient/ruins_full/loop_main