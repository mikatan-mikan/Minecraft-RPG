#0-9の10回移動して1マス右へ
execute as @e[type=armor_stand,tag=TwelvethDunBoss] at @s run tp @s ~ ~ ~0.3
scoreboard players add $bosscnt BossMoveCnt 1
execute if score $bosscnt BossMoveCnt matches ..8 run schedule function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/skill/move/left/main 1t
execute if score $bosscnt BossMoveCnt matches 9.. run scoreboard players set $bosscnt BossMoveCnt 0
execute as @e[type=armor_stand,tag=TwelvethDunBoss] at @s unless block ~ ~ ~ air run tp @s ~ ~ 84.5