
##ender
    ##わき制限  FieldEnder_2 tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $ender_tier2_count field_loop
    scoreboard players operation $score TMP %= $200 int
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldEnder_2] run function mikatanserver:adddim/area/ender_tier2/mob/enderman/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldEnder_2] run function mikatanserver:adddim/area/ender_tier2/mob/wither/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldEnder_2] run function mikatanserver:adddim/area/ender_tier2/mob/skeleton/spawn/spawncheck


    ##サモアイ判定
    execute as @a[scores={field_EnderKillCnt=1..},tag=FieldEnder_2] at @s if predicate mikatanserver:chance/0.02 run function mikatanserver:adddim/area/ender_tier2/mob/summon_eye_ender
    execute as @a[scores={field_EnderKillCnt=1..},tag=FieldEnder_2,nbt={Inventory:[{id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{ender2_ar:1b}}]}] at @s if predicate mikatanserver:chance/0.02 run function mikatanserver:adddim/area/ender_tier2/mob/summon_eye_ender
    execute as @a[scores={field_EnderKillCnt=1..},tag=FieldEnder_2,nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{ender2_ar:1b}}]}] at @s if predicate mikatanserver:chance/0.02 run function mikatanserver:adddim/area/ender_tier2/mob/summon_eye_ender
    execute as @a[scores={field_EnderKillCnt=1..},tag=FieldEnder_2,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{ender2_ar:1b}}]}] at @s if predicate mikatanserver:chance/0.02 run function mikatanserver:adddim/area/ender_tier2/mob/summon_eye_ender
    scoreboard players set @a field_EnderKillCnt 0

    ##村人に話しかけたなら
    execute as @a[tag=FieldEnder_2,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end_tier2/1] at @s run function mikatanserver:adddim/area/ender_tier2/villager/talk_1
    execute as @a[tag=FieldEnder_2,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end_tier2/2] at @s run function mikatanserver:adddim/area/ender_tier2/villager/talk_2
    execute as @a[tag=FieldEnder_2,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end_tier2/3] at @s run function mikatanserver:adddim/area/ender_tier2/villager/talk_3
    execute as @a[tag=FieldEnder_2,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end_tier2/4] at @s run function mikatanserver:adddim/area/ender_tier2/villager/talk_4
    scoreboard players set @a VillagerFlag 0

    kill @e[type=item,nbt={Item:{id:"minecraft:end_portal_frame"}}]

    ##ボススポーン
    execute in mikatanserver:dungeon if score $ender_tier2_count field_loop matches 8000 if entity @a[tag=FieldEnder_2] unless entity @e[type=enderman,tag=ender_boss] run function mikatanserver:adddim/area/ender_tier2/boss/enderman/spawn/spawncheck
    execute in mikatanserver:dungeon if score $ender_tier2_count field_loop matches 8000 if entity @a[tag=FieldEnder_2] if entity @e[type=enderman,tag=ender_boss] run tp @e[type=enderman,tag=ender_boss] 347.5 -16 -1211.5
        ##スキルメインループ
        execute if entity @e[type=enderman,tag=ender_boss] as @e[type=enderman,tag=ender_boss] at @s run function mikatanserver:adddim/area/ender_tier2/boss/enderman/skill/mainloop
        ##ボス死亡検知
        execute if score $boss_flag field_loop matches 1 unless entity @e[type=enderman,tag=ender_boss] positioned 347.5 -16 -1211.5 run function mikatanserver:adddim/area/ender_tier2/boss/enderman/death


    ##クエスト判定
    execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{ender_tier2_quest:true}}]}] at @s run function mikatanserver:adddim/area/ender_tier2/item/quest/check


##ループリセット
execute if score $ender_tier2_count field_loop matches 10000.. run scoreboard players set $ender_tier2_count field_loop 0

##わきループ
scoreboard players add $ender_tier2_count field_loop 1