scoreboard players remove @s mana 45
scoreboard players set $MK.k.Xpower MK.k.knockbackValue 500
scoreboard players set $MK.k.Ypower MK.k.knockbackValue 100
execute as @e[distance=..5] run function mikatanlib:knockback/knockbackexe

playsound entity.ender_pearl.throw master @s ~ ~ ~ 2 0
function mikatanserver:item/rod/spirit/particle