tag @s remove FieldNether
tag @s add nether_tp_after
clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:dungeon run tp @s[tag=!DungeonPlay] 264.0 73.0 -289.5 180 0
scoreboard players set @s VillagerFlag 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
gamemode adventure @s
schedule function mikatanserver:item/teleporter/area/nether/tag 10s

# 247.5 -6 -1341.5