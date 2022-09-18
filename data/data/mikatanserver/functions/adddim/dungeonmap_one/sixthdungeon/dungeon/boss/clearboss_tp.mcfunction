gamemode survival @a[tag=Return_Dun_6]
execute in minecraft:overworld run tp @a[tag=Return_Dun_6] 0 100 0
scoreboard players add @a[tag=Return_Dun_6] DungeonClear_Num 1
execute as @a[tag=Return_Dun_6] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=Return_Dun_6] remove Return_Dun_6
kill @e[tag=SixthDunNowP]