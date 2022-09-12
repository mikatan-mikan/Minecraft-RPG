
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle13_2] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle13_2] resistance

execute as @e[tag=13_StarAr] at @s if entity @s[nbt={OnGround:1b}] run kill @s

#kill @e[type=slime,nbt={Size:1}]

execute store result score $slime_damage TMP run data get entity @e[type=slime,tag=13_EffectAr_Slime1,limit=1] HurtTime
execute if score $slime_damage TMP matches 1.. as @e[type=slime,tag=13_EffectAr_Slime1] at @s run tp @s ~ ~-10 ~20
execute if score $slime_damage TMP matches 1.. run kill @e[tag=13_EffectAr1]
execute store result score $slime_damage TMP run data get entity @e[type=slime,tag=13_EffectAr_Slime2,limit=1] HurtTime 
execute if score $slime_damage TMP matches 1.. as @e[type=slime,tag=13_EffectAr_Slime2] at @s run tp @s ~ ~-10 ~20
execute if score $slime_damage TMP matches 1.. run kill @e[tag=13_EffectAr2]
    ##healing
        execute if entity @a[scores={ThirteenBossSkill=80},tag=BossBattle13_2] as @e[tag=ThirteenDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/healing/main
        
    ##追撃
        execute if entity @e[tag=13_EffectAr] if entity @a[scores={ThirteenBossSkill2=90},tag=BossBattle13_2] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/add_attack/main 
    ##star
        execute in mikatanserver:dungeon if entity @a[scores={ThirteenBossSkill=110}] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/star/main
        #starダメージ判定
        execute if entity @a[scores={ThirteenBossSkill=130..210}] as @e[tag=13_StarAr] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/star/damage
    ##時の煌めき
        execute if entity @a[scores={ThirteenBossSkill=185}] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/time/main
    ##召喚
        #乱数
            execute if score @a[tag=BossBattle13_2,limit=1] ThirteenBossSkill matches 257 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattle13_2,limit=1] ThirteenBossSkill matches 257 run function mikatanlib:rand/rand_exe
        #乱数==0        [wither skelton]
            execute if score @a[tag=BossBattle13_2,limit=1] ThirteenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/rand_pattern_2/skelton/main
        #乱数==1        [clear effect]
            execute if score @a[tag=BossBattle13_2,limit=1] ThirteenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/rand_pattern_2/effect/main


    ##mainloop 1 再帰
    execute if entity @a[scores={ThirteenBossSkill=273..}] run scoreboard players set @a ThirteenBossSkill 0

    ##追撃
        execute if entity @e[tag=13_EffectAr] if entity @a[scores={ThirteenBossSkill2=45},tag=BossBattle13_2] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/add_attack/main 
    ##エフェクトマテリアル(フィールド上の3点にエフェクトがかかるparticle(AEC)が設置される)
        #乱数
            execute if score @a[tag=BossBattle13_2,limit=1] ThirteenBossSkill2 matches 90 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattle13_2,limit=1] ThirteenBossSkill2 matches 90 run function mikatanlib:rand/rand_exe
        execute if entity @a[scores={ThirteenBossSkill2=90},tag=BossBattle13_2] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/effect_material/main
        execute if entity @a[scores={ThirteenBossSkill2=90},tag=BossBattle13_2] if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/effect_material/main2
    
    ##追撃
        execute if entity @e[tag=13_EffectAr] if entity @a[scores={ThirteenBossSkill2=350},tag=BossBattle13_2] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/add_attack/main 
    ##時の揺らぎ(ランダムなプレイヤーと位置をトレード(但し、y座標が正常であるプレイヤー))
        execute if entity @a[scores={ThirteenBossSkill2=190},tag=BossBattle13_2] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/time_warp/main 
    ##命の循環(2箇所に専用アマスタ(頭にブロック)を設置(破壊されるまで追加攻撃)) : 但し既にあるなら設置しない
        execute if entity @a[scores={ThirteenBossSkill2=279},tag=BossBattle13_2] unless entity @e[tag=13_EffectAr] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/life_cycle/main
    ##大ダメージ
        execute if entity @a[scores={ThirteenBossSkill2=300},tag=BossBattle13_2] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/big_damage/main

    ##mainloop 2 再帰
    execute if entity @a[scores={ThirteenBossSkill2=405..}] run scoreboard players set @a ThirteenBossSkill2 0