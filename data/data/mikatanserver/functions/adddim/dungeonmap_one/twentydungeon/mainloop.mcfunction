execute if score $20 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/9
##ボスループ
execute if entity @e[tag=TwentyDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={TwentyDunDeath=1..},tag=DungeonPlay_20] run function mikatanserver:adddim/dungeonmap_one/twentydungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TwentyDunBoss] if entity @a[tag=BossBattle20] run function mikatanserver:adddim/dungeonmap_one/twentydungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer20=41..}] run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/main