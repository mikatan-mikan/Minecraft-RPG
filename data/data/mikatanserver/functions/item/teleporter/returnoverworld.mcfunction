#tagの削除
function mikatanserver:item/teleporter/tag/remove

function mikatanserver:main/event/nether/reset_bossbar
function mikatanserver:main/event/ruins/reset_bossbar
function mikatanserver:main/event/jungle/reset_bossbar


clear @s[tag=!DungeonPlay] carrot_on_a_stick{CustomModelData:4} 
gamemode survival

gamerule showDeathMessages false
kill @s[tag=!DungeonPlay]
gamerule showDeathMessages true
scoreboard players reset @s DeathCnt_Tip