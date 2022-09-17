execute if score $3 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/3
##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["ThiDunMobArmor"]}
execute as @e[tag=ThiDunMobArmor] at @s if entity @a[distance=..7] run function mikatanserver:adddim/dungeonmap_one/thirddungeon/spawn/mob

##ダンジョンボスTP
execute as @e[tag=ThiDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/thirddungeon/tp

##ボスループ
execute if entity @e[tag=ThirdDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirddungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={ThirdDunDeath=1..},tag=DungeonPlay_3] run function mikatanserver:adddim/dungeonmap_one/thirddungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=ThirdDunBoss] if entity @a[tag=BossBattle3] run function mikatanserver:adddim/dungeonmap_one/thirddungeon/true

#execute as @e[tag=ModeCSkeThiDun] run function mikatanserver:adddim/dungeonmap_one/thirddungeon/mob/skeleton