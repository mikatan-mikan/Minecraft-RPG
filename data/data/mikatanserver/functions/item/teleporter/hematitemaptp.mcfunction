clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:oremap run tp @s[tag=!DungeonPlay] -77.5 82 -186.5 90 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
function mikatanserver:item/teleporter/tag/remove
tag @s add ore_hematite

advancement grant @s[tag=!DungeonPlay] only mikatanserver:tp/hematite