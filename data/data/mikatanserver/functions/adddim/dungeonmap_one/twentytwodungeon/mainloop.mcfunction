execute if score $22 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/22
##ボスループ
execute if entity @e[tag=TwentytwoDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={TwentytwoDunDeath=1..},tag=DungeonPlay_22] run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TwentytwoDunBoss] if entity @a[tag=BossBattle22] run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer22=41..}] run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/main