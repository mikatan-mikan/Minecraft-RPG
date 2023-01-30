execute if score $29 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/29
##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["TwentynineDunMobArmor"]}
execute as @e[tag=TwentynineDunMobArmor] at @s if entity @a[distance=..10] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/spawn/mob

##ダンジョンボスTP
execute as @e[tag=TwentynineDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/tp

##ボスループ
execute if entity @e[tag=TwentynineDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={TwentynineDunDeath=1..},tag=DungeonPlay_29] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=TwentynineDunBoss] if entity @a[tag=BossBattle29] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/true

execute as @e[tag=ModeCSkeTwentynineDun] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/mob/skeleton