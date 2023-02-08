
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle30] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle30] resistance
effect give @s invisibility 100 1
##bossの現在HPをgetする
execute store result score $30_boss_hp boss_hp_checker run data get entity @e[tag=ThirtyDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $30_boss_hp TMP = $1024 int
scoreboard players operation $30_boss_hp TMP -= $30_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $30 BossHP -= $30_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##feet
scoreboard players add $feet ThirtyBossSkill 1
scoreboard players operation $feet ThirtyBossSkill %= $5 int
execute if score $feet ThirtyBossSkill matches 0 at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/_ai/feet
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $30 BossHP matches ..0 run kill @s
##bossのAI
execute unless score $ai_bool ThirtyBossSkill matches 0 at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/_ai/main
    ##healing
        execute if entity @a[scores={ThirtyBossSkill=100},tag=BossBattle30] at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/healing/main
    ##風の槍
        execute if entity @a[scores={ThirtyBossSkill=143},tag=BossBattle30] at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/spire/main
    ##乱数行動
        execute if entity @a[scores={ThirtyBossSkill=247},tag=BossBattle30] run scoreboard players set @s MK.r.RandValue 3
        execute if entity @a[scores={ThirtyBossSkill=247},tag=BossBattle30] run function mikatanlib:rand/rand_exe
        execute if entity @a[scores={ThirtyBossSkill=247},tag=BossBattle30] if score @s MK.r.RandValue matches 0 at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/rand/0/main
        execute if entity @a[scores={ThirtyBossSkill=247},tag=BossBattle30] if score @s MK.r.RandValue matches 1 at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/rand/1/main
        execute if entity @a[scores={ThirtyBossSkill=247},tag=BossBattle30] if score @s MK.r.RandValue matches 2 at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/rand/2/main
    ##重力波
        execute if entity @a[scores={ThirtyBossSkill=309},tag=BossBattle30] at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/gravity/main


    ##mainloop 1 再帰
    execute if entity @a[scores={ThirtyBossSkill=293..}] run scoreboard players set @a ThirtyBossSkill 0

    

##mainloop 2 skill 1

    ##時間加速
        execute if entity @a[scores={ThirtyBossSkill2=130},tag=BossBattle30] if predicate mikatanserver:chance/0.5 at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/return_score/main

    ##精霊の源
        execute if entity @a[scores={ThirtyBossSkill2=250},tag=BossBattle30] at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/power_up/main
    ##強化解除
        execute if entity @a[scores={ThirtyBossSkill2=350},tag=BossBattle30] at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/power_up/delete
    ##一周まわす
        execute if entity @a[scores={ThirtyBossSkill2=330},tag=BossBattle30] at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/fire/set_point
        execute if entity @a[scores={ThirtyBossSkill2=330..400},tag=BossBattle30] at @s run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/fire/main
        execute if entity @a[scores={ThirtyBossSkill2=400},tag=BossBattle30] at @s run scoreboard players set $ai_bool ThirtyBossSkill 1

    execute if entity @a[scores={ThirtyBossSkill2=425..}] run scoreboard players set @a ThirtyBossSkill2 0