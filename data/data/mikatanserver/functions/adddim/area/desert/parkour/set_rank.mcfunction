scoreboard players operation @s TMP = @s ParkourTimer
execute store result score $rank1 TMP run data get storage mikatanserver:parkour Desert[0]
execute store result score $rank2 TMP run data get storage mikatanserver:parkour Desert[1]
execute store result score $rank3 TMP run data get storage mikatanserver:parkour Desert[2]

execute if score $rank3 TMP > @s TMP store result storage mikatanserver:parkour Desert[2] int 1 run scoreboard players get @s TMP
execute if score $rank3 TMP matches -1 store result storage mikatanserver:parkour Desert[2] int 1 run scoreboard players get @s TMP
execute store result score $rank1 TMP run data get storage mikatanserver:parkour Desert[0]
execute store result score $rank2 TMP run data get storage mikatanserver:parkour Desert[1]
execute store result score $rank3 TMP run data get storage mikatanserver:parkour Desert[2]
execute if score $rank2 TMP > $rank3 TMP run data modify storage mikatanserver:parkour tmp set from storage mikatanserver:parkour Desert[1]
execute if score $rank2 TMP > $rank3 TMP run data modify storage mikatanserver:parkour Desert[1] set from storage mikatanserver:parkour Desert[2]
execute if score $rank2 TMP > $rank3 TMP run data modify storage mikatanserver:parkour Desert[2] set from storage mikatanserver:parkour tmp
execute store result score $rank1 TMP run data get storage mikatanserver:parkour Desert[0]
execute store result score $rank2 TMP run data get storage mikatanserver:parkour Desert[1]
execute store result score $rank3 TMP run data get storage mikatanserver:parkour Desert[2]
execute if score $rank1 TMP > $rank2 TMP run data modify storage mikatanserver:parkour tmp set from storage mikatanserver:parkour Desert[0]
execute if score $rank1 TMP > $rank2 TMP run data modify storage mikatanserver:parkour Desert[0] set from storage mikatanserver:parkour Desert[1]
execute if score $rank1 TMP > $rank2 TMP run data modify storage mikatanserver:parkour Desert[1] set from storage mikatanserver:parkour tmp

function mikatanserver:adddim/area/desert/parkour/set_rank_view