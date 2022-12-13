
##volcano
    ##スポーン制限  FieldVolcano tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $volcano_count field_loop
    scoreboard players operation $score TMP %= $300 int

    ##モブ(数が多いので関数に渡す)
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldVolcano] run function mikatanserver:adddim/area/volcano/mob/spawncheck

    ##村人に話しかけたなら
    execute as @a[tag=FieldVolcano,scores={VillagerFlag=1..},predicate=mikatanserver:villager/volcano/1] at @s run function mikatanserver:adddim/area/volcano/villager/talk_1
    execute as @a[tag=FieldVolcano,scores={VillagerFlag=1..},predicate=mikatanserver:villager/volcano/2] at @s run function mikatanserver:adddim/area/volcano/villager/talk_2
    execute as @a[tag=FieldVolcano,scores={VillagerFlag=1..},predicate=mikatanserver:villager/volcano/3] at @s run function mikatanserver:adddim/area/volcano/villager/talk_3
    scoreboard players set @a VillagerFlag 0

    ##パルクール
    #memo:タイマー変数ParkourTime,報酬変数VolcanoParkItems,エリトラ検知変数IsElytraを宣言する
    #     removetagでの削除時に変数,Tagをreset
    #     時間表示UIの作成
    execute as @e[tag=VolvanoParkourStart] at @s as @a[tag=FieldVolcano,distance=..1] unless score @s Delay matches 0.. run function mikatanserver:adddim/area/volcano/parkour/start
    execute as @a[tag=VolcanoParkour] run function mikatanserver:adddim/area/volcano/parkour/timecnt
    execute as @e[tag=VolcanoParkourGoal] at @s as @a[tag=VolcanoParkour,distance=..1] run function mikatanserver:adddim/area/volcano/parkour/goal
    ##delay
    execute as @a[scores={Delay=1..}] run scoreboard players remove @s Delay 1
    execute as @a[scores={Delay=0}] run scoreboard players reset @s Delay 



##ループリセット
execute if score $volcano_count field_loop matches 18000.. run scoreboard players set $volcano_count field_loop 0

##スポーンループ
scoreboard players add $volcano_count field_loop 1