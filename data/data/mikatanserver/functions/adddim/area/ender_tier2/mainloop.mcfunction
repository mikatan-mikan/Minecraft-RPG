
##ender
    ##わき制限  FieldEnder_2 tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $ender_tier2_count field_loop
    scoreboard players operation $score TMP %= $200 int
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldEnder_2] run function mikatanserver:adddim/area/ender_tier2/mob/high/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldEnder_2] run function mikatanserver:adddim/area/ender_tier2/mob/miniboss/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldEnder_2] run function mikatanserver:adddim/area/ender_tier2/mob/under/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldEnder_2] run function mikatanserver:adddim/area/ender_tier2/mob/forest/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldEnder_2] run function mikatanserver:adddim/area/ender_tier2/mob/main/spawn/spawncheck



    ##村人に話しかけたなら
    execute as @a[tag=FieldEnder_2,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end_tier2/1] at @s run function mikatanserver:adddim/area/ender_tier2/villager/talk_1
    execute as @a[tag=FieldEnder_2,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end_tier2/2] at @s run function mikatanserver:adddim/area/ender_tier2/villager/talk_2
    execute as @a[tag=FieldEnder_2,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end_tier2/3] at @s run function mikatanserver:adddim/area/ender_tier2/villager/talk_3
    execute as @a[tag=FieldEnder_2,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end_tier2/4] at @s run function mikatanserver:adddim/area/ender_tier2/villager/talk_4
    scoreboard players set @a VillagerFlag 0

    kill @e[type=item,nbt={Item:{id:"minecraft:end_portal_frame"}}]

    ##ボススポーン
    execute in mikatanserver:dungeon if block 1258 74 -1095 player_head{SkullOwner:{Id:[I;-1459696268,-1402516994,-1436406964,-922078159],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTgzODNlZGRjZmFiOTExMDJhYjRhZTEwYjM0YjZlMjI3YzY4NTljOTRkMjgwNDk3N2VhMDFiMTZiOTk2MGNkMyJ9fX0="}]}}} if block 1259 74 -1094 player_head{SkullOwner:{Id:[I;-1459696268,-1402516994,-1436406964,-922078159],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTgzODNlZGRjZmFiOTExMDJhYjRhZTEwYjM0YjZlMjI3YzY4NTljOTRkMjgwNDk3N2VhMDFiMTZiOTk2MGNkMyJ9fX0="}]}}} if entity @a[tag=FieldEnder_2] unless entity @e[tag=ender_boss] run function mikatanserver:adddim/area/ender_tier2/boss/enderman/spawn/spawncheck
    # execute in mikatanserver:dungeon if score $ender_tier2_count field_loop matches 8000 if entity @a[tag=FieldEnder_2] if entity @e[tag=ender_boss] run tp @e[tag=ender_boss] 347.5 -16 -1211.5
        ##スキルメインループ
        execute if entity @e[tag=ender_boss] as @e[tag=ender_boss] at @s run function mikatanserver:adddim/area/ender_tier2/boss/enderman/skill/mainloop
        ##ボス死亡検知
        execute if score $ender_tier2_boss_flag field_loop matches 1 unless entity @e[tag=ender_boss] positioned 1305 -37 -1092 run function mikatanserver:adddim/area/ender_tier2/boss/enderman/death


    ##クエスト判定
    execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{ender_tier2_quest:true}}]}] at @s run function mikatanserver:adddim/area/ender_tier2/item/quest/check


##ループリセット
execute if score $ender_tier2_count field_loop matches 10000.. run scoreboard players set $ender_tier2_count field_loop 0

##わきループ
scoreboard players add $ender_tier2_count field_loop 1

#/give @p minecraft:player_head{display:{Name:"{\"text\":\"End Portal Frame (eye filled)\"}"},SkullOwner:{Id:[I;-1459696268,-1402516994,-1436406964,-922078159],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTgzODNlZGRjZmFiOTExMDJhYjRhZTEwYjM0YjZlMjI3YzY4NTljOTRkMjgwNDk3N2VhMDFiMTZiOTk2MGNkMyJ9fX0="}]}}} 1