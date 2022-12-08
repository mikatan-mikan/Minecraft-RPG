tag @s remove FieldEnder_2
bossbar remove ender_boss
execute if score $nether_tier2_boss_flag field_loop matches 1 run bossbar add ender_boss "終の卓越者"
execute if score $nether_tier2_boss_flag field_loop matches 1 run bossbar set ender_boss color purple
execute if score $nether_tier2_boss_flag field_loop matches 1 run bossbar set ender_boss max 500