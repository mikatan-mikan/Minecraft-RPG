#0-9の10回移動して1マス右へ
execute as @e[type=armor_stand,tag=SixteenDunBoss] at @s run tp @s ~-0.3 ~ ~
scoreboard players add $bosscnt BossMoveCnt_16 1
execute if score $bosscnt BossMoveCnt_16 matches ..8 run schedule function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/move/right/main 1t
execute if score $bosscnt BossMoveCnt_16 matches 9.. run scoreboard players set $bosscnt BossMoveCnt_16 0
execute as @e[type=armor_stand,tag=SixteenDunBoss] at @s unless block ~ ~ ~ air run tp @s 139.5 ~ ~