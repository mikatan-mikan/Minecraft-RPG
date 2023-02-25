
execute if score @s MobNowHP matches ..340 run clear @a[tag=BossBattle34] #boats
execute if score @s MobNowHP matches ..340 run effect clear @a[tag=BossBattle34] resistance
effect give @s invisibility 100 1
##bossの現在HPをgetする
execute store result score $34_boss_hp boss_hp_checker run data get entity @e[tag=ThirtyfourDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $34_boss_hp TMP = $1024 int
scoreboard players operation $34_boss_hp TMP -= $34_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $34 BossHP -= $34_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##feet
scoreboard players add $feet ThirtyfourBossSkill 1
scoreboard players operation $feet ThirtyfourBossSkill %= $5 int
execute if score $feet ThirtyfourBossSkill matches 0 at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/_ai/feet
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $34 BossHP matches ..0 run kill @s
##bossのAI
execute unless score $ai_bool ThirtyfourBossSkill matches 0 at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/_ai/main
    ##healing
        execute if entity @a[scores={ThirtyfourBossSkill=100},tag=BossBattle34] at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/healing/main
    ##水の雫
        execute if entity @a[scores={ThirtyfourBossSkill=143},tag=BossBattle34] at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/spire/main
    ##乱数行動
        execute if entity @a[scores={ThirtyfourBossSkill=247},tag=BossBattle34] run scoreboard players set @s MK.r.RandValue 3
        execute if entity @a[scores={ThirtyfourBossSkill=247},tag=BossBattle34] run function mikatanlib:rand/rand_exe
        execute if entity @a[scores={ThirtyfourBossSkill=247},tag=BossBattle34] if score @s MK.r.RandValue matches 0 at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/rand/0/main
        execute if entity @a[scores={ThirtyfourBossSkill=247},tag=BossBattle34] if score @s MK.r.RandValue matches 1 at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/rand/1/main
        execute if entity @a[scores={ThirtyfourBossSkill=247},tag=BossBattle34] if score @s MK.r.RandValue matches 2 at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/rand/2/main
    ##重力波
        execute if entity @a[scores={ThirtyfourBossSkill=349},tag=BossBattle34] at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/gravity/main


    ##mainloop 1 再帰
    execute if entity @a[scores={ThirtyfourBossSkill=293..}] run scoreboard players set @a ThirtyfourBossSkill 0

    

##mainloop 2 skill 1

    ##時間加速
        execute if entity @a[scores={ThirtyfourBossSkill2=134},tag=BossBattle34] if predicate mikatanserver:chance/0.5 at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/return_score/main

    ##精霊の源
        execute if entity @a[scores={ThirtyfourBossSkill2=250},tag=BossBattle34] at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/power_up/main
    ##強化解除
        execute if entity @a[scores={ThirtyfourBossSkill2=350},tag=BossBattle34] at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/power_up/delete
    ##一周まわす(縦と横に対して)
        execute if entity @a[scores={ThirtyfourBossSkill2=334},tag=BossBattle34] at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/water/main
        execute if entity @a[scores={ThirtyfourBossSkill2=334..400},tag=BossBattle34] at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/water/particle
        execute if entity @a[scores={ThirtyfourBossSkill2=400},tag=BossBattle34] at @s run function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/skill/water/attack

    execute if entity @a[scores={ThirtyfourBossSkill2=425..}] run scoreboard players set @a ThirtyfourBossSkill2 0