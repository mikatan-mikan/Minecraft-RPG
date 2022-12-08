
##halloween
    ##わき制限  FieldHalloween tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $halloween_count field_loop
    scoreboard players operation $score TMP %= $200 int
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldHalloween] run function mikatanserver:adddim/area/halloween/mob/zombie/spawn/spawncheck
    #execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldHalloween] run function mikatanserver:adddim/area/halloween/mob/wither/spawn/spawncheck

    ##村人に話しかけたなら
    execute as @a[tag=FieldHalloween,scores={VillagerFlag=1..},predicate=mikatanserver:villager/halloween/1] at @s run function mikatanserver:adddim/area/halloween/villager/talk_1
    execute as @a[tag=FieldHalloween,scores={VillagerFlag=1..},predicate=mikatanserver:villager/halloween/2] at @s run function mikatanserver:adddim/area/halloween/villager/talk_2
    execute as @a[tag=FieldHalloween,scores={VillagerFlag=1..},predicate=mikatanserver:villager/halloween/3] at @s run function mikatanserver:adddim/area/halloween/villager/talk_3
    execute as @a[tag=FieldHalloween,scores={VillagerFlag=1..},predicate=mikatanserver:villager/halloween/4] at @s run function mikatanserver:adddim/area/halloween/villager/talk_4
    execute as @a[tag=FieldHalloween,scores={VillagerFlag=1..},predicate=mikatanserver:villager/halloween/5] at @s run function mikatanserver:adddim/area/halloween/villager/talk_5
    scoreboard players set @a[tag=FieldHalloween] VillagerFlag 0


##ループリセット
execute if score $halloween_count field_loop matches 600.. run scoreboard players set $halloween_count field_loop 0

##わきループ
scoreboard players add $halloween_count field_loop 1