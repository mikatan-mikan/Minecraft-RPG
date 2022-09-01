execute store result score @s TMP run data get entity @s AngerTime

execute if score @s TMP matches 1.. run data merge storage mikatanserver:field_ender {Name:"minecraft:generic.max_health",Base:100}
execute if score @s TMP matches 1.. run data modify entity @s Attributes[1] merge from storage mikatanserver:field_ender
execute if score @s TMP matches 1.. run data merge entity @s {Health:100}
execute if score @s TMP matches 1.. run tag @s remove field_ender_angryflag