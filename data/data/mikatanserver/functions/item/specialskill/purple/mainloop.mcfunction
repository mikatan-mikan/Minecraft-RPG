##プレイヤーのモーション
scoreboard players add @a[tag=SpecialSkill.Purple] SpecialSkillTimer 1
##同様にアマスタにも終了タイミングが分かるようにそれぞれにタイマーを持たせる
scoreboard players add @e[tag=SpecialSkillAr,tag=PurpleAr] SpecialSkillTimer 1

execute as @a[tag=SpecialSkill.Purple] at @s run function mikatanserver:item/specialskill/purple/skill/player/sound

##forceload and armor kill
execute as @e[tag=SpecialSkillAr,tag=PurpleAr,scores={SpecialSkillTimer=80..}] at @s run function mikatanserver:item/specialskill/purple/skill/kill_armor

##main program
execute as @e[tag=SpecialSkillAr,tag=PurpleAr] at @s run function mikatanserver:item/specialskill/purple/skill/main


##re
execute as @a if score @s SpecialSkillTimer matches ..80 run schedule function mikatanserver:item/specialskill/purple/mainloop 1t