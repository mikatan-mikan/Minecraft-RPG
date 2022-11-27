tag @s remove FieldCave
function mikatanserver:item/teleporter/tag/remove
tag @s add cave_tp_after
clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:dungeon run tp @s[tag=!DungeonPlay] 1131.5 213 868.5 50 0
scoreboard players set @s VillagerFlag 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
gamemode adventure @s
tag @s add FieldPlayer
schedule function mikatanserver:item/teleporter/area/cave/tag 10s