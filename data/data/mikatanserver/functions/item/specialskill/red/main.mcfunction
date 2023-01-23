scoreboard players set $specialskill TMP 150
function mikatanserver:item/specialskill/_use_score
scoreboard players reset $specialskill TMP

effect give @s resistance 3 2 true

##アマスタを呼ぶ
execute positioned ~ ~100 ~ run summon armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["SpecialSkillAr","RedAr","MainAr","Bef"],NoGravity:1b}
execute positioned ~ ~100 ~ run summon armor_stand ^ ^ ^0.5 {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["SpecialSkillAr","RedAr","SecondAr","Bef"],NoGravity:1b}
execute positioned ~ ~100 ~ run summon armor_stand ^ ^ ^1 {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["SpecialSkillAr","RedAr","ThirdAr","Bef"],NoGravity:1b}

tag @s add BefTMP
execute store result score @s TMP run data get entity @s Rotation[0]
execute as @e[tag=SpecialSkillAr,tag=RedAr,tag=Bef] store result entity @s Rotation[0] float 1 run scoreboard players get @a[tag=BefTMP,limit=1] TMP
execute store result score @s TMP run data get entity @s Rotation[1]
execute as @e[tag=SpecialSkillAr,tag=RedAr,tag=Bef] store result entity @s Rotation[1] float 1 run scoreboard players get @a[tag=BefTMP,limit=1] TMP
tag @e[tag=SpecialSkillAr,tag=RedAr,tag=Bef] remove Bef
tag @s remove BefTMP

tag @s add SpecialSkill.Red
scoreboard players set @s SpecialSkillTimer 0

function mikatanserver:item/specialskill/red/skill/mainloop