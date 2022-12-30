execute if score $26 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/26
##ボスループ
execute if entity @e[tag=TwentysixDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={TwentysixDunDeath=1..},tag=DungeonPlay_26] run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TwentysixDunBoss] if entity @a[tag=BossBattle26] run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer26=41..}] run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/main