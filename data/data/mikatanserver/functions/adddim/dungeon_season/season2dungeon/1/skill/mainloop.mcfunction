tag @a[tag=DungeonPlay_season2,tag=!BossBattleseason2] add BossBattleseason2
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattleseason2] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattleseason2] resistance
    ##healing
        execute if entity @a[scores={season2BossSkill=100},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/season2dungeon/boss/skill/healing/main
        
    ##衝撃波を放つ
        execute in mikatanserver:dungeon if entity @a[scores={season2BossSkill=115}] run function mikatanserver:adddim/dungeonmap_one/season2dungeon/boss/skill/impact2/main
        execute if entity @a[scores={season2BossSkill=116..216}] as @e[tag=impact_fish_dun_y] at @s run function mikatanserver:adddim/dungeonmap_one/season2dungeon/boss/skill/impact2/tp
        execute if entity @a[scores={season2BossSkill=217},tag=BossBattleseason2,limit=1] run kill @e[tag=impact_fish_dun_y]
    ##blind & speed
        #乱数
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 run function mikatanlib:rand/rand_exe
        #乱数==0        [blind]
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/season2dungeon/boss/skill/rand_pattern_1/blind/main
        #乱数==1        [speed]
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/season2dungeon/boss/skill/rand_pattern_1/speed/main
    ##召喚
        #乱数
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 279 run scoreboard players set @s MK.r.RandValue 2
        #乱数==0        [wolf]
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/season2dungeon/boss/skill/rand_pattern_2/wolf/main
        #乱数==1        [clear effect]
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/season2dungeon/boss/skill/rand_pattern_2/effect/main

    ##mainloop 1 再帰
    execute if entity @a[scores={season2BossSkill=293..}] run scoreboard players set @a season2BossSkill 0

    

##mainloop 2 skill 1
    ##8方向に所定の弾を打つ
        execute if entity @a[scores={season2BossSkill2=84},tag=BossBattleseason2,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/season2dungeon/boss/skill/bullet/main
        execute if entity @a[scores={season2BossSkill2=85..125},tag=BossBattleseason2,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/season2dungeon/boss/skill/bullet/tp_loop
        execute if entity @a[scores={season2BossSkill2=126},tag=BossBattleseason2,limit=1] run kill @e[tag=IronBossAr]

    ##衝撃波を放つ
        execute in mikatanserver:dungeon if entity @a[scores={season2BossSkill2=215}] run function mikatanserver:adddim/dungeonmap_one/season2dungeon/boss/skill/impact/main
        execute if entity @a[scores={season2BossSkill2=216..316}] as @e[tag=impact_fish_dun_xs] at @s run function mikatanserver:adddim/dungeonmap_one/season2dungeon/boss/skill/impact/tp
        execute if entity @a[scores={season2BossSkill2=317},tag=BossBattleseason2,limit=1] run kill @e[tag=impact_fish_dun_xs]

    execute if entity @a[scores={season2BossSkill2=425..}] run scoreboard players set @a season2BossSkill2 0