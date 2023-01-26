
##universe
    ##スポーン制限  FieldUniverse tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $universe_count field_loop
    scoreboard players operation $score TMP %= $300 int

    execute as @a[tag=FieldUniverse] unless data entity @s Inventory[{Slot:9b}].tag.gravity_talisman run effect give @s jump_boost 1 20 true

    ##モブ(数が多いので関数に渡す)
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldUniverse] run function mikatanserver:adddim/area/universe/mob/spawncheck

    ##パルクール
    #memo:タイマー変数ParkourTime,報酬変数UniverseParkItems,エリトラ検知変数IsElytraを宣言する
    #     removetagでの削除時に変数,Tagをreset
    #     時間表示UIの作成
    execute as @e[tag=UniverseParkourStart] at @s as @a[tag=FieldUniverse,distance=..1] unless score @s Delay matches 0.. run function mikatanserver:adddim/area/universe/parkour/start
    execute as @a[tag=UniverseParkour] run function mikatanserver:adddim/area/universe/parkour/timecnt
    execute as @e[tag=UniverseParkourGoal] at @s as @a[tag=UniverseParkour,distance=..1] run function mikatanserver:adddim/area/universe/parkour/goal
    ##delay
    execute as @a[scores={Delay=1..}] run scoreboard players remove @s Delay 1
    execute as @a[scores={Delay=0}] run scoreboard players reset @s Delay 

    ##村人に話しかけたなら
    execute as @a[tag=FieldUniverse,scores={VillagerFlag=1..},predicate=mikatanserver:villager/universe/1] at @s run function mikatanserver:adddim/area/universe/villager/talk_1
    scoreboard players set @a VillagerFlag 0



##ループリセット
execute if score $universe_count field_loop matches 18000.. run scoreboard players set $universe_count field_loop 0

##スポーンループ
scoreboard players add $universe_count field_loop 1