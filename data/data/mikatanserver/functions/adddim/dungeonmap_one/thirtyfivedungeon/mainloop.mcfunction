execute if score $35 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/35
##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["ThirtyfiveDunMobArmor"]}
execute as @e[tag=ThirtyfiveDunMobArmor] at @s if entity @a[distance=..10] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/spawn/mob

##ダンジョンボスTP
execute as @e[tag=ThirtyfiveDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/tp

##ボスループ
execute if entity @e[tag=ThirtyfiveDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={ThirtyfiveDunDeath=1..},tag=DungeonPlay_35] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=ThirtyfiveDunBoss] if entity @a[tag=BossBattle35] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/true

execute as @e[tag=ModeCSkeThirtyfiveDun] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/mob/skeleton