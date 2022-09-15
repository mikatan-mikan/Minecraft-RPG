tag @a[tag=ruins_tp_after] add FieldRuins
tag @a[tag=ruins_tp_after] remove ruins_tp_after
scoreboard players set @s field_mobcount 0
kill @e[tag=RuinsField_Ar]
execute in mikatanserver:dungeon run function mikatanserver:item/teleporter/area/ruins/summon