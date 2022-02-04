##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["EigDunMobArmor"]}
execute as @e[tag=EigDunMobArmor] at @s if entity @a[distance=..7] run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/spawn/mob


##ボスループ
execute if entity @e[tag=EigthDunBoss] run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={EigthDunDeath=1..},tag=DungeonPlay_8] run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=EigthDunBoss] if entity @a[tag=BossBattle8] run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/true

##bossを5s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer8=101..}] run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/main