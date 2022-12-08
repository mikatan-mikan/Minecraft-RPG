
execute as @a[distance=..30] run loot give @s loot mikatanserver:area/ender_tier2/boss
execute as @a[distance=..30] run advancement grant @s only mikatanserver:event/ender_tier2/kill_boss

bossbar remove ender_boss

kill @e[tag=Ender_BossNowPlaceAr]