##プレイヤーのモーション
scoreboard players add @a[tag=SpecialSkill.Red] SpecialSkillTimer 1
##同様にアマスタにも終了タイミングが分かるようにそれぞれにタイマーを持たせる
scoreboard players add @e[tag=SpecialSkillAr,tag=RedAr] SpecialSkillTimer 1

execute as @a[tag=SpecialSkill.Red] at @s run function mikatanserver:item/specialskill/red/skill/player/sound

##forceload and armor kill
execute as @e[tag=SpecialSkillAr,tag=RedAr,scores={SpecialSkillTimer=80..}] at @s run function mikatanserver:item/specialskill/red/skill/kill_armor

##main program
execute as @e[tag=SpecialSkillAr,tag=RedAr] run function mikatanserver:item/specialskill/red/skill/main


##re
execute as @a if score @s SpecialSkillTimer matches ..80 run schedule function mikatanserver:item/specialskill/red/skill/mainloop 1t