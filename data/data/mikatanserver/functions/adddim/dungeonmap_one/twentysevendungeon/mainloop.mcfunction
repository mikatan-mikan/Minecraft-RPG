execute if score $27 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/27
##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["TwentysevenDunMobArmor"]}
execute as @e[tag=TwentysevenDunMobArmor] at @s if entity @a[distance=..7] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/spawn/mob

##ダンジョンボスTP
execute as @e[tag=TwentysevenDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/tp

##ボスループ
execute if entity @e[tag=TwentysevenDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={TwentysevenDunDeath=1..},tag=DungeonPlay_27] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TwentysevenDunBoss] if entity @a[tag=BossBattle27] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/true

execute as @e[tag=ModeCSkeTwentysevenDun] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/mob/skeleton