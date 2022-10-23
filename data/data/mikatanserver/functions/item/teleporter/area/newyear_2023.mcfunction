tag @s remove FieldNewyear_2023
function mikatanserver:item/teleporter/tag/remove
tag @s add newyear_2023_tp_after
clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:dungeon run tp @s[tag=!DungeonPlay] -121.5 261 368.5 43 0
scoreboard players set @s VillagerFlag 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
gamemode adventure @s
tag @s add FieldPlayer
schedule function mikatanserver:item/teleporter/area/newyear_2023/tag 10s

# 247.5 -6 -1341.5