##10秒に一回警告音 + パーティクル用アーマースタンド
function mikatanserver:adddim/raid/slime/skill/50t_check
execute if score $timer RAID_Slime_Skill matches 20..280 if score $50t RAID_Slime_Skill matches 5 run function mikatanserver:adddim/raid/slime/skill/cross/warning_summon_ar
##警告
execute if score $timer RAID_Slime_Skill matches 20..280 run function mikatanserver:adddim/raid/slime/skill/cross/warning

execute as @e[type=armor_stand,tag=RAID_Slime_Warn] at @s unless block ~ ~ ~ air run kill @s