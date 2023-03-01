execute if score $36 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeonmap_one/death_after_player/36
##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["ThirtysixDunMobArmor"]}
# execute as @e[tag=ThirtysixDunMobArmor] at @s if entity @a[distance=..10] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/spawn/mob

##ダンジョンボスTP
# execute as @e[tag=ThirtysixDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/tp

##ボスループ
execute if entity @e[tag=ThirtysixDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={ThirtysixDunDeath=1..},tag=DungeonPlay_36] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=ThirtysixDunBoss] if entity @a[tag=BossBattle36] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/true

##bossを2s後にスポーンさせる構造なので()
execute if entity @a[scores={BossSpawnTimer36=..40}] in mikatanserver:dungeon positioned 1624.0 203 -464.0 run tp @e[dx=60,dz=60,dy=100,type=slime] ~ -128 ~
execute if entity @a[scores={BossSpawnTimer36=41..}] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/boss/main
# execute as @e[tag=ModeCSkeThirtysixDun] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/mob/skeleton