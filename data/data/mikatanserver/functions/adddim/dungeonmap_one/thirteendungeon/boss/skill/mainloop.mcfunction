
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle13] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle13] resistance

execute as @e[tag=13_StarAr] at @s if entity @s[nbt={OnGround:1b}] run kill @s

    ##healing
        execute if entity @a[scores={ThirteenBossSkill=80},tag=BossBattle13] as @e[tag=ThirteenDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/skill/healing/main
        
    ##star
        execute in mikatanserver:dungeon if entity @a[scores={ThirteenBossSkill=110}] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/skill/star/main
        #starダメージ判定
        execute if entity @a[scores={ThirteenBossSkill=130..210}] as @e[tag=13_StarAr] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/skill/star/damage
    ##時の煌めき
        execute if entity @a[scores={ThirteenBossSkill=185}] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/skill/time/main
    ##召喚
        #乱数
            execute if score @a[tag=BossBattle13,limit=1] ThirteenBossSkill matches 257 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattle13,limit=1] ThirteenBossSkill matches 257 run function mikatanlib:rand/rand_exe
        #乱数==0        [wither skelton]
            execute if score @a[tag=BossBattle13,limit=1] ThirteenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/skill/rand_pattern_2/skelton/main
        #乱数==1        [clear effect]
            execute if score @a[tag=BossBattle13,limit=1] ThirteenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/skill/rand_pattern_2/effect/main

    ##mainloop 1 再帰
    execute if entity @a[scores={ThirteenBossSkill=273..}] run scoreboard players set @a ThirteenBossSkill 0