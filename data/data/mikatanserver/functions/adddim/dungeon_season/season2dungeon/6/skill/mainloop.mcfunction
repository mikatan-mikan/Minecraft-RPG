tag @a[tag=DungeonPlay_season2,tag=!BossBattleseason2] add BossBattleseason2
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattleseason2] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattleseason2] resistance

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
        execute if entity @a[scores={season2BossSkill=100},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/healing/main
    ##summon
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] as @e[tag=season2DunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run tellraw @a[tag=DungeonPlay_season2] [{"text": "Maiden Valkyrie>>","color": "red"},{"text": "召喚：同志","color": "#AAFF11"}]
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] as @a[tag=DungeonPlay_season2] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
        #乱数
            execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [mic]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=0}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/summon/mic
        #乱数==1        [skeleton]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=1}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/summon/skeleton
        #乱数==2        [silverfish]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=2}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/summon/silverfish
    ##clear effect & damage
            execute if entity @a[scores={season2BossSkill=282},tag=BossBattleseason2] run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/clear_effect/main
        


    ##mainloop 1 再帰
    execute if entity @a[scores={season2BossSkill=303..}] run scoreboard players set @a season2BossSkill 0

    

##mainloop 2 skill 1

    ##swap
        execute if entity @a[scores={season2BossSkill2=148},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/swap/main

    ##3cnt + explode
        execute if entity @a[scores={season2BossSkill2=300},tag=BossBattleseason2,limit=1] run tellraw @a[tag=DungeonPlay_season2] [{"text": "Maiden Valkyrie>>","color": "red"},{"text": "生贄","color": "yellow"}]
        execute if entity @a[scores={season2BossSkill2=300},tag=BossBattleseason2] run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/after_bomb/main
        execute if entity @a[scores={season2BossSkill2=320},tag=BossBattleseason2] run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/after_bomb/main
        execute if entity @a[scores={season2BossSkill2=340},tag=BossBattleseason2] run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/after_bomb/main
        execute if entity @a[scores={season2BossSkill2=360},tag=BossBattleseason2] run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/after_bomb/explode

    ##剣舞
        execute if entity @a[scores={season2BossSkill2=500..548},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/main

        execute if entity @a[scores={season2BossSkill2=500..548},tag=BossBattleseason2] run effect give @s glowing 100 1 true

    execute if entity @a[scores={season2BossSkill2=633..}] run scoreboard players set @a season2BossSkill2 0