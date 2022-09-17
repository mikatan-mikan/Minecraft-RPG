execute if score $17 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/17
##ボスループ
execute if entity @e[tag=SeventeenDunBoss] run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={SeventeenDunDeath=1..},tag=DungeonPlay_17] run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=SeventeenDunBoss] if entity @a[tag=BossBattle17] run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer17=41..}] run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/main