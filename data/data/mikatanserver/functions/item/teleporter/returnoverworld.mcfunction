#tagの削除
function mikatanserver:item/teleporter/tag/remove


clear @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4} 
gamemode survival

gamerule showDeathMessages false
kill @s[tag=!DungeonPlay]
gamerule showDeathMessages true
scoreboard players reset @s DeathCnt_Tip