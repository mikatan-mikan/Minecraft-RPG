execute if score $34 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/34
##ボスループ
execute if entity @e[tag=ThirtyfourDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={ThirtyfourDunDeath=1..},tag=DungeonPlay_34] run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=ThirtyfourDunBoss] if entity @a[tag=BossBattle34] run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer34=41..}] run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/main