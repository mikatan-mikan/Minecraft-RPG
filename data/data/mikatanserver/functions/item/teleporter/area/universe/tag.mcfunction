tag @a[tag=universe_tp_after] add FieldUniverse
tag @a[tag=universe_tp_after] remove universe_tp_after
scoreboard players set @s field_mobcount 0
execute as @a[tag=FieldUniverse,limit=1] run function mikatanserver:adddim/area/universe/parkour/set_rank_view