
execute if score $15 BossHP matches ..300 run clear @a[tag=BossBattle15] #boats
execute if score $15 BossHP matches ..300 run effect clear @a[tag=BossBattle15] resistance
##bossの現在HPをgetする
execute store result score $boss_hp 15_boss_hp_checker run data get entity @e[tag=FifteenDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $15_boss_hp TMP = $1024 int
scoreboard players operation $15_boss_hp TMP -= $boss_hp 15_boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $15 BossHP -= $15_boss_hp TMP
##ボス本体のhpを回復させる
effect give @s instant_damage 1 200
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
#execute if score $15 BossHP matches ..0 run kill @s
    ##healing
        execute if entity @a[scores={FifteenBossSkill=100},tag=BossBattle15] as @e[tag=FifteenDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/skill/healing/main
    ##衝撃波のようなもの
        ##10m-
            execute if entity @a[scores={FifteenBossSkill=170},tag=BossBattle15] at @s run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/skill/dmg_circle/main
        ##15m-
            execute if entity @a[scores={FifteenBossSkill=210},tag=BossBattle15] at @s run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/skill/dmg_circle/main_2
    ##召喚
        #乱数
            execute if score @a[tag=BossBattle15,limit=1] FifteenBossSkill matches 257 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattle15,limit=1] FifteenBossSkill matches 257 run function mikatanlib:rand/rand_exe
        #乱数==0        [pigman]
            execute if score @a[tag=BossBattle15,limit=1] FifteenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/skill/rand_pattern_2/enderman/main
        #乱数==1        [clear effect]
            execute if score @a[tag=BossBattle15,limit=1] FifteenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/skill/rand_pattern_2/effect/main

    ##プレイヤーを打ち上げる
        execute if entity @a[scores={FifteenBossSkill=280},tag=BossBattle15] at @s run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/skill/jump_player/main_2

    ##mainloop 1 再帰
    execute if entity @a[scores={FifteenBossSkill=303..}] run scoreboard players set @a FifteenBossSkill 0

    

##mainloop 2 skill 1

    ##固定召喚(プレイヤーに対して、ウィザスケ召喚)
        execute as @a[scores={FifteenBossSkill2=225},tag=BossBattle15] at @s run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/skill/summon_wither/main

    ##起爆(1,2)
        execute if entity @a[scores={FifteenBossSkill2=225},tag=BossBattle15] run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/skill/bomb1/main
        execute if entity @a[scores={FifteenBossSkill2=325},tag=BossBattle15] in mikatanserver:dungeon positioned 109.5 124.0 474.5 run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/skill/bomb2/main

    execute if entity @a[scores={FifteenBossSkill2=325..}] run scoreboard players set @a FifteenBossSkill2 0