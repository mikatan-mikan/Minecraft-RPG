tellraw @a[tag=DungeonPlay_27] [{"text":"✧satellite>>","color": "green"},{"text": "jumping!","color": "blue"}]

tag @s add MK.k.Attacker
scoreboard players set $MK.k.Ypower MK.k.knockbackValue 100
scoreboard players set $MK.k.Xpower MK.k.knockbackValue 300
scoreboard players set $MK.k.OffsetY MK.k.knockbackValue 400
function mikatanlib:knockback/knockbackexe