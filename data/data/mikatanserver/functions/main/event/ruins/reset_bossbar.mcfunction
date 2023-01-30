
tag @s remove FieldRuins
bossbar remove ruins_witch
execute if score $ruins_boss_flag field_loop matches 1 run bossbar add ruins_witch "魔術師"
execute if score $ruins_boss_flag field_loop matches 1 run bossbar set ruins_witch color purple
execute if score $ruins_boss_flag field_loop matches 1 run bossbar set ruins_witch max 4000