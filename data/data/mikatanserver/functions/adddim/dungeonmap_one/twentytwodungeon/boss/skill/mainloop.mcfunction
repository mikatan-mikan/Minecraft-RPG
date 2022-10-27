
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle22] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle22] resistance
##bossの現在HPをgetする
execute store result score $22_boss_hp boss_hp_checker run data get entity @e[tag=TwentytwoDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $22_boss_hp TMP = $1024 int
scoreboard players operation $22_boss_hp TMP -= $22_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $22 BossHP -= $22_boss_hp TMP
##ボス本体のhpを回復させる
effect give @s instant_health 1 200
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $22 BossHP matches ..0 run kill @s
    ##healing
        execute if entity @a[scores={TwentytwoBossSkill=100},tag=BossBattle22] at @s run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/healing/main
        
    ##衝撃波を放つ
        execute in mikatanserver:dungeon if entity @a[scores={TwentytwoBossSkill=115}] run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/impact2/main
        execute in mikatanserver:dungeon if entity @a[scores={TwentytwoBossSkill=135}] run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/impact2/main
        execute in mikatanserver:dungeon if entity @a[scores={TwentytwoBossSkill=155}] run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/impact2/main
        execute if entity @a[scores={TwentytwoBossSkill=116..256}] as @e[tag=22_impact_fish_dun_y] at @s run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/impact2/tp
        #execute if entity @a[scores={TwentytwoBossSkill=257},tag=BossBattle22,limit=1] run kill @e[tag=22_impact_fish_dun_y]
        execute as @e[tag=22_impact_fish_dun_y] at @s unless block ~ ~ ~ air run kill @s
    ##blind & speed
        #乱数
            execute if score @a[tag=BossBattle22,limit=1] TwentytwoBossSkill matches 257 run scoreboard players set @s MK.r.RandValue 3
            execute if score @a[tag=BossBattle22,limit=1] TwentytwoBossSkill matches 257 run function mikatanlib:rand/rand_exe
        #乱数==0        [blind]
            execute if score @a[tag=BossBattle22,limit=1] TwentytwoBossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/rand_pattern_1/blind/main
        #乱数==1        [speed]
            execute if score @a[tag=BossBattle22,limit=1] TwentytwoBossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/rand_pattern_1/speed/main
        #乱数==2        [leve]
            execute if score @a[tag=BossBattle22,limit=1] TwentytwoBossSkill matches 257 if entity @s[scores={MK.r.RandValue=2}] at @s run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/rand_pattern_1/leve/main
    ##召喚
    execute if entity @a[scores={TwentytwoBossSkill=257},tag=BossBattle22,limit=1] run tellraw @a[tag=DungeonPlay_22] [{"text": "iron blade>>","color": "gray"},{"text": "召喚：戦士","color": "#AAFF11"}]
        #乱数
            execute if score @a[tag=BossBattle22,limit=1] TwentytwoBossSkill matches 257 run scoreboard players set @s MK.r.RandValue 2
        #乱数==0        [wolf]
            execute if score @a[tag=BossBattle22,limit=1] TwentytwoBossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/rand_pattern_2/wolf/main
        #乱数==1        [clear effect]
            execute if score @a[tag=BossBattle22,limit=1] TwentytwoBossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/rand_pattern_2/effect/main

    ##mainloop 1 再帰
    execute if entity @a[scores={TwentytwoBossSkill=293..}] run scoreboard players set @a TwentytwoBossSkill 0

    

##mainloop 2 skill 1
    ##8方向に所定の弾を打つ
        execute if entity @a[scores={TwentytwoBossSkill2=84},tag=BossBattle22,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/bullet/main
        execute if entity @a[scores={TwentytwoBossSkill2=85..125},tag=BossBattle22,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/bullet/tp_loop
        execute if entity @a[scores={TwentytwoBossSkill2=126},tag=BossBattle22,limit=1] run kill @e[tag=22_IronBossAr]

    ##衝撃波を放つ
        execute in mikatanserver:dungeon if entity @a[scores={TwentytwoBossSkill2=215}] run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/impact/main
        execute in mikatanserver:dungeon if entity @a[scores={TwentytwoBossSkill2=235}] run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/impact/main
        execute in mikatanserver:dungeon if entity @a[scores={TwentytwoBossSkill2=255}] run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/impact/main
        execute if entity @a[scores={TwentytwoBossSkill2=216..356}] as @e[tag=22_impact_fish_dun_x] at @s run function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/skill/impact/tp
        #execute if entity @a[scores={TwentytwoBossSkill2=357},tag=BossBattle22,limit=1] run kill @e[tag=22_impact_fish_dun_x]
        execute as @e[tag=22_impact_fish_dun_x] at @s unless block ~ ~ ~ air run kill @s

    execute if entity @a[scores={TwentytwoBossSkill2=425..}] run scoreboard players set @a TwentytwoBossSkill2 0