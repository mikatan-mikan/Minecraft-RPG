##迷路を走査する
execute in mikatanserver:dungeon run summon armor_stand 0 -33 0 {Tags:["Dun33MazeMar","OriginPointMaze"],NoGravity:1b}
##ダンジョンを生成する
execute in mikatanserver:dungeon run summon armor_stand -2500 50 2500 {Tags:["Dun33CreateMar","OriginPointMaze"],NoGravity:1b}


execute store result score $y_max maze run data get storage mikatanserver:maze size[0]
execute store result score $x maze run data get storage mikatanserver:maze size[1]

scoreboard players operation $y_max maze *= $2 int
scoreboard players operation $x maze *= $2 int
scoreboard players add $y_max maze 1
scoreboard players add $x maze 1

function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/maze/loop_2d

data remove storage mikatanserver:maze size