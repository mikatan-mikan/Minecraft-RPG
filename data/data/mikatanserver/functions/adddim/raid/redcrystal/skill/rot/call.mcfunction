##10秒に一回警告音 + パーティクル用アーマースタンド
function mikatanserver:adddim/raid/redcrystal/skill/50t_check
execute if score $timer RAID_RedCrystal_Skill matches 20..120 if score $50t RAID_RedCrystal_Skill matches 5 as @a[tag=RAID_RedCrystal_Player] at @s run playsound block.note_block.chime master @s ~ ~ ~ 2 0.5