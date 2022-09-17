execute if score $1 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/1
##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["FirDunMobArmor"]}
execute as @e[tag=FirDunMobArmor] at @s if entity @a[distance=..7] run function mikatanserver:adddim/dungeonmap_one/firstdungeon/spawn/mob

##ダンジョンボスTP
execute as @e[tag=FirDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/firstdungeon/tp

##ボスループ
execute if entity @e[tag=FirstDunBoss] run function mikatanserver:adddim/dungeonmap_one/firstdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={FirstDunDeath=1..},tag=DungeonPlay_1] run function mikatanserver:adddim/dungeonmap_one/firstdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=FirstDunBoss] if entity @a[tag=BossBattle1] run function mikatanserver:adddim/dungeonmap_one/firstdungeon/true