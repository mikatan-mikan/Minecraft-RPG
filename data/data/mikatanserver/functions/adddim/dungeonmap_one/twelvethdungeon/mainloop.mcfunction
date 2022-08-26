
##ダンジョン死亡検知
execute if entity @a[scores={TwelvethDunDeath=1..},tag=DungeonPlay_12] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TwelvethDunBoss] if entity @a[tag=BossBattle12] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/true

##いつもは2s後にボス呼び出しをするが今回はアマスタを呼び出す
execute if entity @a[scores={ArmorSpawnTimer12=41..}] in mikatanserver:dungeon run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/field/main

##アマスタとの接触判定
execute as @e[type = armor_stand , tag = TwelveDunMob] at @s run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/field/armor_near

##bossloopをまわす
execute if score $bossloop 12thDunBossLoopBool matches 1 run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/mainloop