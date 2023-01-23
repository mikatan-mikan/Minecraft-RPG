scoreboard players set $specialskill TMP 150
function mikatanserver:item/specialskill/_use_score
scoreboard players reset $specialskill TMP

effect give @s resistance 4 3 true
effect give @s regeneration 3 2 true

##アマスタを呼ぶ
execute positioned ~ ~100 ~ run summon armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["SpecialSkillAr","PinkAr","MainAr","Bef"],NoGravity:1b}

tag @s add BefTMP
execute store result score @s TMP run data get entity @s Rotation[0]
execute as @e[tag=SpecialSkillAr,tag=PinkAr,tag=Bef] store result entity @s Rotation[0] float 1 run scoreboard players get @a[tag=BefTMP,limit=1] TMP
execute store result score @s TMP run data get entity @s Rotation[1]
execute as @e[tag=SpecialSkillAr,tag=PinkAr,tag=Bef] store result entity @s Rotation[1] float 1 run scoreboard players get @a[tag=BefTMP,limit=1] TMP
tag @e[tag=SpecialSkillAr,tag=PinkAr,tag=Bef] remove Bef
tag @s remove BefTMP

tag @s add SpecialSkill.Pink
scoreboard players set @s SpecialSkillTimer 0

function mikatanserver:item/specialskill/pink/skill/mainloop