
execute if score $25 BossHP matches ..300 run clear @a[tag=BossBattle25] #boats
execute if score $25 BossHP matches ..300 run effect clear @a[tag=BossBattle25] resistance
##bossの現在HPをgetする
execute store result score $25_boss_hp boss_hp_checker run data get entity @e[tag=TwentyfiveDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $25_boss_hp TMP = $1024 int
scoreboard players operation $25_boss_hp TMP -= $25_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $25 BossHP -= $25_boss_hp TMP
#execute unless data entity @s {Health:1024.0f} run 
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $25 BossHP matches ..0 run kill @s



##殴られたとき設置された疑似ブロックを破壊する
execute as @e[type=slime,tag=25_EffectAr_Slime] store result score @s TwentyfiveBossSkill run data get entity @s HurtTime
execute as @e[type=slime,tag=25_EffectAr_Slime,scores={TwentyfiveBossSkill=1..}] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/tp/kill_block
    
    ##衝撃波を放つ(聖杯の天言)
        execute in mikatanserver:dungeon if entity @a[scores={TwentyfiveBossSkill=73}] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/effect/main
    ##healing
        execute if entity @a[scores={TwentyfiveBossSkill=126},tag=BossBattle25] as @e[tag=TwentyfiveDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/healing/main
    ##speed
        #乱数
            execute if score @a[tag=BossBattle25,limit=1] TwentyfiveBossSkill matches 200 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattle25,limit=1] TwentyfiveBossSkill matches 200 run function mikatanlib:rand/rand_exe
        #乱数==0        [swap]
            execute if score @a[tag=BossBattle25,limit=1] TwentyfiveBossSkill matches 200 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/rand_pattern_1/swap/main
        #乱数==1        [speed](疾風)
            execute if score @a[tag=BossBattle25,limit=1] TwentyfiveBossSkill matches 200 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/rand_pattern_1/speed/main
    ##召喚
        #乱数
            execute if score @a[tag=BossBattle25,limit=1] TwentyfiveBossSkill matches 257 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattle25,limit=1] TwentyfiveBossSkill matches 257 run function mikatanlib:rand/rand_exe
        #乱数==0        [holy]
            execute if score @a[tag=BossBattle25,limit=1] TwentyfiveBossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/rand_pattern_2/holy/main
        #乱数==1        [clear effect]
            execute if score @a[tag=BossBattle25,limit=1] TwentyfiveBossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/rand_pattern_2/effect/main

    ##mainloop 1 再帰
    execute if entity @a[scores={TwentyfiveBossSkill=293..}] run scoreboard players set @a TwentyfiveBossSkill 0

    

##mainloop 2 skill 1
    ##3箇所にランダムtpし、破壊可能なオブジェクトを設置する(設置されている間ボスが強化される)
    execute if entity @a[scores={TwentyfiveBossSkill2=130},tag=BossBattle25] as @e[tag=TwentyfiveDunBoss] run tellraw @a[tag=DungeonPlay_14] [{"text": "聖杯を奪いし者>>","color": "yellow"},{"text": "テレポート","color": "dark_green"}]
        execute if entity @a[scores={TwentyfiveBossSkill2=130},tag=BossBattle25] as @e[tag=TwentyfiveDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/tp/main
        execute if entity @a[scores={TwentyfiveBossSkill2=150},tag=BossBattle25] as @e[tag=TwentyfiveDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/tp/main
        execute if entity @a[scores={TwentyfiveBossSkill2=170},tag=BossBattle25] as @e[tag=TwentyfiveDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/tp/main

    ##起爆
        execute if entity @a[scores={TwentyfiveBossSkill2=190},tag=BossBattle25] run tellraw @a[tag=DungeonPlay_25] [{"text": "聖杯を奪いし者>>","color": "yellow"},{"text": "予見","color": "#FA8072"}]
        execute if entity @a[scores={TwentyfiveBossSkill2=190},tag=BossBattle25] as @e[tag=25_FrameAr] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/bomb/main

    ##夢幻の間(未実装)
        execute if entity @a[scores={TwentyfiveBossSkill2=303},tag=BossBattle25] if entity @e[tag=25_EffectAr] at @s positioned ~ ~1.5 ~ run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/fantasy/main

    execute if entity @a[scores={TwentyfiveBossSkill2=325..}] run scoreboard players set @a TwentyfiveBossSkill2 0