execute as @e[tag=PlayerMasic,tag=BlessMarker] at @s run function mikatanserver:item/rod/undine_scythe/loop_marker

execute if entity @e[tag=PlayerMasic,tag=BlessMarker] run schedule function mikatanserver:item/rod/undine_scythe/loop 1t