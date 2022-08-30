##Floor モブわき判定
    # 1
    execute if score $floor 13_TowerFloor matches 0 if score $mobs 13_TowerNowMobCnt matches 0 as @a[tag=DungeonPlay_13] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_1/spawn_mob
    execute if score $floor 13_TowerFloor matches 1 if score @a[tag=DungeonPlay_13,limit=1] 13_NextMobCheckTimer matches 20.. run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_1/check_mob
#execute if score $floor 13_TowerFloor matches 1 run 
#execute if score $floor 13_TowerFloor matches 0 if score $mobs 13_TowerNowMobCnt matches 0 run say run
#tellraw @a [{"score":{"name":"$mobs","objective":"13_TowerNowMobCnt"},"color": "blue"},{"score":{"name":"$floor","objective":"13_TowerFloor"},"color": "green"}]
    # 2
    execute if score $floor 13_TowerFloor matches 1 if score $mobs 13_TowerNowMobCnt matches 0 as @a[tag=DungeonPlay_13] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_2/spawn_mob
    execute if score $floor 13_TowerFloor matches 2 if score @a[tag=DungeonPlay_13,limit=1] 13_NextMobCheckTimer matches 20.. run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_2/check_mob

    # 3
    execute if score $floor 13_TowerFloor matches 2 if score $mobs 13_TowerNowMobCnt matches 0 as @a[tag=DungeonPlay_13] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_3/spawn_mob
    execute if score $floor 13_TowerFloor matches 3 if score @a[tag=DungeonPlay_13,limit=1] 13_NextMobCheckTimer matches 20.. run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_3/check_mob

    # 4
    execute if score $floor 13_TowerFloor matches 3 if score $mobs 13_TowerNowMobCnt matches 0 as @a[tag=DungeonPlay_13] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_4/spawn_mob
    execute if score $floor 13_TowerFloor matches 4 if score @a[tag=DungeonPlay_13,limit=1] 13_NextMobCheckTimer matches 20.. run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_4/check_mob

    # 5
    execute if score $floor 13_TowerFloor matches 4 if score $mobs 13_TowerNowMobCnt matches 0 as @a[tag=DungeonPlay_13] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_5/spawn_mob
    execute if score $floor 13_TowerFloor matches 5 if score @a[tag=DungeonPlay_13,limit=1] 13_NextMobCheckTimer matches 20.. run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_5/check_mob

    # 6
    execute if score $floor 13_TowerFloor matches 5 if score $mobs 13_TowerNowMobCnt matches 0 as @a[tag=DungeonPlay_13] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_6/spawn_mob
    execute if score $floor 13_TowerFloor matches 6 if score @a[tag=DungeonPlay_13,limit=1] 13_NextMobCheckTimer matches 20.. run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_6/check_mob

    # 7
    execute if score $floor 13_TowerFloor matches 6 if score $mobs 13_TowerNowMobCnt matches 0 as @a[tag=DungeonPlay_13] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_7/spawn_mob
    execute if score $floor 13_TowerFloor matches 7 if score @a[tag=DungeonPlay_13,limit=1] 13_NextMobCheckTimer matches 20.. run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_7/check_mob

    # 8
    execute if score $floor 13_TowerFloor matches 7 if score $mobs 13_TowerNowMobCnt matches 0 as @a[tag=DungeonPlay_13] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_8/spawn_mob
    execute if score $floor 13_TowerFloor matches 8 if score @a[tag=DungeonPlay_13,limit=1] 13_NextMobCheckTimer matches 20.. run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_8/check_mob


    # 9
    execute if score $floor 13_TowerFloor matches 8 if score $mobs 13_TowerNowMobCnt matches 0 as @a[tag=DungeonPlay_13] run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_9/spawn_mob
    execute if score $floor 13_TowerFloor matches 9 if score @a[tag=DungeonPlay_13,limit=1] 13_NextMobCheckTimer matches 20.. run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/tower/floor_9/check_mob


    # 10 (boss / 1)
    execute if score $floor 13_TowerFloor matches 9 if score $mobs 13_TowerNowMobCnt matches 0 run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/main
    execute if score $floor 13_TowerFloor matches 10 run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/mainloop

