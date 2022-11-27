
##cave
    ##わき制限  FieldCave tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $count_cave field_loop
    scoreboard players operation $score TMP %= $200 int
    execute in mikatanserver:dungeon if score $count_cave field_loop matches 10 if entity @a[tag=FieldCave] run function mikatanserver:adddim/area/cave/mob/high_zombie/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldCave] run function mikatanserver:adddim/area/cave/mob/zombie/spawn/spawncheck

    #採掘
    execute in mikatanserver:dungeon as @a[tag=FieldCave] run function mikatanserver:adddim/area/cave/blocks/check
    
    ##村人に話しかけたなら
    execute as @a[tag=FieldCave,scores={VillagerFlag=1..},predicate=mikatanserver:villager/cave/1] at @s run function mikatanserver:adddim/area/cave/villager/talk_1
    execute as @a[tag=FieldCave,scores={VillagerFlag=1..},predicate=mikatanserver:villager/cave/2] at @s run function mikatanserver:adddim/area/cave/villager/talk_2
    execute as @a[tag=FieldCave,scores={VillagerFlag=1..},predicate=mikatanserver:villager/cave/3] at @s run function mikatanserver:adddim/area/cave/villager/talk_3
    scoreboard players set @a VillagerFlag 0

##ループリセット
execute if score $count_cave field_loop matches 1200.. run scoreboard players set $count_cave field_loop 0

##わきループ
scoreboard players add $count_cave field_loop 1