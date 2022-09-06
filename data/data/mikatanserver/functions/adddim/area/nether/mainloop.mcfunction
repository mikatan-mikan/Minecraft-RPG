
##nether
    ##わき制限  FieldNether tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $count nether_field_loop
    scoreboard players operation $score TMP %= $200 int
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldNether] run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldNether] run function mikatanserver:adddim/area/nether/mob/magma_cube/spawn/spawncheck

    ##村人に話しかけたなら
    execute as @a[tag=FieldNether,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether/1] at @s run function mikatanserver:adddim/area/nether/villager/talk_1
    execute as @a[tag=FieldNether,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether/2] at @s run function mikatanserver:adddim/area/nether/villager/talk_2
    execute as @a[tag=FieldNether,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether/3] at @s run function mikatanserver:adddim/area/nether/villager/talk_3
    execute as @a[tag=FieldNether,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether/4] at @s run function mikatanserver:adddim/area/nether/villager/talk_4
    scoreboard players set @a VillagerFlag 0


##ループリセット
execute if score $count nether_field_loop matches 180000.. run scoreboard players set $count nether_field_loop 0

##わきループ
scoreboard players add $count nether_field_loop 1