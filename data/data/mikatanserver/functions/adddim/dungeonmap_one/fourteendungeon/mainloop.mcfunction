
##ボスループ
execute if entity @e[tag=FourteenDunBoss] run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={FourteenDunDeath=1..},tag=DungeonPlay_14] run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=FourteenDunBoss] if entity @a[tag=BossBattle14] run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer14=41..}] run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/main