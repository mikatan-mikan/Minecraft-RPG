##プレイヤーのモーション
scoreboard players add @a[tag=SpecialSkill.Pink] SpecialSkillTimer 1
##同様にアマスタにも終了タイミングが分かるようにそれぞれにタイマーを持たせる
scoreboard players add @e[tag=SpecialSkillAr,tag=PinkAr] SpecialSkillTimer 1

execute as @a[tag=SpecialSkill.Pink] at @s run function mikatanserver:item/specialskill/pink/skill/player/sound

##forceload and armor kill
execute as @e[tag=SpecialSkillAr,tag=PinkAr,scores={SpecialSkillTimer=70..}] at @s run function mikatanserver:item/specialskill/pink/skill/kill_armor

##main program
execute as @e[tag=SpecialSkillAr,tag=PinkAr] run function mikatanserver:item/specialskill/pink/skill/main


##re
execute as @a if score @s SpecialSkillTimer matches ..70 run schedule function mikatanserver:item/specialskill/pink/skill/mainloop 1t