particle block oak_leaves ~ ~ ~ 2 0.3 2 0 20

execute store result bossbar jungle_zombie value run data get entity @e[tag=Jungle_Boss,limit=1] Health
bossbar set jungle_zombie players @a[tag=FieldJungle]

scoreboard players operation $10cnt TMP = $score TMP
scoreboard players operation $10cnt TMP %= $10 int
execute if score $10cnt TMP matches 0 run kill @e[tag=Jungle_BossNowPlaceAr]
execute if score $10cnt TMP matches 0 run summon armor_stand ~ ~ ~ {Tags:["Jungle_BossNowPlaceAr"],Invisible:1b,Invulnerable:1b,Small:1b,NoAI:1b}

execute if score $score TMP matches 60 run function mikatanserver:adddim/area/jungle/boss/skill/str/main

scoreboard players reset $10cnt TMP