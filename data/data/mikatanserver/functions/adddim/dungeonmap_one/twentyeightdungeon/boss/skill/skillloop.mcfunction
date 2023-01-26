tag @a[tag=DungeonPlay_28,tag=!BossBattle28] add BossBattle28
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle28] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle28] resistance

##bossの現在HPをgetする
execute store result score $28_boss_hp boss_hp_checker run data get entity @e[tag=TwentyeightDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $28_boss_hp TMP = $1024 int
scoreboard players operation $28_boss_hp TMP -= $28_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $28 BossHP -= $28_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $28 BossHP matches ..0 run kill @s

    ##healing
        execute if entity @a[scores={TwentyeightBossSkill=100},tag=BossBattle28] as @e[tag=TwentyeightDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/healing/main
    ##summon
        execute if entity @a[scores={TwentyeightBossSkill=230},tag=BossBattle28,limit=1] as @e[tag=TwentyeightDunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={TwentyeightBossSkill=230},tag=BossBattle28,limit=1] run tellraw @a[tag=DungeonPlay_28] [{"text": "Dream Eater>>","color": "red"},{"text": "召喚：眷属","color": "red"}]
        execute if entity @a[scores={TwentyeightBossSkill=230},tag=BossBattle28,limit=1] as @a[tag=DungeonPlay_28] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
        #乱数
            execute if entity @a[scores={TwentyeightBossSkill=230},tag=BossBattle28,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={TwentyeightBossSkill=230},tag=BossBattle28,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [mic]
            execute if entity @a[scores={TwentyeightBossSkill=231},tag=BossBattle28] if entity @s[scores={MK.r.RandValue=0}] as @a[tag=BossBattle28] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/summon/mic
        #乱数==1        [skeleton]
            execute if entity @a[scores={TwentyeightBossSkill=231},tag=BossBattle28] if entity @s[scores={MK.r.RandValue=1}] as @a[tag=BossBattle28] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/summon/skeleton
        #乱数==2        [silverfish]
            execute if entity @a[scores={TwentyeightBossSkill=231},tag=BossBattle28] if entity @s[scores={MK.r.RandValue=2}] as @a[tag=BossBattle28] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/summon/silverfish
    ##clear effect & damage
            execute if entity @a[scores={TwentyeightBossSkill=282},tag=BossBattle28] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/clear_effect/main
        


    ##mainloop 1 再帰
    execute if entity @a[scores={TwentyeightBossSkill=303..}] run scoreboard players set @a TwentyeightBossSkill 0

    

##mainloop 2 skill 1

    ##磔
        execute if entity @a[scores={TwentyeightBossSkill2=148},tag=BossBattle28] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/stop/main

    ##3swap + 最終ボス地点を爆破する
        execute if entity @a[scores={TwentyeightBossSkill2=300},tag=BossBattle28,limit=1] run tellraw @a[tag=DungeonPlay_28] [{"text": "Dream Eater>>","color": "red"},{"text": "書き換え","color": "yellow"}]
        execute if entity @a[scores={TwentyeightBossSkill2=300},tag=BossBattle28] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/write/main
        execute if score $28_Difficulty Temporary matches 1 if entity @a[scores={TwentyeightBossSkill2=328},tag=BossBattle28] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/write/main
        execute if score $28_Difficulty Temporary matches 1 if entity @a[scores={TwentyeightBossSkill2=340},tag=BossBattle28] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/write/main
        execute if entity @a[scores={TwentyeightBossSkill2=360},tag=BossBattle28] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/write/explode

    ##剣舞
        execute if entity @a[scores={TwentyeightBossSkill2=500},tag=BossBattle28] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/arrow/main
        execute if entity @a[scores={TwentyeightBossSkill2=600},tag=BossBattle28] run scoreboard players set @s SpecialSkillTimer 0

        execute if entity @a[scores={TwentyeightBossSkill2=500..548},tag=BossBattle28] run effect give @s glowing 100 1 true

    execute if entity @a[scores={TwentyeightBossSkill2=633..}] run scoreboard players set @a TwentyeightBossSkill2 0