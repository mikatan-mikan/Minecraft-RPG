
##ender
    ##わき制限  FieldEnder tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $count ender_field_loop
    scoreboard players operation $score TMP %= $200 int
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldEnder] run function mikatanserver:adddim/area/ender/mob/enderman/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldEnder] run function mikatanserver:adddim/area/ender/mob/wither/spawn/spawncheck

    ## キレてるエンダーマンを検知する
    # execute as @e[tag=field_ender_angryflag] run function mikatanserver:adddim/area/ender/mob/enderman/angry/main



    ##村人に話しかけたなら
    execute as @a[tag=FieldEnder,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end/1] at @s run function mikatanserver:adddim/area/ender/villager/talk_1
    execute as @a[tag=FieldEnder,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end/2] at @s run function mikatanserver:adddim/area/ender/villager/talk_2
    execute as @a[tag=FieldEnder,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end/3] at @s run function mikatanserver:adddim/area/ender/villager/talk_3
    execute as @a[tag=FieldEnder,scores={VillagerFlag=1..},predicate=mikatanserver:villager/end/4] at @s run function mikatanserver:adddim/area/ender/villager/talk_4
    scoreboard players set @a VillagerFlag 0

    kill @e[type=item,nbt={Item:{id:"minecraft:end_portal_frame"}}]

    ##発光検知
    execute as @a[nbt={Inventory:[{id:"minecraft:light",tag:{ender_light:1b}}]}] at @s run function mikatanserver:adddim/area/ender/item/light/main
    ##クエスト判定
    execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{ender_quest:true}}]}] at @s run function mikatanserver:adddim/area/ender/item/quest/check


##ループリセット
execute if score $count ender_field_loop matches 600.. run scoreboard players set $count ender_field_loop 0

##わきループ
scoreboard players add $count ender_field_loop 1