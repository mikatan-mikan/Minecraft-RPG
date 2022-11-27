particle lava ~ ~ ~ 2 0.3 2 0 20

execute store result bossbar nether_tier2_magmaboss value run scoreboard players get @e[tag=nether_tier2_magmacube,limit=1] mh.hp
bossbar set nether_tier2_magmaboss players @a[tag=FieldNether_2]

scoreboard players operation $10cnt TMP = $score TMP
scoreboard players operation $10cnt TMP %= $10 int
execute if score $10cnt TMP matches 0 run kill @e[tag=Nether_tier2_BossNowPlaceAr]
execute if score $10cnt TMP matches 0 run summon armor_stand ~ ~ ~ {Tags:["Nether_tier2_BossNowPlaceAr"],Invisible:1b,Invulnerable:1b,Small:1b,NoAI:1b}

execute if score $score TMP matches 80 run function mikatanserver:adddim/area/nether_tier2/mob/magma_cube/skill/firecircle/main

scoreboard players reset $10cnt TMP