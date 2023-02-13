##5秒待ち
execute as @a[scores={DungeonStartCnt31=..101},tag=CountLeader] run schedule function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/sleep 1t
##参加者が現れた場合
execute at @a[tag=ThirtyoneDLeader] as @a[distance=..5,tag=!DungeonStart31,scores={AllLV=5..}] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/challengeadd


##ダンジョンへワープ
execute as @a[scores={DungeonStartCnt31=101..},tag=DungeonStart31] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/dungeonstart


##ダンジョン初期化
execute as @a[scores={DungeonStartCnt31=101..},tag=DungeonStart31] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/init

clear @a oak_door{Thirtyone_chest:1b}

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAEwAsARgAykr0DsAtAKzUCc3b11DgGY2AQxRDRbFADMAjHI7MFHeqLAEAdqIC2CZIDDFAARyNYGKIy6AzknAoA9oU0Qk1egRRwXcDHbAAbqLYhPrgAB5IHmBQUQC+cQRWpGiEtogcBNYQlq6I0XDY2Ggw1vpy9NEYDjkQ+tFo1gCiRSVlTQCOhMHYUADKFl7kiDLBZQkAukA_3
# 円 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~0 ~ ~-5 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~0.78217 ~ ~-4.93844 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~1.54508 ~ ~-4.75531 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~2.26995 ~ ~-4.45503 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~2.93893 ~ ~-4.04508 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~3.53553 ~ ~-3.53553 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~4.04508 ~ ~-2.93893 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~4.45503 ~ ~-2.26995 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~4.75531 ~ ~-1.54508 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~4.93844 ~ ~-0.78217 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~5 ~ ~0 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~4.93844 ~ ~0.78217 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~4.75531 ~ ~1.54508 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~4.45503 ~ ~2.26995 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~4.04508 ~ ~2.93893 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~3.53553 ~ ~3.53553 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~2.93893 ~ ~4.04508 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~2.26995 ~ ~4.45503 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~1.54508 ~ ~4.75531 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~0.78217 ~ ~4.93844 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~0 ~ ~5 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-0.78217 ~ ~4.93844 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-1.54508 ~ ~4.75531 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-2.26995 ~ ~4.45503 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-2.93893 ~ ~4.04508 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-3.53553 ~ ~3.53553 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-4.04508 ~ ~2.93893 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-4.45503 ~ ~2.26995 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-4.75531 ~ ~1.54508 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-4.93844 ~ ~0.78217 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-5 ~ ~0 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-4.93844 ~ ~-0.78217 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-4.75531 ~ ~-1.54508 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-4.45503 ~ ~-2.26995 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-4.04508 ~ ~-2.93893 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-3.53553 ~ ~-3.53553 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-2.93893 ~ ~-4.04508 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-2.26995 ~ ~-4.45503 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-1.54508 ~ ~-4.75531 0 0 0 0 1
execute as @a[tag=ThirtyoneDLeader] at @s run particle end_rod ~-0.78217 ~ ~-4.93844 0 0 0 0 1