tag @a[tag=silf_tp_after] add FieldSilf
tag @a[tag=silf_tp_after] remove silf_tp_after
scoreboard players set @s field_mobcount 0
execute as @a[tag=FieldSilf,limit=1] run function mikatanserver:adddim/area/silf/parkour/set_rank_view