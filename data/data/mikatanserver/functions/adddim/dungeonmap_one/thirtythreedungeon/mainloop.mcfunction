execute if score $33 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/33
##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["ThirtythreeDunMobArmor"]}
execute as @e[tag=ThirtythreeDunMobArmor] at @s if entity @a[distance=..10] run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/spawn/mob

bossbar set thirtythreemap_progress players @a[tag=DungeonPlay_33]

##ダンジョンボスTP
execute as @e[tag=ThirtythreeDunBossTPA] at @s as @a[distance=..6] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/tp
execute at @e[tag=ThirtythreeDunBossTPA] run particle bubble ~ ~ ~ 0.5 0.5 0.5 1 20

##ボスループ
execute if entity @e[tag=ThirtythreeDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={ThirtythreeDunDeath=1..},tag=DungeonPlay_33] run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=ThirtythreeDunBoss] if entity @a[tag=BossBattle33] run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/true

execute as @e[tag=ModeCSkeThirtythreeDun] run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/mob/skeleton