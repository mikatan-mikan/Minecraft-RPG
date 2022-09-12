
tag @s remove FieldNether
bossbar remove nether_magmaboss
execute if score $boss_flag nether_field_loop matches 1 run bossbar add nether_magmaboss "マグマキューブ"
execute if score $boss_flag nether_field_loop matches 1 run bossbar set nether_magmaboss color red
execute if score $boss_flag nether_field_loop matches 1 run bossbar set nether_magmaboss max 200