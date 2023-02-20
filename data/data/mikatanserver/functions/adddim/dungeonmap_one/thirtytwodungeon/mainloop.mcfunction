execute if score $32 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/32
##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["ThirtytwoDunMobArmor"]}
# execute as @e[tag=ThirtytwoDunMobArmor] at @s if entity @a[distance=..10] run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/spawn/mob

##ダンジョンボスTP
# execute as @e[tag=ThirtytwoDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/tp

##ボスループ
execute if entity @e[tag=ThirtytwoDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={ThirtytwoDunDeath=1..},tag=DungeonPlay_32] run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=ThirtytwoDunBoss] if entity @a[tag=BossBattle32] run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer32=..40}] in mikatanserver:dungeon positioned 1624.0 203 -464.0 run tp @e[dx=60,dz=60,dy=100,type=slime] ~ -128 ~
execute if entity @a[scores={BossSpawnTimer32=41..}] run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/boss/main
# execute as @e[tag=ModeCSkeThirtytwoDun] run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/mob/skeleton