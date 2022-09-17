execute if score $11 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/11
##ボスループ
execute if entity @e[tag=EleventhDunBoss] run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={EleventhDunDeath=1..},tag=DungeonPlay_11] run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=EleventhDunBoss] if entity @a[tag=BossBattle11] run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer11=41..}] run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/main