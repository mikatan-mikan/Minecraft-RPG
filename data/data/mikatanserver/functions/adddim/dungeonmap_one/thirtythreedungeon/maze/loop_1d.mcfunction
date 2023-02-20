
execute in mikatanserver:dungeon as @e[tag=Dun33MazeMar] at @s if block ~ ~ ~ air as @e[tag=Dun33CreateMar] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/maze/set_blocks
execute in mikatanserver:dungeon as @e[tag=Dun33MazeMar] at @s unless block ~ ~ ~ air as @e[tag=Dun33CreateMar] at @s run fill ~ ~ ~ ~11 ~11 ~11 stone
execute in mikatanserver:dungeon as @e[tag=Dun33MazeMar] at @s run tp ~ ~ ~1
execute in mikatanserver:dungeon as @e[tag=Dun33CreateMar] at @s run tp ~ ~ ~12

scoreboard players remove $y maze 1

scoreboard players add $33_dungeon_progress maze 1
bossbar set thirtythreemap_progress name [{"text": "読み込み中："},{"score":{"objective":"maze","name":"$33_dungeon_progress"}},{"text":"/162"}]
execute store result bossbar thirtythreemap_progress value run scoreboard players get $33_dungeon_progress maze
tp @a[tag=DungeonPlay_33] @e[tag=33_GenerateMarker,limit=1]
effect give @a[tag=DungeonPlay_33] blindness 2 1


execute if score $y maze matches 1.. run schedule function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/maze/loop_1d 1t
execute unless score $y maze matches 1.. if score $x maze matches 1.. run schedule function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/maze/loop_2d 1t
execute unless score $y maze matches 1.. unless score $x maze matches 1.. run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/maze/end