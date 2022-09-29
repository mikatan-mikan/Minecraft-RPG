
##newyear_2023
    ##わき制限  FieldNewyear_2023 tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $newyear_2023_count field_loop
    scoreboard players operation $score TMP %= $200 int
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldNewyear_2023] run function mikatanserver:adddim/area/newyear_2023/mob/weak_mob/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 100 if entity @a[tag=FieldNewyear_2023] run function mikatanserver:adddim/area/newyear_2023/mob/strong_mob/spawn/spawncheck

    ##村人に話しかけたなら
    execute as @a[tag=FieldNewyear_2023,scores={VillagerFlag=1..},predicate=mikatanserver:villager/new_year_2023/1] at @s run function mikatanserver:adddim/area/newyear_2023/villager/talk_1
    execute as @a[tag=FieldNewyear_2023,scores={VillagerFlag=1..},predicate=mikatanserver:villager/new_year_2023/2] at @s run function mikatanserver:adddim/area/newyear_2023/villager/talk_2
    scoreboard players set @a VillagerFlag 0

    ##凍結＋パーティクル
    execute as @a[tag=FieldNewyear_2023] at @s run function mikatanserver:adddim/area/newyear_2023/player/main

##ループリセット
execute if score $newyear_2023_count field_loop matches 600.. run scoreboard players set $newyear_2023_count field_loop 0

##わきループ
scoreboard players add $newyear_2023_count field_loop 1