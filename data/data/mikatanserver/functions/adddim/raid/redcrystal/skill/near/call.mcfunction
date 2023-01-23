##10秒に一回警告音 + パーティクル用アーマースタンド
function mikatanserver:adddim/raid/redcrystal/skill/50t_check
execute if score $timer RAID_RedCrystal_Skill matches 20..280 if score $50t RAID_RedCrystal_Skill matches 5 run function mikatanserver:adddim/raid/redcrystal/skill/near/warning_summon_ar
##警告
execute if score $timer RAID_RedCrystal_Skill matches 20..280 run function mikatanserver:adddim/raid/redcrystal/skill/near/warning

kill @e[type=armor_stand,tag=RAID_RedCrystal_Warn,distance=30..]