scoreboard players add $Rot RAID_RedCrystal_Skill 5
execute store result entity @s Rotation[0] float 1 run scoreboard players get $Rot RAID_RedCrystal_Skill
execute rotated ~ ~ run function mikatanserver:adddim/raid/redcrystal/skill/rot/firebar