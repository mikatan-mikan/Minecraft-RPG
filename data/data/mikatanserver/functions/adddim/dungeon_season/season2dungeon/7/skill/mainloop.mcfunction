tag @a[tag=DungeonPlay_season2,tag=!BossBattleseason2] add BossBattleseason2
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattleseason2] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattleseason2] resistance

##bossの現在HPをgetする
execute store result score $season2_boss_hp_god boss_hp_checker run data get entity @e[tag=season2_Goddess,limit=1] Health
execute store result score $season2_boss_hp_venus boss_hp_checker run data get entity @e[tag=season2_Venus,limit=1] Health
##減ったhpを検知する
scoreboard players operation $season2_boss_hp_god TMP = $1024 int
scoreboard players operation $season2_boss_hp_venus TMP = $1024 int
scoreboard players operation $season2_boss_hp_god TMP -= $season2_boss_hp_god boss_hp_checker
scoreboard players operation $season2_boss_hp_venus TMP -= $season2_boss_hp_venus boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $season2 BossHP -= $season2_boss_hp_god TMP
scoreboard players operation $season2 BossHP -= $season2_boss_hp_venus TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
execute as @e[tag=season2DunBoss] run data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
# execute if score $season2 BossHP matches ..0 run kill @e[tag=season2DunBoss]
    ##healing
        execute if entity @a[scores={season2BossSkill=100},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/healing/main
    ##blind & speed & hunger
        #乱数
            execute if entity @a[scores={season2BossSkill=172},tag=BossBattleseason2,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={season2BossSkill=172},tag=BossBattleseason2,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [blind]
            execute if entity @a[scores={season2BossSkill=173},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/rand_pattern_1/blind/main
        #乱数==1        [speed]
            execute if entity @a[scores={season2BossSkill=173},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=1}] run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/rand_pattern_1/speed/main
        #乱数==2        [hunger]
            execute if entity @a[scores={season2BossSkill=173},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=2}] run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/rand_pattern_1/strength/main
    ##summon
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] as @e[tag=season2DunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run tellraw @a[tag=DungeonPlay_season2] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "召喚：神官","color": "#FFCCCC"}]
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] as @a[tag=DungeonPlay_season2] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 0.3 2 1
        #乱数
            execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run scoreboard players set @s MK.r.RandValue 4
            execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [zombie]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=0}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/rand_pattern_2/summon/zombie
        #乱数==1        [skeleton]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=1}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/rand_pattern_2/summon/skeleton
        #乱数==2        [zombie golem]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=2}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/rand_pattern_2/summon/golem
        #乱数==3        [masic witch]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=3}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/rand_pattern_2/summon/witch
            ##masic            
            execute if entity @a[scores={season2BossSkill=20},tag=BossBattleseason2] as @e[tag=season2Dun_Witch] at @s positioned ~ ~1 ~ run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/rand_pattern_2/summon/masic/before_particle
            execute if entity @a[scores={season2BossSkill=40},tag=BossBattleseason2] as @e[tag=season2Dun_Witch] at @s positioned ~ ~1 ~ run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/rand_pattern_2/summon/masic/main
        #乱数==4        [hardend zombie]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=4}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/rand_pattern_2/summon/hardend_zombie
        #乱数==5        [guardian]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=5}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/rand_pattern_2/summon/guardian
        


    ##mainloop 1 再帰
    execute if entity @a[scores={season2BossSkill=293..}] run scoreboard players set @a season2BossSkill 0

    

##mainloop 2 skill 1
    ##フローズンmasic＆風masic
        #乱数
        execute if entity @a[scores={season2BossSkill2=124},tag=BossBattleseason2,limit=1] run scoreboard players set @s MK.r.RandValue 2
        execute if entity @a[scores={season2BossSkill2=124},tag=BossBattleseason2,limit=1] if entity @s run function mikatanlib:rand/rand_exe
        #発動(乱数0)    [frozen(鈍足付与3 + 継続ダメージ(毒5 3s) + 採掘低下1)]
        execute if entity @a[scores={season2BossSkill2=126},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/frozen/main
        #発動(乱数1)    [wind(プレイヤーの方角をrandom変更)]
        execute if entity @a[scores={season2BossSkill2=126},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/wind/main
    
    ##(遠距離に対して大ダメージ)
        execute if entity @a[scores={season2BossSkill2=340},tag=BossBattleseason2,limit=1] as @a[tag=DungeonPlay_season2] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0
        execute if entity @a[scores={season2BossSkill2=340},tag=BossBattleseason2,limit=1] run tellraw @a[tag=DungeonPlay_season2] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "女神の囁き！！","color": "white"}]
        execute if entity @a[scores={season2BossSkill2=340..380},tag=BossBattleseason2,limit=1] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/big_damage/main
        execute if entity @a[scores={season2BossSkill2=380},tag=BossBattleseason2,limit=1] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/big_damage/damage

    ##(Venus:近距離に対して打ち上げ&低速落下,Goddess:近距離に対してウィザー状態15s)
        execute if entity @a[scores={season2BossSkill2=660},tag=BossBattleseason2] as @e[tag=season2_Venus] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/venus/main
        execute if entity @a[scores={season2BossSkill2=660},tag=BossBattleseason2] as @e[tag=season2_Goddess] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/goddess/main

        execute if entity @a[scores={season2BossSkill2=500},tag=BossBattleseason2] run effect give @s glowing 100 1 true

    execute if entity @a[scores={season2BossSkill2=665..}] run scoreboard players set @a season2BossSkill2 0