## args -> mikatanserver:maze {size:[x,y]}
## 実行時間((2x + 1)*(2y + 1) tick)

##進行状態を表示
bossbar add thirtythreemap_progress ""
bossbar set thirtythreemap_progress name [{"text": "読み込み中："},{"score":{"objective":"maze","name":"$33_dungeon_progress"}},{"text":"/162"}]
bossbar set thirtythreemap_progress max 162
bossbar set thirtythreemap_progress players @a[tag=DungeonStart33]

data merge storage mikatanserver:maze {runtime:true}
execute in mikatanserver:dungeon run forceload add 0 0 16 16

##迷路を生成
data modify storage math: in set from storage mikatanserver:maze size
execute in mikatanserver:dungeon positioned 0 -33 0 run function #math:maze
data modify storage mikatanserver:maze 33_out set from storage math: out
# execute as @a run function math:maze/dump

##mikatanserver:dungeon 0,0,0付近にブロックで迷路を経路を作成する
execute in mikatanserver:dungeon run summon armor_stand 0 -33 0 {Tags:["33_BlockMazeAr","OriginPointMaze"],NoGravity:1b}
# execute in mikatanserver:dungeon run fill 0 -50 0 32 -50 32 stone
execute as @e[tag=33_BlockMazeAr] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/_set_maze/set_block

