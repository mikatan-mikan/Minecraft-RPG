execute store result score @s TMP run data get entity @s AngerTime

execute if score @s TMP matches 1.. run scoreboard players set @s mh.hp 100
execute if score @s TMP matches 1.. run scoreboard players set @s mh.hp_max 100
execute if score @s TMP matches 1.. run tag @s remove field_ender_angryflag