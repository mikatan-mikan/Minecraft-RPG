execute store result entity @s Pos[0] double 0.1 run scoreboard players get @e[tag=TwentyeightDunMob,tag=ArrowAr,tag=Now,limit=1] NowPlaceX
execute store result entity @s Pos[1] double 1 run scoreboard players get $y NowPlaceY
execute store result entity @s Pos[2] double 0.1 run scoreboard players get @e[tag=TwentyeightDunMob,tag=ArrowAr,tag=Now,limit=1] NowPlaceY
# tellraw @a [{"nbt":"Pos","entity": "@s"},{"score":{"name": "@e[tag=SpecialSkillAr,tag=pinkAr,tag=ArrowAr,tag=Now,limit=1]","objective": "NowPlaceX"}},{"score":{"name": "@e[tag=SpecialSkillAr,tag=pinkAr,tag=ArrowAr,tag=Now,limit=1]","objective": "NowPlaceY"}}]
execute if score $28_Difficulty Temporary matches 1 run data merge entity @s {Motion:[0.0d,-10.0d,0.0d],damage: 1.0d}
execute if score $28_Difficulty Temporary matches 1 run data merge entity @s {Motion:[0.0d,-10.0d,0.0d],damage: 4.0d}
tag @s remove Bef