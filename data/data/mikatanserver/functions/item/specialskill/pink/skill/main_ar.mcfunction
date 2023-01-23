execute unless block ~ ~ ~ #empty run forceload add ~ ~

##ビームを放つ
    #プレイヤーの100マス上に召喚する
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["ArrowAr","SpecialSkillAr","pinkAr"],NoGravity:1b}
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["ArrowAr","SpecialSkillAr","pinkAr"],NoGravity:1b}
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["ArrowAr","SpecialSkillAr","pinkAr"],NoGravity:1b}
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["ArrowAr","SpecialSkillAr","pinkAr"],NoGravity:1b}
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["ArrowAr","SpecialSkillAr","pinkAr"],NoGravity:1b}
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["ArrowAr","SpecialSkillAr","pinkAr"],NoGravity:1b}
execute as @e[tag=SpecialSkillAr,tag=pinkAr,tag=ArrowAr] at @s run function mikatanserver:item/specialskill/pink/skill/arrowloop

kill @e[tag=SpecialSkillAr,tag=pinkAr,tag=ArrowAr]

tp @p[tag=SpecialSkill.Pink,distance=..3] ~ ~ ~
function mikatanserver:item/specialskill/pink/particle_1
execute positioned ~ ~10 ~ run function mikatanserver:item/specialskill/pink/particle_1