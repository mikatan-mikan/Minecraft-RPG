summon armor_stand ~ ~ ~ {Tags:["TwentyfiveDunMob","25_tpAr"],Small:1b,Invisible:1b,Invulnerable:1b}
tp @s @e[tag=TwentyfiveDunBoss_2,limit=1]
tp @e[tag=TwentyfiveDunBoss_2,limit=1] @e[type=armor_stand,tag=25_tpAr,limit=1]
kill @e[type=armor_stand,tag=25_tpAr]
particle warped_spore ~ ~ ~ 0.5 0.25 0.25 1 500
execute as @e[tag=TwentyfiveDunBoss_2,limit=1] at @s run particle warped_spore ~ ~ ~ 0.5 0.25 0.25 1 500
scoreboard players remove $swap_cnt TwentyfiveBossSkill 1
execute if score $swap_cnt TwentyfiveBossSkill matches 1.. as @a[tag=BossBattle25,sort=random,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/rand_pattern_1/swap/tp