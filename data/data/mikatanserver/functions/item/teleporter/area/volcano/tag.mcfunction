tag @a[tag=volcano_tp_after] add FieldVolcano
tag @a[tag=volcano_tp_after] remove volcano_tp_after
scoreboard players set @s field_mobcount 0
execute as @a[tag=FieldVolcano,limit=1] run function mikatanserver:adddim/area/volcano/parkour/set_rank_view