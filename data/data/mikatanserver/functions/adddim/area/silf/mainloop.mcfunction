
##silf
    ##スポーン制限  FieldSilf tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $silf_count field_loop
    scoreboard players operation $score TMP %= $300 int

    ##モブ(数が多いので関数に渡す)
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldSilf] run function mikatanserver:adddim/area/silf/mob/spawncheck

    ##村人に話しかけたなら memo:ストーリー変数StoryVillagerTalkを宣言
    execute as @a[tag=FieldSilf,scores={VillagerFlag=1..},predicate=mikatanserver:villager/silf/1] at @s run function mikatanserver:adddim/area/silf/villager/talk_1
    execute as @a[tag=FieldSilf,scores={VillagerFlag=1..},predicate=mikatanserver:villager/silf/2] at @s run function mikatanserver:adddim/area/silf/villager/talk_2
    execute as @a[tag=FieldSilf,scores={VillagerFlag=1..},predicate=mikatanserver:villager/silf/3] at @s run function mikatanserver:adddim/area/silf/villager/talk_3
    scoreboard players set @a VillagerFlag 0

    ##holy ghost
    execute as @a[scores={field_mobcount=1..},tag=FieldSilf,predicate=mikatanserver:chance/0.01] at @s run function mikatanserver:adddim/area/silf/mob/breeze
    scoreboard players set @a field_mobcount 0

    ##パルクール
    #memo:タイマー変数ParkourTime,報酬変数SilfParkItems,エリトラ検知変数IsElytraを宣言する
    #     removetagでの削除時に変数,Tagをreset
    #     時間表示UIの作成
    execute as @e[tag=SilfParkourStart] at @s as @a[tag=FieldSilf,distance=..1.5] unless score @s Delay matches 0.. run function mikatanserver:adddim/area/silf/parkour/start
    execute as @a[tag=SilfParkour] run function mikatanserver:adddim/area/silf/parkour/timecnt
    execute as @e[tag=SilfParkourGoal] at @s as @a[tag=SilfParkour,distance=..1.5] run function mikatanserver:adddim/area/silf/parkour/goal
    ##delay
    execute as @a[scores={Delay=1..}] run scoreboard players remove @s Delay 1
    execute as @a[scores={Delay=0}] run scoreboard players reset @s Delay 



##ループリセット
execute if score $silf_count field_loop matches 17000.. run scoreboard players set $silf_count field_loop 0

##スポーンループ
scoreboard players add $silf_count field_loop 1