scoreboard players set $swap_cnt TwentyfiveBossSkill 2

tellraw @a[tag=DungeonPlay_25] [{"text": "聖杯を奪いし者>>","color": "yellow"},{"text": "聖杯の牽引","color": "red"}]
execute as @a[tag=BossBattle25,sort=random,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/rand_pattern_1/swap/tp