tag @s remove FieldNether_2
bossbar remove nether_tier2_magmaboss
execute if score $nether_tier2_boss_flag field_loop matches 1 run bossbar add nether_tier2_magmaboss "マグマキューブ"
execute if score $nether_tier2_boss_flag field_loop matches 1 run bossbar set nether_tier2_magmaboss color red
execute if score $nether_tier2_boss_flag field_loop matches 1 run bossbar set nether_tier2_magmaboss max 600