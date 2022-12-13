tag @s remove FieldVolcano
function mikatanserver:item/teleporter/tag/remove
tag @s add volcano_tp_after
clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:dungeon run tp @s[tag=!DungeonPlay] 2167.5 173 3050.5 90 0
scoreboard players set @s VillagerFlag 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
gamemode adventure @s
tag @s add FieldPlayer
execute unless data storage mikatanserver:parkour Volcano run data merge storage mikatanserver:parkour {Volcano:[2100000000,2100000000,2100000000]}

schedule function mikatanserver:item/teleporter/area/volcano/tag 10s
