tag @a[tag=desert_tp_after] add FieldDesert
tag @a[tag=desert_tp_after] remove desert_tp_after
scoreboard players set @s field_mobcount 0
execute as @a[tag=FieldDesert,limit=1] run function mikatanserver:adddim/area/desert/parkour/set_rank_view