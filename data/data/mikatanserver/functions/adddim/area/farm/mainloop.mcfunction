
##farm
    ##わき制限  FieldRuins tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $farm_count field_loop
    scoreboard players operation $score TMP %= $200 int
    ##モブ(数が多いので関数に渡す)
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldFarm] run function mikatanserver:adddim/area/farm/mob/spawncheck

    #採掘
    execute in mikatanserver:dungeon as @a[tag=FieldFarm] run function mikatanserver:adddim/area/farm/blocks/check

##ループリセット
execute if score $farm_count field_loop matches 18000.. run scoreboard players set $farm_count field_loop 0

##わきループ
scoreboard players add $farm_count field_loop 1