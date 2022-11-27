execute if score $23 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/4
##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["TwentythreeDunMobArmor"]}
execute as @e[tag=TwentythreeDunMobArmor] at @s if entity @a[distance=..7] run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/spawn/mob

# ##ダンジョンボスTP
# execute as @e[tag=TwentythreeDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/tp

##ボスループ
execute if entity @e[tag=TwentythreeDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={TwentythreeDunDeath=1..},tag=DungeonPlay_23] run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TwentythreeDunBoss] if entity @a[tag=BossBattle23] run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/true

##bossを5s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer23=101..}] run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/main

##彗星
execute if entity @a[scores={TwentythreeCometTimer=..101}] run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/init_comet