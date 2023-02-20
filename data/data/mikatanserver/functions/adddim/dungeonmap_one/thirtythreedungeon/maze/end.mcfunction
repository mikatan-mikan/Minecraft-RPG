kill @e[tag=Dun33CreateMar]
kill @e[tag=Dun33MazeMar]
kill @e[tag=33_GenerateMarker,limit=1]
##他に同じ場所で迷路を生成しているダンジョンがある場合読み込みを止めると動作がおかしくなるので
execute in mikatanserver:dungeon unless entity @e[tag=OriginPointMaze] run forceload remove 0 0 16 16
bossbar remove thirtythreemap_progress
scoreboard players reset $33_dungeon_progress maze
scoreboard players reset $33_dungeon_put maze