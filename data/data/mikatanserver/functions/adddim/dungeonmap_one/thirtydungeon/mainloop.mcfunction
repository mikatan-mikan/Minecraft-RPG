execute if score $30 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/30
##ボスループ
execute if entity @e[tag=ThirtyDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={ThirtyDunDeath=1..},tag=DungeonPlay_30] run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=ThirtyDunBoss] if entity @a[tag=BossBattle30] run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer30=41..}] run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/main