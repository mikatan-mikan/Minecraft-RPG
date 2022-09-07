
##nether
    ##わき制限  FieldNether tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $count nether_field_loop
    scoreboard players operation $score TMP %= $200 int
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldNether] run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldNether] run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/mid_spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldNether] run function mikatanserver:adddim/area/nether/mob/def_zombie/spawn/hig_spawncheck
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldNether] run function mikatanserver:adddim/area/nether/mob/def_zombie/armor_reset

    ##ボススポーン
    execute in mikatanserver:dungeon if score $count nether_field_loop matches 8000 if entity @a[tag=FieldNether] unless entity @e[type=magma_cube,tag=nether_magmacube] run function mikatanserver:adddim/area/nether/mob/magma_cube/spawn/spawncheck
    execute in mikatanserver:dungeon if score $count nether_field_loop matches 8000 if entity @a[tag=FieldNether] if entity @e[type=magma_cube,tag=nether_magmacube] run tp @e[type=magma_cube,tag=nether_magmacube] 347.5 -16 -1211.5
        ##スキルメインループ
        execute if entity @e[type=magma_cube,tag=nether_magmacube] as @e[type=magma_cube,tag=nether_magmacube] at @s run function mikatanserver:adddim/area/nether/mob/magma_cube/skill/mainloop
        ##ボス死亡検知
        execute if score $boss_flag nether_field_loop matches 1 unless entity @e[type=magma_cube,tag=nether_magmacube] positioned 347.5 -16 -1211.5 run function mikatanserver:adddim/area/nether/mob/magma_cube/death

    ##村人に話しかけたなら
    execute as @a[tag=FieldNether,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether/1] at @s run function mikatanserver:adddim/area/nether/villager/talk_1
    execute as @a[tag=FieldNether,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether/2] at @s run function mikatanserver:adddim/area/nether/villager/talk_2
    execute as @a[tag=FieldNether,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether/3] at @s run function mikatanserver:adddim/area/nether/villager/talk_3
    execute as @a[tag=FieldNether,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether/4] at @s run function mikatanserver:adddim/area/nether/villager/talk_4
    execute as @a[tag=FieldNether,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether/5] at @s run function mikatanserver:adddim/area/nether/villager/talk_5
    execute as @a[tag=FieldNether,scores={VillagerFlag=1..},predicate=mikatanserver:villager/nether/6] at @s run function mikatanserver:adddim/area/nether/villager/talk_6
    scoreboard players set @a VillagerFlag 0


##ループリセット
execute if score $count nether_field_loop matches 12000.. run scoreboard players set $count nether_field_loop 0

##わきループ
scoreboard players add $count nether_field_loop 1