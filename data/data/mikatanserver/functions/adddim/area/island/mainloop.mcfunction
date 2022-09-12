
##ender
    ##わき制限  FieldIsland tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $count_island field_loop
    scoreboard players operation $score TMP %= $200 int
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldIsland] run function mikatanserver:adddim/area/island/mob/zombie/spawn/spawncheck

    #採掘
    execute in mikatanserver:dungeon as @a[tag=FieldIsland] run function mikatanserver:adddim/area/island/blocks/check

##ループリセット
execute if score $count_island field_loop matches 600.. run scoreboard players set $count_island field_loop 0

##わきループ
scoreboard players add $count_island field_loop 1