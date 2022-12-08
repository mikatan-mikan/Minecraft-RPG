tag @s remove FieldEnder_2
function mikatanserver:item/teleporter/tag/remove
tag @s add ender_2_tp_after
clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:dungeon run tp @s[tag=!DungeonPlay] 1396.5 71 -1170.5 60 0
scoreboard players set @s VillagerFlag 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
gamemode adventure @s
tag @s add FieldPlayer
schedule function mikatanserver:item/teleporter/area/ender_tier2/tag 10s