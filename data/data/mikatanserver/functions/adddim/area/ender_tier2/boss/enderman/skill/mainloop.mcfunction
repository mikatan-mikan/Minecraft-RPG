particle witch ~ ~ ~ 2 0.3 2 0 3
effect give @s glowing 1 0

execute store result bossbar nether_magmaboss value run scoreboard players get @s mh.hp
bossbar set nether_magmaboss players @a[tag=FieldEnder_2]

scoreboard players operation $10cnt TMP = $score TMP
scoreboard players operation $10cnt TMP %= $10 int
execute if score $10cnt TMP matches 0 run kill @e[tag=Ender_BossNowPlaceAr]
execute if score $10cnt TMP matches 0 run summon armor_stand ~ ~ ~ {Tags:["Ender_BossNowPlaceAr"],Invisible:1b,Invulnerable:1b,Small:1b,NoAI:1b}

execute if score $score TMP matches 80 run function mikatanserver:adddim/area/ender_tier2/boss/enderman/skill/put_defender/main

scoreboard players reset $10cnt TMP