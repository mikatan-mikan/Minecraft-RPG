tag @a[tag=DungeonPlay_10,tag=!BossBattle10] add BossBattle10
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle10] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle10] resistance
    ##healing
        execute if entity @a[scores={TenBossSkill=100},tag=BossBattle10] as @e[tag=TenthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/skill/healing/main
        
    ##衝撃波を放つ
        execute in mikatanserver:dungeon if entity @a[scores={TenBossSkill=115}] run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/skill/impact2/main
        execute if entity @a[scores={TenBossSkill=116..216}] as @e[tag=impact_fish_dun_y] at @s run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/skill/impact2/tp
        execute if entity @a[scores={TenBossSkill=217},tag=BossBattle10,limit=1] run kill @e[tag=impact_fish_dun_y]
    ##blind & speed
        #乱数
            execute if score @a[tag=BossBattle10,limit=1] TenBossSkill matches 257 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattle10,limit=1] TenBossSkill matches 257 run function mikatanlib:rand/rand_exe
        #乱数==0        [blind]
            execute if score @a[tag=BossBattle10,limit=1] TenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/skill/rand_pattern_1/blind/main
        #乱数==1        [speed]
            execute if score @a[tag=BossBattle10,limit=1] TenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/skill/rand_pattern_1/speed/main
    ##召喚
        #乱数
            execute if score @a[tag=BossBattle10,limit=1] TenBossSkill matches 279 run scoreboard players set @s MK.r.RandValue 2
        #乱数==0        [wolf]
            execute if score @a[tag=BossBattle10,limit=1] TenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/skill/rand_pattern_2/wolf/main
        #乱数==1        [clear effect]
            execute if score @a[tag=BossBattle10,limit=1] TenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/skill/rand_pattern_2/effect/main

    ##mainloop 1 再帰
    execute if entity @a[scores={TenBossSkill=293..}] run scoreboard players set @a TenBossSkill 0

    

##mainloop 2 skill 1
    ##8方向に所定の弾を打つ
        execute if entity @a[scores={TenBossSkill2=84},tag=BossBattle10,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/skill/bullet/main
        execute if entity @a[scores={TenBossSkill2=85..125},tag=BossBattle10,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/skill/bullet/tp_loop
        execute if entity @a[scores={TenBossSkill2=126},tag=BossBattle10,limit=1] run kill @e[tag=IronBossAr]

    ##衝撃波を放つ
        execute in mikatanserver:dungeon if entity @a[scores={TenBossSkill2=215}] run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/skill/impact/main
        execute if entity @a[scores={TenBossSkill2=216..316}] as @e[tag=impact_fish_dun_x] at @s run function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/skill/impact/tp
        execute if entity @a[scores={TenBossSkill2=317},tag=BossBattle10,limit=1] run kill @e[tag=impact_fish_dun_x]

    execute if entity @a[scores={TenBossSkill2=425..}] run scoreboard players set @a TenBossSkill2 0