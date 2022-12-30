
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle26] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle26] resistance
effect give @s invisibility 100 1
##bossの現在HPをgetする
execute store result score $26_boss_hp boss_hp_checker run data get entity @e[tag=TwentysixDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $26_boss_hp TMP = $1024 int
scoreboard players operation $26_boss_hp TMP -= $26_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $26 BossHP -= $26_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
effect give @s instant_damage 1 200
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $26 BossHP matches ..0 run kill @s
##bossのAI
execute at @s run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/_ai/main
##もしredstoneより下なら即死
function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/_ai/under_check
    ##healing
        execute if entity @a[scores={TwentysixBossSkill=100},tag=BossBattle26] at @s run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/healing/main
    ##風の槍
        execute if entity @a[scores={TwentysixBossSkill=143},tag=BossBattle26] at @s run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/spire/main
    ##暴風（地形変更）
        execute if entity @a[scores={TwentysixBossSkill=139},tag=BossBattle26] as @a[tag=BossBattle26] at @s run playsound block.note_block.harp master @s ~ ~ ~ 2 1
        execute if entity @a[scores={TwentysixBossSkill=149},tag=BossBattle26] as @a[tag=BossBattle26] at @s run playsound block.note_block.harp master @s ~ ~ ~ 2 1
        execute if entity @a[scores={TwentysixBossSkill=159},tag=BossBattle26] as @a[tag=BossBattle26] at @s run playsound block.note_block.harp master @s ~ ~ ~ 2 1
        execute if entity @a[scores={TwentysixBossSkill=179},tag=BossBattle26] at @s run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/change_island/main
    ##乱数行動
        execute if entity @a[scores={TwentysixBossSkill=247},tag=BossBattle26] run scoreboard players set @s MK.r.RandValue 3
        execute if entity @a[scores={TwentysixBossSkill=247},tag=BossBattle26] run function mikatanlib:rand/rand_exe
        execute if entity @a[scores={TwentysixBossSkill=247},tag=BossBattle26] if score @s MK.r.RandValue matches 0 at @s run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/rand/0/main
        execute if entity @a[scores={TwentysixBossSkill=247},tag=BossBattle26] if score @s MK.r.RandValue matches 1 at @s run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/rand/1/main
        execute if entity @a[scores={TwentysixBossSkill=247},tag=BossBattle26] if score @s MK.r.RandValue matches 2 at @s run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/rand/2/main
    ##重力波
        execute if entity @a[scores={TwentysixBossSkill=269},tag=BossBattle26] at @s run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/gravity/main


    ##mainloop 1 再帰
    execute if entity @a[scores={TwentysixBossSkill=293..}] run scoreboard players set @a TwentysixBossSkill 0

    

##mainloop 2 skill 1

    ##時間加速
        execute if entity @a[scores={TwentysixBossSkill2=130},tag=BossBattle26] if predicate mikatanserver:chance/0.5 at @s run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/return_score/main

    ##精霊の源
        execute if entity @a[scores={TwentysixBossSkill2=250},tag=BossBattle26] at @s run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/power_up/main
    ##強化解除
        execute if entity @a[scores={TwentysixBossSkill2=350},tag=BossBattle26] at @s run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/power_up/delete

    execute if entity @a[scores={TwentysixBossSkill2=425..}] run scoreboard players set @a TwentysixBossSkill2 0