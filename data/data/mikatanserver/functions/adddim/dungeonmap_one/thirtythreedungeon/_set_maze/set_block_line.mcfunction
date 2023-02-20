data modify storage mikatanserver:maze 33_item set from storage mikatanserver:maze 33_readline[-1]
data remove storage mikatanserver:maze 33_readline[-1]
execute in mikatanserver:dungeon as @e[tag=33_BlockMazeAr] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/_set_maze/set_block_and_tp

scoreboard players add $33_dungeon_progress maze 1
bossbar set thirtythreemap_progress name [{"text": "読み込み中："},{"score":{"objective":"maze","name":"$33_dungeon_progress"}},{"text":"/162"}]
execute store result bossbar thirtythreemap_progress value run scoreboard players get $33_dungeon_progress maze
tp @a[tag=DungeonPlay_33] @e[tag=33_GenerateMarker,limit=1]

execute unless data storage mikatanserver:maze 33_readline[-1] unless data storage mikatanserver:maze 33_out[-1] run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/_set_maze/del
execute if data storage mikatanserver:maze 33_readline[-1] run schedule function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/_set_maze/set_block_line 1t
execute unless data storage mikatanserver:maze 33_readline[-1] if data storage mikatanserver:maze 33_out[-1] run schedule function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/_set_maze/set_block 1t