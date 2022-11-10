tag @s remove FieldCherryblossom
function mikatanserver:item/teleporter/tag/remove
tag @s add cherryblossom_tp_after
clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:dungeon run tp @s[tag=!DungeonPlay] 1089.5 -46 -525.5 180 0
scoreboard players set @s VillagerFlag 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
gamemode adventure @s
tag @s add FieldPlayer
schedule function mikatanserver:item/teleporter/area/cherryblossom/tag 10s