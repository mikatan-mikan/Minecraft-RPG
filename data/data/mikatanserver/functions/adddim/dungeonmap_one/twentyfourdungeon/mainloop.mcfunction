execute if score $24 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/24
##ボスループ
execute if entity @e[tag=TwentyfourDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={TwentyfourDunDeath=1..},tag=DungeonPlay_24] run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TwentyfourDunBoss] if entity @a[tag=BossBattle24] run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer24=41..}] run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/main