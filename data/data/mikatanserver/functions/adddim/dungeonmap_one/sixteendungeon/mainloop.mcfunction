
##ボスループ
execute if entity @e[tag=SixteenDunBoss] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/mainloop
##ダンジョン死亡検知
execute if entity @a[scores={SixteenDunDeath=1..},tag=DungeonPlay_16] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=SixteenDunBoss] if entity @a[tag=BossBattle16] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/true


##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer16=41..}] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/main