tag @s remove FieldUniverse
function mikatanserver:item/teleporter/tag/remove
tag @s add universe_tp_after
clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:dungeon run tp @s[tag=!DungeonPlay] -4151.5 151 4490.5 145 0
scoreboard players set @s VillagerFlag 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
gamemode adventure @s
tag @s add FieldPlayer
execute unless data storage mikatanserver:parkour Universe run data merge storage mikatanserver:parkour {Universe:[2100000000,2100000000,2100000000]}
schedule function mikatanserver:item/teleporter/area/universe/tag 10s