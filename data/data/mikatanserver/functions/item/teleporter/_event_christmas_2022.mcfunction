clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:oremap run tp @s[tag=!DungeonPlay] 493.5 83 32.5 180 0
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
function mikatanserver:item/teleporter/tag/remove
tag @s add event_christmas_2022
