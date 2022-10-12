execute if entity @a[scores={NineteenBossSkill=1}] run scoreboard players set @s MK.r.RandValue 28
execute if entity @a[scores={NineteenBossSkill=1}] run function mikatanlib:rand/rand_exe

execute unless score @a[tag=BossBattle19,limit=1] NineteenBossSkill3 matches 400..470 if score @s MK.r.RandValue matches 27 if entity @a[scores={NineteenBossSkill=5}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/move/teleport_1/main
##上下移動
execute unless score @a[tag=BossBattle19,limit=1] NineteenBossSkill3 matches 400..470 if score @s MK.r.RandValue matches 0..1 run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/move/up_down/main
##水平
execute unless score @a[tag=BossBattle19,limit=1] NineteenBossSkill3 matches 400..470 if score @s MK.r.RandValue matches 2..9 run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/move/horizontal/main
##斜め上
execute unless score @a[tag=BossBattle19,limit=1] NineteenBossSkill3 matches 400..470 if score @s MK.r.RandValue matches 10..17 run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/move/up_horizontal/main
##斜め下
execute unless score @a[tag=BossBattle19,limit=1] NineteenBossSkill3 matches 400..470 if score @s MK.r.RandValue matches 18..26 run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/move/down_horizontal/main