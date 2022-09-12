##lava cubeボスループ
execute if entity @e[tag=magma_6] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/mainloop
##phese2 loop
execute if entity @e[tag=Spirit_Dun6] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/phese_2/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={SixthDunDeath=1..},tag=DungeonPlay_6] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/false
##フェーズ2移行
execute unless entity @e[tag=magma_6] unless entity @a[scores={PheseManeger_6=1..}] if entity @a[tag=BossBattle6] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/true
##フェーズ2勝利判定
execute unless entity @e[tag=Spirit_Dun6] if entity @a[tag=BossBattle6,scores={PheseManeger_6=2..}] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/clear_game

##スケルトン行動
execute as @e[tag=ModeCSkeSixDun] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/mob/skeleton
##トロール行動
execute as @e[tag=SixDunTroll] at @s run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/mob/troll/mainloop
