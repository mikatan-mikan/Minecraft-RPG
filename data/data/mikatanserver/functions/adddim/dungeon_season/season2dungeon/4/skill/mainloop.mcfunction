tag @a[tag=DungeonPlay_season2,tag=!BossBattleseason2] add BossBattleseason2
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattleseason2] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattleseason2] resistance

#(skill:雷直落とし、ジャンプ不可、1.5秒おきに即時ダメージ3、ランダムtp*4+tpした場所を後に爆破)  

##bossの現在HPをgetする
execute store result score $season2_boss_hp boss_hp_checker run data get entity @e[tag=season2DunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $season2_boss_hp TMP = $1024 int
scoreboard players operation $season2_boss_hp TMP -= $season2_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $season2 BossHP -= $season2_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $season2 BossHP matches ..0 run kill @s

    ##healing
        execute if entity @a[scores={season2BossSkill=100},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/healing/main
    ##打ち上げ + 打ち落とし
        execute if entity @a[scores={season2BossSkill=133},tag=BossBattleseason2,limit=1] run tellraw @a[tag=DungeonPlay_season2] [{"text": "The Gravity>>","color": "#515254"},{"text": "重力操作","color": "red"}]
        execute if entity @a[scores={season2BossSkill=133},tag=BossBattleseason2,limit=1] as @a[tag=DungeonPlay_season2] at @s run playsound item.armor.equip_leather master @s ~ ~ ~ 2 0.8 1
        execute if entity @a[scores={season2BossSkill=133},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/up_down/give_la
        execute if entity @a[scores={season2BossSkill=135},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/up_down/give_rabbit
        #execute if entity @a[scores={season2BossSkill=1},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/up_down/give_clear
    ##summon
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] as @e[tag=season2DunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run tellraw @a[tag=DungeonPlay_season2] [{"text": "The Gravity>>","color": "#515254"},{"text": "召喚：戦士","color": "#AAFF11"}]
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] as @a[tag=DungeonPlay_season2] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
        #乱数
            execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [gra_1]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=0}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/summon/gra_1
        #乱数==1        [gra_2]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=1}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/summon/gra_2
    ##clear effect & damage
            execute if entity @a[scores={season2BossSkill=282},tag=BossBattleseason2] run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/clear_effect/main
        


    ##mainloop 1 再帰
    execute if entity @a[scores={season2BossSkill=303..}] run scoreboard players set @a season2BossSkill 0

    

##mainloop 2 skill 1
    ##3箇所にランダムtpする
    execute if entity @a[scores={season2BossSkill2=100},tag=BossBattleseason2] run tellraw @a[tag=DungeonPlay_season2] [{"text": "The Gravity>>","color": "#515254"},{"text": "テレポート","color": "dark_green"}]
        execute if entity @a[scores={season2BossSkill2=100},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/tp/main
        execute if entity @a[scores={season2BossSkill2=120},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/tp/main
        execute if entity @a[scores={season2BossSkill2=140},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/tp/main
        execute if entity @a[scores={season2BossSkill2=160},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/tp/main

    ##起爆
        execute if entity @a[scores={season2BossSkill2=180},tag=BossBattleseason2] run tellraw @a[tag=DungeonPlay_season2] [{"text": "The Gravity>>","color": "#515254"},{"text": "発散","color": "gold"}]
        execute if entity @a[scores={season2BossSkill2=180},tag=BossBattleseason2] as @e[tag=season2_FrameAr] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/bomb/main

    ##剣舞
        execute if entity @a[scores={season2BossSkill2=180},tag=BossBattleseason2] run tellraw @a[tag=DungeonPlay_season2] [{"text": "The Gravity>>","color": "#515254"},{"text": "加重","color": "aqua"}]
        execute if entity @a[scores={season2BossSkill2=350},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/damage_/main
        execute if entity @a[scores={season2BossSkill2=380},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/damage_/main
        execute if entity @a[scores={season2BossSkill2=410},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/4/skill/damage_/main

        execute if entity @a[scores={season2BossSkill2=500..548},tag=BossBattle20] run effect give @s glowing 100 1 true

    execute if entity @a[scores={season2BossSkill2=633..}] run scoreboard players set @a season2BossSkill2 0