tag @a[tag=cave_tp_after] add FieldCave
tag @a[tag=cave_tp_after] remove cave_tp_after
scoreboard players set @s field_mobcount 0
kill @e[tag=CaveField_Ar]
execute in mikatanserver:dungeon run function mikatanserver:item/teleporter/area/cave/summon