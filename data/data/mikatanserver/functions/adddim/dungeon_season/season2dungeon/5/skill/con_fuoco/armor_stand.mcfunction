summon armor_stand ~ ~ ~ {Tags:["season2_TpBefore","season2DunMob","season2_Con"],Small:1b,Invisible:1b,Invulnerable:1b} 
execute in mikatanserver:dungeon as @e[tag=season2_TpBefore] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/con_fuoco/tp
scoreboard players remove $summon_armor season2BossSkill2 1
##指定体数分再帰
execute if score $summon_armor season2BossSkill2 matches 1.. run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/con_fuoco/armor_stand 