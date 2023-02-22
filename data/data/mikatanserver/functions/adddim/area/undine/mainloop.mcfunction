
##undine
    ##スポーン制限  FieldUndine tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $undine_count field_loop
    scoreboard players operation $score TMP %= $300 int

    ##モブ(数が多いので関数に渡す)
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldUndine] run function mikatanserver:adddim/area/undine/mob/spawncheck

    ##村人に話しかけたなら memo:ストーリー変数StoryVillagerTalkを宣言
    execute as @a[tag=FieldUndine,scores={VillagerFlag=1..},predicate=mikatanserver:villager/undine/1] at @s run function mikatanserver:adddim/area/undine/villager/talk_1
    execute as @a[tag=FieldUndine,scores={VillagerFlag=1..},predicate=mikatanserver:villager/undine/2] at @s run function mikatanserver:adddim/area/undine/villager/talk_2
    execute as @a[tag=FieldUndine,scores={VillagerFlag=1..},predicate=mikatanserver:villager/undine/3] at @s run function mikatanserver:adddim/area/undine/villager/talk_3
    scoreboard players set @a VillagerFlag 0

    ##holy ghost
    execute as @a[scores={field_mobcount=1..},tag=FieldUndine,predicate=mikatanserver:chance/0.01] at @s run function mikatanserver:adddim/area/undine/mob/breeze
    scoreboard players set @a field_mobcount 0



##ループリセット
execute if score $undine_count field_loop matches 17000.. run scoreboard players set $undine_count field_loop 0

##スポーンループ
scoreboard players add $undine_count field_loop 1