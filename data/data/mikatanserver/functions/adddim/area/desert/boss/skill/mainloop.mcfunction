particle block sand ~ ~ ~ 0.2 0.2 0.2 1 5

execute store result bossbar desert_boss value run scoreboard players get @s mh.hp
bossbar set desert_boss players @a[tag=FieldDesert]
execute store result score $desert_boss_mob_cnt field_loop if entity @e[tag=BossMobs]

execute unless entity @e[tag=KillNot,tag=Area_Desert_Boss] run tag @s add KillNot
kill @e[tag=Area_Desert_Boss,tag=!KillNot,distance=1..100]
tp @e[tag=Ruins_BossNowPlaceAr] @s

    ##召喚
    execute if score $score TMP matches 60 if score $desert_boss_mob_cnt field_loop matches ..20 positioned ~ ~1 ~ run function mikatanserver:adddim/area/desert/boss/skill/masic_1/summon

    ##範囲ダメージ
    execute if score $score TMP matches 170 run function mikatanserver:adddim/area/desert/boss/skill/masic_2/main