
##ボスループ
execute if entity @e[tag=ThirteenDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={ThirteenDunDeath=1..},tag=DungeonPlay_13] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=ThirteenDunBoss] if entity @a[tag=BossBattle13] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/true

##bossを2s後にスポーンさせる構造なので()
# execute if entity @a[scores={BossSpawnTimer13=41..}] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/main

##塔のメインループに渡す
execute in mikatanserver:dungeon if entity @a[tag=Dun13_Tower] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/mainloop