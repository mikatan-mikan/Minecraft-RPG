execute if score $18 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/18
##ボスループ
execute if entity @e[tag=EightteenDunBoss] run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={EightteenDunDeath=1..},tag=DungeonPlay_18] run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=EightteenDunBoss] if entity @a[tag=BossBattle18] run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer18=41..}] run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/main