##プレイヤーのモーション
scoreboard players add @e[tag=TwentyeightDunBoss] SpecialSkillTimer 1

##ai load
execute as @e[tag=TwentyeightDunBoss,scores={SpecialSkillTimer=70..}] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/arrow/skill/kill_armor

##main program
execute as @e[tag=TwentyeightDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/arrow/skill/main_ar


##re
execute as @e[tag=TwentyeightDunBoss] if score @s SpecialSkillTimer matches ..70 run schedule function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/arrow/skill/mainloop 1t