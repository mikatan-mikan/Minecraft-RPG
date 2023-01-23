tag @a[tag=DungeonPlay_20,tag=!BossBattle20] add BossBattle20
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle20] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle20] resistance

##bossの現在HPをgetする
execute store result score $20_boss_hp boss_hp_checker run data get entity @e[tag=TwentyDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $20_boss_hp TMP = $1024 int
scoreboard players operation $20_boss_hp TMP -= $20_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $20 BossHP -= $20_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $20 BossHP matches ..0 run kill @s

    ##healing
        execute if entity @a[scores={TwentyBossSkill=100},tag=BossBattle20] as @e[tag=TwentyDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/healing/main
    ##summon
        execute if entity @a[scores={TwentyBossSkill=230},tag=BossBattle20,limit=1] as @e[tag=TwentyDunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={TwentyBossSkill=230},tag=BossBattle20,limit=1] run tellraw @a[tag=DungeonPlay_20] [{"text": "Maiden Valkyrie>>","color": "red"},{"text": "召喚：同志","color": "#AAFF11"}]
        execute if entity @a[scores={TwentyBossSkill=230},tag=BossBattle20,limit=1] as @a[tag=DungeonPlay_20] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
        #乱数
            execute if entity @a[scores={TwentyBossSkill=230},tag=BossBattle20,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={TwentyBossSkill=230},tag=BossBattle20,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [mic]
            execute if entity @a[scores={TwentyBossSkill=231},tag=BossBattle20] if entity @s[scores={MK.r.RandValue=0}] as @a[tag=BossBattle20] at @s run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/summon/mic
        #乱数==1        [skeleton]
            execute if entity @a[scores={TwentyBossSkill=231},tag=BossBattle20] if entity @s[scores={MK.r.RandValue=1}] as @a[tag=BossBattle20] at @s run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/summon/skeleton
        #乱数==2        [silverfish]
            execute if entity @a[scores={TwentyBossSkill=231},tag=BossBattle20] if entity @s[scores={MK.r.RandValue=2}] as @a[tag=BossBattle20] at @s run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/summon/silverfish
    ##clear effect & damage
            execute if entity @a[scores={TwentyBossSkill=282},tag=BossBattle20] run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/clear_effect/main
        


    ##mainloop 1 再帰
    execute if entity @a[scores={TwentyBossSkill=303..}] run scoreboard players set @a TwentyBossSkill 0

    

##mainloop 2 skill 1

    ##swap
        execute if entity @a[scores={TwentyBossSkill2=148},tag=BossBattle20] at @s run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/swap/main

    ##3cnt + explode
        execute if entity @a[scores={TwentyBossSkill2=300},tag=BossBattle20,limit=1] run tellraw @a[tag=DungeonPlay_20] [{"text": "Maiden Valkyrie>>","color": "red"},{"text": "生贄","color": "yellow"}]
        execute if entity @a[scores={TwentyBossSkill2=300},tag=BossBattle20] run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/after_bomb/main
        execute if entity @a[scores={TwentyBossSkill2=320},tag=BossBattle20] run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/after_bomb/main
        execute if entity @a[scores={TwentyBossSkill2=340},tag=BossBattle20] run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/after_bomb/main
        execute if entity @a[scores={TwentyBossSkill2=360},tag=BossBattle20] run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/after_bomb/explode

    ##剣舞
        execute if entity @a[scores={TwentyBossSkill2=500..548},tag=BossBattle20] at @s run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/sword/main

        execute if entity @a[scores={TwentyBossSkill2=500..548},tag=BossBattle20] run effect give @s glowing 100 1 true

    execute if entity @a[scores={TwentyBossSkill2=633..}] run scoreboard players set @a TwentyBossSkill2 0