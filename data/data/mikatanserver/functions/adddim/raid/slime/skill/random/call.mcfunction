##10秒に一回警告音 + パーティクル用アーマースタンド
function mikatanserver:adddim/raid/slime/skill/50t_check
scoreboard players reset $randomAr RAID_Sime_Skill
execute in mikatanserver:dungeon if score $timer RAID_Sime_Skill matches 20 at @s run function mikatanserver:adddim/raid/slime/skill/random/warning_summon_ar
execute if score $timer RAID_Sime_Skill matches 20 as @e[tag=RAID_Slime_Warn] at @s run function mikatanserver:adddim/raid/slime/skill/random/warning_ar_tp
##警告
execute if score $timer RAID_Sime_Skill matches 20..280 run function mikatanserver:adddim/raid/slime/skill/random/warning