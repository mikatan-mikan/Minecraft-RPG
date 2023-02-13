scoreboard players set $specialskill TMP 150
function mikatanserver:item/specialskill/_use_score
scoreboard players reset $specialskill TMP

tag @s add SpecialSkill.Purple
scoreboard players set @s SpecialSkillTimer 0

summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["SpecialSkillAr","PurpleAr","MainAr","Bef"],NoGravity:1b}
execute unless block ~ ~ ~ #empty run forceload add ~ ~

function mikatanserver:item/specialskill/purple/mainloop