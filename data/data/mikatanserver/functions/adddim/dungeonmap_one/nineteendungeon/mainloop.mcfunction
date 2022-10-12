execute if score $19 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/19
##ボスループ
execute if entity @e[tag=NineteenDunBoss] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={NineteenDunDeath=1..},tag=DungeonPlay_19] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=NineteenDunBoss] if entity @a[tag=BossBattle19] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer19=101..}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/main