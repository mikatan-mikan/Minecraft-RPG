##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["SevDunMobArmor"]}
execute as @e[tag=SevDunMobArmor] at @s if entity @a[distance=..7] run function mikatanserver:adddim/dungeonmap_one/sevthdungeon/spawn/mob

##ダンジョンボスアマスタ検知
execute as @e[tag=SevDunBossArmor] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/sevthdungeon/tp

##ボスループ
execute if entity @e[tag=SevthDunBoss] run function mikatanserver:adddim/dungeonmap_one/sevthdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={SevthDunDeath=1..},tag=DungeonPlay_7] run function mikatanserver:adddim/dungeonmap_one/sevthdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=SevthDunBoss] if entity @a[tag=BossBattle7] run function mikatanserver:adddim/dungeonmap_one/sevthdungeon/true

##スケルトン行動
execute as @e[tag=ModeCSkeSevDun] run function mikatanserver:adddim/dungeonmap_one/sevthdungeon/mob/skeleton
