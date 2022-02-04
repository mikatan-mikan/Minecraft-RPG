##ダンジョン内アマスタ検知(モブ沸き判定)        メモ[設置アマスタ]:summon armor_stand ~ ~ ~ {Tags:["FifDunMobArmor"]}
execute as @e[tag=FifDunMobArmor] at @s if entity @a[distance=..7] run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/spawn/mob

##ダンジョンボスTP
execute as @e[tag=FifDunBossTPA] at @s as @a[distance=..10] at @s run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/tp

##ボスループ
execute if entity @e[tag=FifthDunBoss] run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/boss/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={FifthDunDeath=1..},tag=DungeonPlay_5] run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=FifthDunBoss] if entity @a[tag=BossBattle5] run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/true

##スケルトン行動
execute as @e[tag=ModeCSkeFifDun] run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/mob/skeleton
##トロール行動
execute as @e[tag=FifDunTroll] at @s run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/mob/troll/mainloop
##バックステップ紙魚
execute as @e[tag=FifDunSpider] run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/mob/backstep/mainloop
