tag @s remove new_year2021P
function mikatanserver:item/teleporter/tag/remove
tag @s add tp_after
clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:dungeon run tp @s[tag=!DungeonPlay] -328 149 -344 180 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
gamemode adventure @s
tag @s add FieldPlayer
schedule function mikatanserver:item/teleporter/area/_event_christmas/tag 30s
