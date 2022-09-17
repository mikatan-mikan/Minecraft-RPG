execute if score $9 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/9
##ボスループ
execute if entity @e[tag=NinethDunBoss] run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={NinethDunDeath=1..},tag=DungeonPlay_9] run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=NinethDunBoss] if entity @a[tag=BossBattle9] run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer9=41..}] run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/main