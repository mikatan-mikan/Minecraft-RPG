execute if score $28 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/28
##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["TwentyeightDunMobArmor"]}
execute as @e[tag=TwentyeightDunMobArmor] at @s if entity @a[distance=..10] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/spawn/mob

##ダンジョンボスTP
execute as @e[tag=TwentyeightDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/tp

##ボスループ
execute if entity @e[tag=TwentyeightDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={TwentyeightDunDeath=1..},tag=DungeonPlay_28] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TwentyeightDunBoss] if entity @a[tag=BossBattle28] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/true

execute as @e[tag=ModeCSkeTwentyeightDun] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/mob/skeleton