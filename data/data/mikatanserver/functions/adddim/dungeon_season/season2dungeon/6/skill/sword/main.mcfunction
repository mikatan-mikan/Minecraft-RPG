execute if entity @a[scores={season2BossSkill2=500},tag=BossBattleseason2] run tellraw @a[tag=DungeonPlay_season2] [{"text": "Maiden Valkyrie>>","color": "red"},{"text": "執念の舞！！","color": "aqua"}]
execute facing entity @p feet run tp @s ~ ~ ~ ~ ~
##1
execute if entity @a[scores={season2BossSkill2=502},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/tp/main
execute if entity @a[scores={season2BossSkill2=502..514},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/rot_main
##2
execute if entity @a[scores={season2BossSkill2=516},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/tp/main
execute if entity @a[scores={season2BossSkill2=516},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/bomb/main


execute if entity @a[scores={season2BossSkill2=518},tag=BossBattleseason2] as @e[tag=season2DunBoss] run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=520},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=522},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=524},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=526},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=528},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=530},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
##3
execute if entity @a[scores={season2BossSkill2=532},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/tp/main
execute if entity @a[scores={season2BossSkill2=532},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/bomb/main

execute if entity @a[scores={season2BossSkill2=534},tag=BossBattleseason2] as @e[tag=season2DunBoss] run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=536},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=538},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=540},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=542},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=544},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main
execute if entity @a[scores={season2BossSkill2=546},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/main

execute if entity @a[scores={season2BossSkill2=548},tag=BossBattleseason2] as @e[tag=season2BombArmorStand] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/bomb/explode