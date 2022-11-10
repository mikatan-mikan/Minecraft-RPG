scoreboard players add $randomAr RAID_Slime_Skill 1
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["RAID_SlimeMob","RAID_Slime_Warn"]}
execute if score $randomAr RAID_Slime_Skill matches ..180 run function mikatanserver:adddim/raid/slime/skill/random/warning_summon_ar
execute if score $randomAr RAID_Slime_Skill matches 180 as @a[tag=RAID_Slime_Player] at @s run playsound entity.tnt.primed master @s ~ ~ ~ 2 0