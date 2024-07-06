##5秒待ち
execute as @a[scores={DungeonStartCnt36=..101},tag=CountLeader] run schedule function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/sleep 1t
##参加者が現れた場合
execute at @a[tag=ThirtysixDLeader] as @a[distance=..5,tag=!DungeonStart36,scores={AllLV=40..}] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/challengeadd
execute at @a[tag=ThirtysixDLeader] as @a[distance=..5,tag=!DungeonStart36,scores={AllLV=60..}] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/challengeadd
execute at @a[tag=ThirtysixDLeader] as @a[distance=..5,tag=!DungeonStart36,scores={AllLV=40..}] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/challengeadd


##ダンジョンへワープ
execute as @a[scores={DungeonStartCnt36=101..},tag=DungeonStart36] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/dungeonstart


##ダンジョン初期化
execute as @a[scores={DungeonStartCnt36=101..},tag=DungeonStart36] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/init

clear @a oak_door{Thirtysix_chest:1b}

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAEwAsARgAykr0DsAtAKzUCc3b11DgGY2AQxRDRbFADMAjHI7MFHeqLAEAdqIC2CZIDDFAARyNYGKIy6AzknAoA9oU0Qk1egRRwXcDHbAAbqLYhPrgAB5IHmBQUQC+cQRWpGiEtogcBNYQlq6I0XDY2Ggw1vpy9NEYDjkQ+tFo1gCiRSVlTQCOhMHYUADKFl7kiDLBZQkAukA_3
# 円 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~0 ~ ~-5 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~0.78217 ~ ~-4.93844 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~1.54508 ~ ~-4.75536 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~2.26995 ~ ~-4.45503 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~2.93893 ~ ~-4.04508 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~3.53553 ~ ~-3.53553 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~4.04508 ~ ~-2.93893 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~4.45503 ~ ~-2.26995 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~4.75536 ~ ~-1.54508 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~4.93844 ~ ~-0.78217 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~5 ~ ~0 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~4.93844 ~ ~0.78217 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~4.75536 ~ ~1.54508 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~4.45503 ~ ~2.26995 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~4.04508 ~ ~2.93893 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~3.53553 ~ ~3.53553 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~2.93893 ~ ~4.04508 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~2.26995 ~ ~4.45503 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~1.54508 ~ ~4.75536 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~0.78217 ~ ~4.93844 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~0 ~ ~5 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-0.78217 ~ ~4.93844 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-1.54508 ~ ~4.75536 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-2.26995 ~ ~4.45503 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-2.93893 ~ ~4.04508 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-3.53553 ~ ~3.53553 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-4.04508 ~ ~2.93893 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-4.45503 ~ ~2.26995 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-4.75536 ~ ~1.54508 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-4.93844 ~ ~0.78217 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-5 ~ ~0 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-4.93844 ~ ~-0.78217 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-4.75536 ~ ~-1.54508 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-4.45503 ~ ~-2.26995 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-4.04508 ~ ~-2.93893 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-3.53553 ~ ~-3.53553 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-2.93893 ~ ~-4.04508 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-2.26995 ~ ~-4.45503 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-1.54508 ~ ~-4.75536 0 0 0 0 1
execute as @a[tag=ThirtysixDLeader] at @s run particle end_rod ~-0.78217 ~ ~-4.93844 0 0 0 0 1