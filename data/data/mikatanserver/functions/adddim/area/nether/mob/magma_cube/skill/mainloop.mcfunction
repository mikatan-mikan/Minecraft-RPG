particle lava ~ ~ ~ 2 0.3 2 0 20

execute store result bossbar nether_magmaboss value run data get entity @e[tag=nether_magmacube,limit=1] Health
bossbar set nether_magmaboss players @a[tag=FieldNether]

scoreboard players operation $10cnt TMP = $score TMP
scoreboard players operation $10cnt TMP %= $10 int
execute if score $10cnt TMP matches 0 run kill @e[tag=Nether_BossNowPlaceAr]
execute if score $10cnt TMP matches 0 run summon armor_stand ~ ~ ~ {Tags:["Nether_BossNowPlaceAr"],Invisible:1b,Invulnerable:1b,Small:1b,NoAI:1b}

execute if score $score TMP matches 80 run function mikatanserver:adddim/area/nether/mob/magma_cube/skill/firecircle/main
