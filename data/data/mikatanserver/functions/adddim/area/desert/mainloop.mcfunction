
##desert
    ##スポーン制限  FieldDesert tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $desert_count field_loop
    scoreboard players operation $score TMP %= $300 int

    ##モブ(数が多いので関数に渡す)
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldDesert] run function mikatanserver:adddim/area/desert/mob/spawncheck

    ##村人に話しかけたなら memo:ストーリー変数StoryVillagerTalkを宣言
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/1] at @s run function mikatanserver:adddim/area/desert/villager/talk_1
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/2] at @s run function mikatanserver:adddim/area/desert/villager/talk_2
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/3] at @s run function mikatanserver:adddim/area/desert/villager/talk_3
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/4] at @s run function mikatanserver:adddim/area/desert/villager/talk_4
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/5] at @s run function mikatanserver:adddim/area/desert/villager/talk_5
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/6] at @s run function mikatanserver:adddim/area/desert/villager/talk_6
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/7] at @s run function mikatanserver:adddim/area/desert/villager/talk_7
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/8] at @s run function mikatanserver:adddim/area/desert/villager/talk_8
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/9] at @s run function mikatanserver:adddim/area/desert/villager/talk_9
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/10] at @s run function mikatanserver:adddim/area/desert/villager/talk_10
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/11] at @s run function mikatanserver:adddim/area/desert/villager/talk_11
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/12] at @s run function mikatanserver:adddim/area/desert/villager/talk_12
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/13] at @s run function mikatanserver:adddim/area/desert/villager/talk_13
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/14] at @s run function mikatanserver:adddim/area/desert/villager/talk_14
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/15] at @s run function mikatanserver:adddim/area/desert/villager/talk_15
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/16] at @s run function mikatanserver:adddim/area/desert/villager/talk_16
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/17] at @s run function mikatanserver:adddim/area/desert/villager/talk_17
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/18] at @s run function mikatanserver:adddim/area/desert/villager/talk_18
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/19] at @s run function mikatanserver:adddim/area/desert/villager/talk_19
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/20] at @s run function mikatanserver:adddim/area/desert/villager/talk_20
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/21] at @s run function mikatanserver:adddim/area/desert/villager/talk_21
    execute as @a[tag=FieldDesert,scores={VillagerFlag=1..},predicate=mikatanserver:villager/desert/22] at @s run function mikatanserver:adddim/area/desert/villager/talk_22
    scoreboard players set @a VillagerFlag 0

    ##holy ghost
    execute as @a[scores={field_mobcount=1..},tag=FieldDesert,predicate=mikatanserver:chance/0.01] at @s run function mikatanserver:adddim/area/desert/mob/holy_ghost
    scoreboard players set @a field_mobcount 0

    ##ボススポーン
    execute in mikatanserver:dungeon if score $desert_count field_loop matches 8000 if entity @a[tag=FieldDesert] unless score $desert_boss_flag field_loop matches 1 run function mikatanserver:adddim/area/desert/boss/main
    execute in mikatanserver:dungeon if score $desert_count field_loop matches 8000 if entity @a[tag=FieldDesert] if score $desert_boss_flag field_loop matches 1 run tp @e[type=husk,tag=Area_Desert_Boss] -2301.5 108 1239.5
        ##ボス死亡検知
        execute if score $desert_boss_flag field_loop matches 1 unless entity @e[type=husk,tag=Area_Desert_Boss] positioned -2301.5 108 1239.5 run function mikatanserver:adddim/area/desert/boss/death
            #誤検知
            execute unless score $desert_boss_flag field_loop matches 1 if entity @e[type=husk,tag=Area_Desert_Boss] run scoreboard players set $desert_boss_flag field_loop 1
        ##スキルメインループ
        execute if entity @e[type=husk,tag=Area_Desert_Boss] as @e[type=husk,tag=Area_Desert_Boss] at @s run function mikatanserver:adddim/area/desert/boss/skill/mainloop

    #採掘
    execute in mikatanserver:dungeon as @a[tag=FieldDesert] run function mikatanserver:adddim/area/desert/blocks/check

    ##パルクール
    #memo:タイマー変数ParkourTime,報酬変数DesertParkItems,エリトラ検知変数IsElytraを宣言する
    #     removetagでの削除時に変数,Tagをreset
    #     時間表示UIの作成
    execute as @e[tag=DesertParkourStart] at @s as @a[tag=FieldDesert,distance=..1] unless score @s Delay matches 0.. run function mikatanserver:adddim/area/desert/parkour/start
    execute as @a[tag=DesertParkour] run function mikatanserver:adddim/area/desert/parkour/timecnt
    execute as @e[tag=DesertParkourGoal] at @s as @a[tag=DesertParkour,distance=..1] run function mikatanserver:adddim/area/desert/parkour/goal
    ##delay
    execute as @a[scores={Delay=1..}] run scoreboard players remove @s Delay 1
    execute as @a[scores={Delay=0}] run scoreboard players reset @s Delay 



##ループリセット
execute if score $desert_count field_loop matches 17000.. run scoreboard players set $desert_count field_loop 0

##スポーンループ
scoreboard players add $desert_count field_loop 1