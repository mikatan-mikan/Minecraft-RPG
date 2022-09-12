##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["FouDunMobArmor"]}
execute as @e[tag=FouDunMobArmor] at @s if entity @a[distance=..7] run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/spawn/mob

# ##ダンジョンボスTP
# execute as @e[tag=FouDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/tp

##ボスループ
execute if entity @e[tag=FourthDunBoss] run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={FourthDunDeath=1..},tag=DungeonPlay_4] run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=FourthDunBoss] if entity @a[tag=BossBattle4] run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/true

##bossを5s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer4=101..}] run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/main

##彗星
execute if entity @a[scores={CometTimer=..101}] run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/init_comet