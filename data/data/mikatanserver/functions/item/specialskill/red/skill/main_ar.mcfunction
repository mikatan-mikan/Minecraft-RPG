execute unless block ~ ~ ~ #empty run forceload add ~ ~

##ビームを放つ
summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["BeamAr","SpecialSkillAr","RedAr","Bef"]}
data modify entity @e[tag=BeamAr,tag=SpecialSkillAr,tag=RedAr,tag=Bef,limit=1] Rotation set from entity @e[tag=SpecialSkillAr,tag=RedAr,tag=MainAr,limit=1] Rotation
tag @e[tag=BeamAr,tag=SpecialSkillAr,tag=RedAr,tag=Bef,limit=1] remove Bef
##プレイヤー位置に対して当たり判定を付ける
execute positioned ~ ~-1.0 ~ as @e[type=#mikatanserver:mobs,distance=..1] run function mikatanserver:item/specialskill/red/skill/_hit 
execute as @e[tag=SpecialSkillAr,tag=RedAr,tag=BeamAr] at @s run tp @s ^ ^1.5 ^2
execute as @e[tag=SpecialSkillAr,tag=RedAr,tag=BeamAr] at @s run function mikatanserver:item/specialskill/red/skill/beamloop

tp @p[tag=SpecialSkill.Red,distance=..3] ~ ~ ~
function mikatanserver:item/specialskill/red/particle_1