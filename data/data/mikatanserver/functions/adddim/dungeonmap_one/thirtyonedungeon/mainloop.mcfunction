execute if score $31 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/31
##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["ThirtyoneDunMobArmor"]}
execute as @e[tag=ThirtyoneDunMobArmor] at @s if entity @a[distance=..10] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/spawn/mob

##ダンジョンボスTP
execute as @e[tag=ThirtyoneDunBossTPA] at @s as @a[distance=..10,tag=!BossBattle31] at @s run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/tp

##ボスループ
execute if entity @e[tag=ThirtyoneDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={ThirtyoneDunDeath=1..},tag=DungeonPlay_31] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/false
##ダンジョンクリア検知
execute at @p[tag=BossBattle31] unless entity @e[type=magma_cube,distance=..150] if entity @a[tag=BossBattle31] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/true

execute as @e[tag=ModeCSkeThirtyoneDun] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/mob/skeleton