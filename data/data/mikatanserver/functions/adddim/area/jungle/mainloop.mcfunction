
##jungle
    ##わき制限  FieldJungle tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $jungle_count field_loop
    scoreboard players operation $score TMP %= $200 int
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldJungle] run function mikatanserver:adddim/area/jungle/mob/wooden_zombie/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldJungle] run function mikatanserver:adddim/area/jungle/mob/high_zombie/spawn/spawncheck

    ##ボススポーン
    execute if entity @a[nbt={Inventory:[{id:"minecraft:player_head",tag:{jungle_boss:true}}]}] in mikatanserver:dungeon run function mikatanserver:adddim/area/jungle/boss/summon
    execute in mikatanserver:dungeon if score $jungle_count field_loop matches 1000 if entity @a[tag=FieldJungle] if entity @e[type=zombie,tag=Jungle_Boss] run tp @e[type=zombie,tag=Jungle_Boss] -803.5 129 235.5
        ##スキルメインループ
        execute if entity @e[type=zombie,tag=Jungle_Boss] as @e[type=zombie,tag=Jungle_Boss] at @s run function mikatanserver:adddim/area/jungle/boss/skill/mainloop
        ##ボス死亡検知
        execute if score $jungle_boss_flag field_loop matches 1 unless entity @e[type=zombie,tag=Jungle_Boss] positioned -803.5 129 235.5 run function mikatanserver:adddim/area/jungle/boss/death

    ##村人に話しかけたなら
    execute as @a[tag=FieldJungle,scores={VillagerFlag=1..},predicate=mikatanserver:villager/jungle/1] at @s run function mikatanserver:adddim/area/jungle/villager/talk_1
    execute as @a[tag=FieldJungle,scores={VillagerFlag=1..},predicate=mikatanserver:villager/jungle/2] at @s run function mikatanserver:adddim/area/jungle/villager/talk_2
    execute as @a[tag=FieldJungle,scores={VillagerFlag=1..},predicate=mikatanserver:villager/jungle/3] at @s run function mikatanserver:adddim/area/jungle/villager/talk_3
    scoreboard players set @a[tag=FieldJungle] VillagerFlag 0


##ループリセット
execute if score $jungle_count field_loop matches 8000.. run scoreboard players set $jungle_count field_loop 0

##わきループ
scoreboard players add $jungle_count field_loop 1