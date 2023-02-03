
##salamander
    ##スポーン制限  FieldSalamander tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $salamander_count field_loop
    scoreboard players operation $score TMP %= $300 int

    ##モブ(数が多いので関数に渡す)
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldSalamander] run function mikatanserver:adddim/area/salamander/mob/spawncheck

    ##村人に話しかけたなら memo:ストーリー変数StoryVillagerTalkを宣言
    execute as @a[tag=FieldSalamander,scores={VillagerFlag=1..},predicate=mikatanserver:villager/salamander/1] at @s run function mikatanserver:adddim/area/salamander/villager/talk_1
    execute as @a[tag=FieldSalamander,scores={VillagerFlag=1..},predicate=mikatanserver:villager/salamander/2] at @s run function mikatanserver:adddim/area/salamander/villager/talk_2
    execute as @a[tag=FieldSalamander,scores={VillagerFlag=1..},predicate=mikatanserver:villager/salamander/3] at @s run function mikatanserver:adddim/area/salamander/villager/talk_3
    scoreboard players set @a VillagerFlag 0




##ループリセット
execute if score $salamander_count field_loop matches 17000.. run scoreboard players set $salamander_count field_loop 0

##スポーンループ
scoreboard players add $salamander_count field_loop 1