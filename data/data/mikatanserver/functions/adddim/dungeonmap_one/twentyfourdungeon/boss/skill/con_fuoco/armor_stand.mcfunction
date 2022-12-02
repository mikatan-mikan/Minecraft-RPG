summon armor_stand ~ ~ ~ {Tags:["Twentyfour_TpBefore","TwentyfourDunMob","Twentyfour_Con"],Small:1b,Invisible:1b,Invulnerable:1b} 
execute in mikatanserver:dungeon as @e[tag=Twentyfour_TpBefore] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/con_fuoco/tp
scoreboard players remove $summon_armor TwentyfourBossSkill2 1
##指定体数分再帰
execute if score $summon_armor TwentyfourBossSkill2 matches 1.. run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/con_fuoco/armor_stand 