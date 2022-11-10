tag @a[tag=cherryblossom_tp_after] add FieldCherryblossom
tag @a[tag=cherryblossom_tp_after] remove cherryblossom_tp_after
scoreboard players set @s field_mobcount 0
kill @e[tag=CherryblossomField_Ar]
execute in mikatanserver:dungeon run function mikatanserver:item/teleporter/area/cherryblossom/summon