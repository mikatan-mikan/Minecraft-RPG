tag @s remove FieldDesert
bossbar remove desert_boss
execute if score $desert_tier2_boss_flag field_loop matches 1 run bossbar add ender_boss "ファラオ"
execute if score $desert_tier2_boss_flag field_loop matches 1 run bossbar set ender_boss color yellow
execute if score $desert_tier2_boss_flag field_loop matches 1 run bossbar set ender_boss max 400
clear @s netherite_axe{desert_item:1b}