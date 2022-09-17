execute if score $10 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/10
##ボスループ
execute if entity @e[tag=TenthDunBoss] run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={TenthDunDeath=1..},tag=DungeonPlay_10] run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TenthDunBoss] if entity @a[tag=BossBattle10] run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer10=41..}] run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/main