gamemode survival @a[tag=DungeonPlay_6]
execute in minecraft:overworld run tp @a[tag=DungeonPlay_6] 0 100 0
scoreboard players add @a[tag=DungeonPlay_6] DungeonClear_Num 1
tag @a[tag=DungeonPlay_6] remove DungeonPlay_6
kill @e[tag=SixthDunNowP]