clear @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
execute in mikatanserver:oremap run tp @s[tag=!DungeonPlay] ? ? ? ? ? 
give @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"オーバーワールドへ戻る"}]'}}
tag @s add ore_jade

advancement grant @s[tag=!DungeonPlay] only mikatanserver:tp/jade