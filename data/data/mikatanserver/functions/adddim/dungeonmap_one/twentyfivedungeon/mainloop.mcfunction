execute if score $25 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/25
##ボスループ
execute if entity @e[tag=TwentyfiveDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={TwentyfiveDunDeath=1..},tag=DungeonPlay_25] run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TwentyfiveDunBoss] if entity @a[tag=BossBattle25] run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer25=41..}] run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/main