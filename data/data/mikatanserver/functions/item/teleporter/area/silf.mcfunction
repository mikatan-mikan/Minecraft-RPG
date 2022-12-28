
function mikatanserver:item/teleporter/tag/remove
tag @s add silf_tp_after
clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:dungeon run tp @s[tag=!DungeonPlay] 3201.5 75 -1934.5 90 0
scoreboard players set @s VillagerFlag 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
gamemode adventure @s
tag @s add FieldPlayer
execute unless data storage mikatanserver:parkour Silf run data merge storage mikatanserver:parkour {Silf:[2100000000,2100000000,2100000000]}

schedule function mikatanserver:item/teleporter/area/silf/tag 10s
