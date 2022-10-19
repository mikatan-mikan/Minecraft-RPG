
tag @s remove FieldJungle
bossbar remove jungle_zombie
execute if score $jungle_boss_flag field_loop matches 1 run bossbar add jungle_zombie "古代の亡骸"
execute if score $jungle_boss_flag field_loop matches 1 run bossbar set jungle_zombie color purple
execute if score $jungle_boss_flag field_loop matches 1 run bossbar set jungle_zombie max 600