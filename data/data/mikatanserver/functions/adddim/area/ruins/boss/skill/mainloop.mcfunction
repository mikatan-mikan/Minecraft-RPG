particle witch ~ ~ ~ 0.2 0.2 0.2 1 5

execute store result bossbar ruins_witch value run data get entity @s Health
bossbar set ruins_witch players @a[tag=FieldRuins]

tp @e[tag=Ruins_BossNowPlaceAr] @s

    ##ビーム
    execute if score $score TMP matches 60..80 positioned ~ ~1 ~ run function mikatanserver:adddim/area/ruins/boss/skill/masic_1/before_particle
    execute if score $score TMP matches 90 positioned ~ ~1 ~ run function mikatanserver:adddim/area/ruins/boss/skill/masic_1/main

    ##範囲ダメージ
    execute if score $score TMP matches 170 run function mikatanserver:adddim/area/ruins/boss/skill/masic_2/main