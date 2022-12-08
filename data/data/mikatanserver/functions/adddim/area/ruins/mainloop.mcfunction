
##ruins
    ##わき制限  FieldRuins tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $ruins_count field_loop
    scoreboard players operation $score TMP %= $300 int
    ##モブ(数が多いので関数に渡す)
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldRuins] run function mikatanserver:adddim/area/ruins/mob/spawncheck

    ##村人に話しかけたなら
    execute as @a[tag=FieldRuins,scores={VillagerFlag=1..},predicate=mikatanserver:villager/ruins/1] at @s run function mikatanserver:adddim/area/ruins/villager/talk_1
    execute as @a[tag=FieldRuins,scores={VillagerFlag=1..},predicate=mikatanserver:villager/ruins/2] at @s run function mikatanserver:adddim/area/ruins/villager/talk_2
    execute as @a[tag=FieldRuins,scores={VillagerFlag=1..},predicate=mikatanserver:villager/ruins/3] at @s run function mikatanserver:adddim/area/ruins/villager/talk_3
    execute as @a[tag=FieldRuins,scores={VillagerFlag=1..},predicate=mikatanserver:villager/ruins/4] at @s run function mikatanserver:adddim/area/ruins/villager/talk_4
    scoreboard players set @a[tag=FieldRuins] VillagerFlag 0

    ##mini boss
    execute in mikatanserver:dungeon if score $ruins_count field_loop matches 1000 unless entity @e[tag=Area_Ruins_Boss] run function mikatanserver:adddim/area/ruins/boss/main
        #boss loop
        execute as @e[type=witch,tag=Area_Ruins_Boss] at @s run function mikatanserver:adddim/area/ruins/boss/skill/mainloop
        ##チャンク外対策
        execute if score $ruins_boss_flag field_loop matches 0 if entity @e[type=witch,tag=Area_Ruins_Boss] run scoreboard players set $ruins_boss_flag field_loop 1
        ##ボス死亡検知
        execute if score $ruins_boss_flag field_loop matches 1 unless entity @e[type=witch,tag=Area_Ruins_Boss] run function mikatanserver:adddim/area/ruins/boss/death

    ##ruins vinus
    execute as @a[scores={field_mobcount=1..},tag=FieldRuins,predicate=mikatanserver:chance/0.015] at @s run function mikatanserver:adddim/area/ruins/mob/vinus
    scoreboard players set @a field_mobcount 0

    ##witch masic
    execute in mikatanserver:dungeon if score $score TMP matches 100..120 if entity @a[tag=FieldRuins] as @e[type=witch,tag=field_witch_ruins] at @s positioned ~ ~1 ~ run function mikatanserver:adddim/area/ruins/mob/masic_witch/masic/before_particle
    execute in mikatanserver:dungeon if score $score TMP matches 130 if entity @a[tag=FieldRuins] as @e[type=witch,tag=field_witch_ruins] at @s positioned ~ ~1 ~ run function mikatanserver:adddim/area/ruins/mob/masic_witch/masic/main


##ループリセット
execute if score $ruins_count field_loop matches 18000.. run scoreboard players set $ruins_count field_loop 0

##わきループ
scoreboard players add $ruins_count field_loop 1