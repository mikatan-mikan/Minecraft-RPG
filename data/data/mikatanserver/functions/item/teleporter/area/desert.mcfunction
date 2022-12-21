tag @s remove FieldDesert
function mikatanserver:item/teleporter/tag/remove
tag @s add desert_tp_after
clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:dungeon run tp @s[tag=!DungeonPlay] -2117.5 154 1216.5 90 0
scoreboard players set @s VillagerFlag 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
gamemode adventure @s
tag @s add FieldPlayer
execute unless data storage mikatanserver:parkour Desert run data merge storage mikatanserver:parkour {Desert:[2100000000,2100000000,2100000000]}

schedule function mikatanserver:item/teleporter/area/desert/tag 10s
