
##ボスループ
execute if entity @e[tag=FifteenDunBoss] run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={FifteenDunDeath=1..},tag=DungeonPlay_15] run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=FifteenDunBoss] if entity @a[tag=BossBattle15] run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer15=41..}] run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/main