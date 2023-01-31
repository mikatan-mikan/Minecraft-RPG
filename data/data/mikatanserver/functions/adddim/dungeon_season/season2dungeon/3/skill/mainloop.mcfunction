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
#execute unless data entity @s {Health:1024.0f} run 
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
# effect give @s instant_damage 1 200
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $season2 BossHP matches ..0 run kill @s
    ##healing
        execute if entity @a[scores={season2BossSkill=100},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/3/skill/healing/main
        
    ##衝撃波を放つ
        execute in mikatanserver:dungeon if entity @a[scores={season2BossSkill=145}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/3/skill/effect/main
    ##speed
        #乱数
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 200 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 200 run function mikatanlib:rand/rand_exe
        #乱数==1        [speed]
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 200 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/3/skill/rand_pattern_1/speed/main
    ##召喚
        #乱数
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 run function mikatanlib:rand/rand_exe
        #乱数==0        [enderman]
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/3/skill/rand_pattern_2/enderman/main
        #乱数==1        [clear effect]
            execute if score @a[tag=BossBattleseason2,limit=1] season2BossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/3/skill/rand_pattern_2/effect/main

    ##mainloop 1 再帰
    execute if entity @a[scores={season2BossSkill=293..}] run scoreboard players set @a season2BossSkill 0

    

##mainloop 2 skill 1
    ##3箇所にランダムtpする
    execute if entity @a[scores={season2BossSkill2=100},tag=BossBattleseason2] as @e[tag=season2DunBoss] run tellraw @a[tag=DungeonPlay_season2] [{"text": "略奪者>>","color": "dark_purple"},{"text": "テレポート！！","color": "dark_green"}]
        execute if entity @a[scores={season2BossSkill2=100},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/3/skill/tp/main
        execute if entity @a[scores={season2BossSkill2=120},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/3/skill/tp/main
        execute if entity @a[scores={season2BossSkill2=140},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/3/skill/tp/main

    ##起爆
        execute if entity @a[scores={season2BossSkill2=160},tag=BossBattleseason2] run tellraw @a[tag=DungeonPlay_season2] [{"text": "略奪者>>","color": "dark_purple"},{"text": "ドラゴンの怒り！！","color": "gold"}]
        execute if entity @a[scores={season2BossSkill2=160},tag=BossBattleseason2] as @e[tag=season2_FrameAr] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/3/skill/bomb/main

    ##ドラゴンの吐息
        execute if entity @a[scores={season2BossSkill2=250},tag=BossBattleseason2] at @s positioned ~ ~1.5 ~ run function mikatanserver:adddim/dungeon_season/season2dungeon/3/skill/dragon_bless/main

    execute if entity @a[scores={season2BossSkill2=325..}] run scoreboard players set @a season2BossSkill2 0