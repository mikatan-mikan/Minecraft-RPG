effect give @a[distance=..15] slow_falling 5 0
execute as @a[distance=..15] at @s run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:1,ReapplicationDelay:50,Radius:1f,Duration:6,Effects:[{Id:25,Amplifier:127,Duration:2}]}
playsound block.wool.place master @a[tag=DungeonPlay_18,distance=..30] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_18] [{"text": "Venus              >>","color": "dark_green"},{"text": "女神の舞！！","color": "gold"}]