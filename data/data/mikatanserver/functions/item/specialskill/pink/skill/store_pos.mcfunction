
execute store result entity @s Pos[0] double 0.1 run scoreboard players get @e[tag=SpecialSkillAr,tag=ArrowAr,tag=Now,limit=1] NowPlaceX
execute store result entity @s Pos[1] double 1 run scoreboard players get $y NowPlaceY
execute store result entity @s Pos[2] double 0.1 run scoreboard players get @e[tag=SpecialSkillAr,tag=ArrowAr,tag=Now,limit=1] NowPlaceY
data merge entity @s {Motion:[0.0d,-10.0d,0.0d],damage: 4.0d}
tag @s remove Bef