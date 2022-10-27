execute if score $21 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/21
##ボスループ
execute if entity @e[tag=TwentyoneDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={TwentyoneDunDeath=1..},tag=DungeonPlay_21] run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TwentyoneDunBoss] if entity @a[tag=BossBattle21] run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer21=41..}] run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/main