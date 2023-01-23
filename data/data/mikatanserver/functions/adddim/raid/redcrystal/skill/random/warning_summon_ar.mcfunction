scoreboard players add $randomAr RAID_RedCrystal_Skill 1
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["RAID_RedCrystalMob","RAID_RedCrystal_Warn"]}
execute if score $randomAr RAID_RedCrystal_Skill matches ..180 run function mikatanserver:adddim/raid/redcrystal/skill/random/warning_summon_ar
execute if score $randomAr RAID_RedCrystal_Skill matches 180 as @a[tag=RAID_RedCrystal_Player] at @s run playsound entity.tnt.primed master @s ~ ~ ~ 2 0