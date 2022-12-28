##10秒に一回警告音 + パーティクル用アーマースタンド
function mikatanserver:adddim/raid/giant/skill/50t_check
scoreboard players reset $randomAr RAID_Giant_Skill
execute in mikatanserver:dungeon if score $timer RAID_Giant_Skill matches 20 at @s run function mikatanserver:adddim/raid/giant/skill/random/warning_summon_ar
execute if score $timer RAID_Giant_Skill matches 20 as @e[tag=RAID_Giant_Warn] at @s run function mikatanserver:adddim/raid/giant/skill/random/warning_ar_tp
##警告
execute if score $timer RAID_Giant_Skill matches 20..280 run function mikatanserver:adddim/raid/giant/skill/random/warning