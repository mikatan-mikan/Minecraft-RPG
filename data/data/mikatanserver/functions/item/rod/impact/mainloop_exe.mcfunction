scoreboard players add @s impact_timer 1

tp @s[tag=impact_rod_sil_1] ~0.33 ~ ~-0.33
tp @s[tag=impact_rod_sil_2] ~0.33 ~ ~0.33
tp @s[tag=impact_rod_sil_3] ~-0.33 ~ ~0.33
tp @s[tag=impact_rod_sil_4] ~-0.33 ~ ~-0.33

particle sweep_attack ~ ~ ~ 0.125 0.125 0.125 0 10

execute as @e[type=#mikatanserver:not_undead,distance=..0.7] run effect give @s instant_damage 1 1
execute as @e[type=#mikatanserver:undead,distance=..0.7] run effect give @s instant_health 1 1

execute if score @s impact_timer matches 100 run kill @s
execute if score @s impact_timer matches ..100 run schedule function mikatanserver:item/rod/impact/mainloop 1t