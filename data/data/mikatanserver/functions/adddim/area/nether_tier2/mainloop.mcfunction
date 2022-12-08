
##nether
    ##わき制限  FieldNether_2 tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $nether2_count field_loop
    scoreboard players operation $score TMP %= $200 int
    scoreboard players operation $mini_score TMP = $nether2_count field_loop
    scoreboard players operation $mini_score TMP %= $1000 int
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldNether_2] run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldNether_2] run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/mid_spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldNether_2] run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/hig_spawncheck
    # execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldNether_2] run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/armor_reset
    execute in mikatanserver:dungeon if score $mini_score TMP matches 0 if entity @a[tag=FieldNether_2] run function mikatanserver:adddim/area/nether_tier2/mob/def_zombie/spawn/miniboss/spawncheck

    ##ボススポーン
    execute in mikatanserver:dungeon if score $nether2_count field_loop matches 8000 if entity @a[tag=FieldNether_2] unless score $nether_tier2_boss_flag field_loop matches 1 run function mikatanserver:adddim/area/nether_tier2/mob/magma_cube/spawn/spawncheck
    execute in mikatanserver:dungeon if score $nether2_count field_loop matches 8000 if entity @a[tag=FieldNether_2] if score $nether_tier2_boss_flag field_loop matches 1 run tp @e[type=magma_cube,tag=nether_tier2_magmacube] 2132.5 85 688.5
        ##スキルメインループ
        execute if entity @e[type=magma_cube,tag=nether_tier2_magmacube] as @e[type=magma_cube,tag=nether_tier2_magmacube] at @s run function mikatanserver:adddim/area/nether_tier2/mob/magma_cube/skill/mainloop
        ##ボス死亡検知(ボスがいなくてボスがいた場所のアマスタが存在しているなら)
        execute if score $nether_tier2_boss_flag field_loop matches 1 unless entity @e[type=magma_cube,tag=nether_tier2_magmacube] if entity @e[tag=Nether_tier2_BossNowPlaceAr] positioned 2132.5 85 688.5 run function mikatanserver:adddim/area/nether_tier2/mob/magma_cube/death

    ##村人に話しかけたなら
    execute as @a[tag=FieldNether_2,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether_tier2/1] at @s run function mikatanserver:adddim/area/nether_tier2/villager/talk_1
    execute as @a[tag=FieldNether_2,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether_tier2/2] at @s run function mikatanserver:adddim/area/nether_tier2/villager/talk_2
    scoreboard players set @a[tag=FieldNether_2] VillagerFlag 0
    
    ##クエスト判定
    execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{nether_quest:true}}]}] at @s run function mikatanserver:adddim/area/nether/item/quest/check


##ループリセット
execute if score $nether2_count field_loop matches 12000.. run scoreboard players set $nether2_count field_loop 0

##わきループ
scoreboard players add $nether2_count field_loop 1