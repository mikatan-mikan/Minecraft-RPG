
execute as @a[distance=..30] run loot give @s loot mikatanserver:area/desert/boss

scoreboard players set $desert_boss_flag field_loop 0
bossbar remove desert_boss

kill @e[tag=Desert_BossNowPlaceAr]