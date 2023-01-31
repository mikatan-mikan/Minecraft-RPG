tag @a[tag=DungeonPlay_season2,tag=!BossBattleseason2] add BossBattleseason2
execute if score $season2 BossHP matches ..300 run clear @a[tag=BossBattleseason2] #boats
execute if score $season2 BossHP matches ..300 run effect clear @a[tag=BossBattleseason2] resistance
##bossの現在HPをgetする
execute store result score $boss_hp season2_boss_hp_checker run data get entity @e[tag=season2DunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $season2_boss_hp TMP = $1024 int
scoreboard players operation $season2_boss_hp TMP -= $boss_hp season2_boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $season2 BossHP -= $season2_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $season2 BossHP matches ..0 run kill @s
    ##healing
        execute if entity @a[scores={season2BossSkill=100},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/2/skill/healing/main
    ##衝撃波のようなもの
        ##10m-
            execute if entity @a[scores={season2BossSkill=170},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/2/skill/dmg_circle/main
        ##season2m-
            execute if entity @a[scores={season2BossSkill=210},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/2/skill/dmg_circle/main_2
    ##healing
        execute if score $season2 BossHP matches ..256 if predicate mikatanserver:chance/0.5 if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/2/skill/healing/main
    ##召喚
        #乱数
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 run function mikatanlib:rand/rand_exe
        #乱数==0        [pigman]
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/2/skill/rand_pattern_2/enderman/main
        #乱数==1        [clear effect]
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/2/skill/rand_pattern_2/effect/main

    ##プレイヤーを打ち上げる
        execute if entity @a[scores={season2BossSkill=280},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/2/skill/jump_player/main_2

    ##mainloop 1 再帰
    execute if entity @a[scores={season2BossSkill=303..}] run scoreboard players set @a season2BossSkill 0

    

##mainloop 2 skill 1

    ##固定召喚(プレイヤーに対して、ウィザスケ召喚)
        execute as @a[scores={season2BossSkill2=125},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/2/skill/summon_wither/main

    ##起爆(1,2)
        execute if entity @a[scores={season2BossSkill2=165},tag=BossBattleseason2] run function mikatanserver:adddim/dungeon_season/season2dungeon/2/skill/bomb1/main
        execute if entity @a[scores={season2BossSkill2=185},tag=BossBattleseason2] in mikatanserver:dungeon positioned 109.5 124.0 474.5 run function mikatanserver:adddim/dungeon_season/season2dungeon/2/skill/bomb2/main

    execute if entity @a[scores={season2BossSkill2=220..}] run scoreboard players set @a season2BossSkill2 0