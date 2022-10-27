
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle21] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle21] resistance

#(skill:雷直落とし、ジャンプ不可、1.5秒おきに即時ダメージ3、ランダムtp*4+tpした場所を後に爆破)  

##bossの現在HPをgetする
execute store result score $21_boss_hp boss_hp_checker run data get entity @e[tag=TwentyoneDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $21_boss_hp TMP = $1024 int
scoreboard players operation $21_boss_hp TMP -= $21_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $21 BossHP -= $21_boss_hp TMP
##ボス本体のhpを回復させる
effect give @s instant_damage 1 200
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $21 BossHP matches ..0 run kill @s

    ##healing
        execute if entity @a[scores={TwentyoneBossSkill=100},tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/healing/main
    ##打ち上げ + 打ち落とし
        execute if entity @a[scores={TwentyoneBossSkill=133},tag=BossBattle21,limit=1] run tellraw @a[tag=DungeonPlay_21] [{"text": "The Gravity>>","color": "#515254"},{"text": "重力操作","color": "red"}]
        execute if entity @a[scores={TwentyoneBossSkill=133},tag=BossBattle21,limit=1] as @a[tag=DungeonPlay_21] at @s run playsound item.armor.equip_leather master @s ~ ~ ~ 2 0.8 1
        execute if entity @a[scores={TwentyoneBossSkill=133},tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/up_down/give_la
        execute if entity @a[scores={TwentyoneBossSkill=135},tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/up_down/give_rabbit
        #execute if entity @a[scores={TwentyoneBossSkill=1},tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/up_down/give_clear
    ##summon
        execute if entity @a[scores={TwentyoneBossSkill=230},tag=BossBattle21,limit=1] as @e[tag=TwentyoneDunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={TwentyoneBossSkill=230},tag=BossBattle21,limit=1] run tellraw @a[tag=DungeonPlay_21] [{"text": "The Gravity>>","color": "#515254"},{"text": "召喚：戦士","color": "#AAFF11"}]
        execute if entity @a[scores={TwentyoneBossSkill=230},tag=BossBattle21,limit=1] as @a[tag=DungeonPlay_21] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
        #乱数
            execute if entity @a[scores={TwentyoneBossSkill=230},tag=BossBattle21,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={TwentyoneBossSkill=230},tag=BossBattle21,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [gra_1]
            execute if entity @a[scores={TwentyoneBossSkill=231},tag=BossBattle21] if entity @s[scores={MK.r.RandValue=0}] as @a[tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/summon/gra_1
        #乱数==1        [gra_2]
            execute if entity @a[scores={TwentyoneBossSkill=231},tag=BossBattle21] if entity @s[scores={MK.r.RandValue=1}] as @a[tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/summon/gra_2
    ##clear effect & damage
            execute if entity @a[scores={TwentyoneBossSkill=282},tag=BossBattle21] run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/clear_effect/main
        


    ##mainloop 1 再帰
    execute if entity @a[scores={TwentyoneBossSkill=303..}] run scoreboard players set @a TwentyoneBossSkill 0

    

##mainloop 2 skill 1
    ##3箇所にランダムtpする
    execute if entity @a[scores={TwentyoneBossSkill2=100},tag=BossBattle21] run tellraw @a[tag=DungeonPlay_21] [{"text": "The Gravity>>","color": "#515254"},{"text": "テレポート","color": "dark_green"}]
        execute if entity @a[scores={TwentyoneBossSkill2=100},tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/tp/main
        execute if entity @a[scores={TwentyoneBossSkill2=120},tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/tp/main
        execute if entity @a[scores={TwentyoneBossSkill2=140},tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/tp/main
        execute if entity @a[scores={TwentyoneBossSkill2=160},tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/tp/main

    ##起爆
        execute if entity @a[scores={TwentyoneBossSkill2=180},tag=BossBattle21] run tellraw @a[tag=DungeonPlay_21] [{"text": "The Gravity>>","color": "#515254"},{"text": "発散","color": "gold"}]
        execute if entity @a[scores={TwentyoneBossSkill2=180},tag=BossBattle21] as @e[tag=21_FrameAr] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/bomb/main

    ##剣舞
        execute if entity @a[scores={TwentyoneBossSkill2=180},tag=BossBattle21] run tellraw @a[tag=DungeonPlay_21] [{"text": "The Gravity>>","color": "#515254"},{"text": "加重","color": "aqua"}]
        execute if entity @a[scores={TwentyoneBossSkill2=350},tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/damage_/main
        execute if entity @a[scores={TwentyoneBossSkill2=380},tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/damage_/main
        execute if entity @a[scores={TwentyoneBossSkill2=410},tag=BossBattle21] at @s run function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/skill/damage_/main

        execute if entity @a[scores={TwentyoneBossSkill2=500..548},tag=BossBattle20] run effect give @s glowing 100 1 true

    execute if entity @a[scores={TwentyoneBossSkill2=633..}] run scoreboard players set @a TwentyoneBossSkill2 0