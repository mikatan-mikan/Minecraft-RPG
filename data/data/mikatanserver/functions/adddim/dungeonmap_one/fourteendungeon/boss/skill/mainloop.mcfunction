tag @a[tag=DungeonPlay_14,tag=!BossBattle14] add BossBattle14
execute if score $14 BossHP matches ..300 run clear @a[tag=BossBattle14] #boats
execute if score $14 BossHP matches ..300 run effect clear @a[tag=BossBattle14] resistance
##bossの現在HPをgetする
execute store result score $boss_hp 14_boss_hp_checker run data get entity @e[tag=FourteenDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $14_boss_hp TMP = $1024 int
scoreboard players operation $14_boss_hp TMP -= $boss_hp 14_boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $14 BossHP -= $14_boss_hp TMP
#execute unless data entity @s {Health:1024.0f} run 
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
# effect give @s instant_damage 1 200
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $14 BossHP matches ..0 run kill @s
    ##healing
        execute if entity @a[scores={FourteenBossSkill=100},tag=BossBattle14] as @e[tag=FourteenDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/healing/main
        
    ##衝撃波を放つ
        execute in mikatanserver:dungeon if entity @a[scores={FourteenBossSkill=145}] at @s run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/effect/main
    ##speed
        #乱数
            execute if score @a[tag=BossBattle14,limit=1] FourteenBossSkill matches 200 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattle14,limit=1] FourteenBossSkill matches 200 run function mikatanlib:rand/rand_exe
        #乱数==1        [speed]
            execute if score @a[tag=BossBattle14,limit=1] FourteenBossSkill matches 200 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/rand_pattern_1/speed/main
    ##召喚
        #乱数
            execute if score @a[tag=BossBattle14,limit=1] FourteenBossSkill matches 257 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattle14,limit=1] FourteenBossSkill matches 257 run function mikatanlib:rand/rand_exe
        #乱数==0        [enderman]
            execute if score @a[tag=BossBattle14,limit=1] FourteenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/rand_pattern_2/enderman/main
        #乱数==1        [clear effect]
            execute if score @a[tag=BossBattle14,limit=1] FourteenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/rand_pattern_2/effect/main

    ##mainloop 1 再帰
    execute if entity @a[scores={FourteenBossSkill=293..}] run scoreboard players set @a FourteenBossSkill 0

    

##mainloop 2 skill 1
    ##3箇所にランダムtpする
    execute if entity @a[scores={FourteenBossSkill2=100},tag=BossBattle14] as @e[tag=FourteenDunBoss] run tellraw @a[tag=DungeonPlay_14] [{"text": "略奪者>>","color": "dark_purple"},{"text": "テレポート！！","color": "dark_green"}]
        execute if entity @a[scores={FourteenBossSkill2=100},tag=BossBattle14] as @e[tag=FourteenDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/tp/main
        execute if entity @a[scores={FourteenBossSkill2=120},tag=BossBattle14] as @e[tag=FourteenDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/tp/main
        execute if entity @a[scores={FourteenBossSkill2=140},tag=BossBattle14] as @e[tag=FourteenDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/tp/main

    ##起爆
        execute if entity @a[scores={FourteenBossSkill2=160},tag=BossBattle14] run tellraw @a[tag=DungeonPlay_14] [{"text": "略奪者>>","color": "dark_purple"},{"text": "ドラゴンの怒り！！","color": "gold"}]
        execute if entity @a[scores={FourteenBossSkill2=160},tag=BossBattle14] as @e[tag=14_FrameAr] at @s run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/bomb/main

    ##ドラゴンの吐息
        execute if entity @a[scores={FourteenBossSkill2=250},tag=BossBattle14] at @s positioned ~ ~1.5 ~ run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/dragon_bless/main

    execute if entity @a[scores={FourteenBossSkill2=325..}] run scoreboard players set @a FourteenBossSkill2 0