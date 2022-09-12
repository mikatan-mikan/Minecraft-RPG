##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["SecDunMobArmor"]}
execute as @e[tag=SecDunMobArmor] at @s if entity @a[distance=..7] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/spawn/mob

##ダンジョンボスTP
execute as @e[tag=SecDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/seconddungeon/tp

##ボスループ
execute if entity @e[tag=SecondDunBoss] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={SecondDunDeath=1..},tag=DungeonPlay_2] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=SecondDunBoss] if entity @a[tag=BossBattle2] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/true

execute as @e[tag=ModeCSkeSecDun] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/mob/skeleton