summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["ThirteenDunMob","13_tpAr"]}
tp @s @e[tag=ThirteenDunBoss_2,limit=1]
tp @e[tag=ThirteenDunBoss_2,limit=1] @e[type=armor_stand,tag=13_tpAr,limit=1]
kill @e[type=armor_stand,tag=13_tpAr]
particle warped_spore ~ ~ ~ 0.5 0.25 0.25 1 500
execute as @e[tag=ThirteenDunBoss_2,limit=1] at @s run particle warped_spore ~ ~ ~ 0.5 0.25 0.25 1 500