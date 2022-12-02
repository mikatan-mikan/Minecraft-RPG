tag @s add Phase2
execute as @a[tag=DungeonPlay_24] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1
tp -165.5 85 1195.5
execute as @a[tag=DungeonPlay_24] run tp @s -184.5 85 1195.5
execute store result bossbar twentyfourboss_bar value run scoreboard players get $MAX_HP TwentyfourBossSkill
scoreboard players operation $24 BossHP = $MAX_HP TwentyfourBossSkill
title @a[tag=DungeonPlay_24] title [{"text": "その存在は真のサウンドを奏でて","color": "red"}]
tellraw @a[tag=DungeonPlay_24] [{"text": "Music of Finale>>","color": "red"},{"text": "ダ・カーポ","color": "dark_purple"}]