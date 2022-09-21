tellraw @a[tag=DungeonPlay_17] [{"text": "Michelle>>","color": "gold"},{"text": "突進！！","color": "light_purple"}]
kill @e[type=boat,predicate=mikatanserver:dungeonmapdim]
execute as @e[tag=SeventeenDunBoss,limit=1] run scoreboard players set @s MK.v.VecValue 3
execute as @e[tag=SeventeenDunBoss,limit=1] run function mikatanlib:vector/vectorexe
execute store result entity @e[tag=SeventeenDunBoss,limit=1] Motion[1] double 1 run scoreboard players get num ONE
effect give @a[distance=5..,tag=BossBattle17] hunger 2 30
effect give @a[distance=10..,tag=BossBattle17] instant_damage 1 1
effect clear @a[distance=..100] strength