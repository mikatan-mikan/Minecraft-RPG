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
        execute if entity @a[scores={season2BossSkill=100},tag=BossBattleseason2] as @e[tag=season2DunBoss] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/healing/main
    ##前に突進
        execute if entity @a[scores={season2BossSkill2=137},tag=BossBattleseason2,limit=1] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rush_forward/main
    ##blind & absorption & strength
        #乱数
            execute if entity @a[scores={season2BossSkill=172},tag=BossBattleseason2,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={season2BossSkill=172},tag=BossBattleseason2,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [blind]
            execute if entity @a[scores={season2BossSkill=173},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rand_pattern_1/blind/main
        #乱数==1        [absorption]
            execute if entity @a[scores={season2BossSkill=173},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=1}] run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rand_pattern_1/absorption/main
        #乱数==2        [strength]
            execute if entity @a[scores={season2BossSkill=173},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=2}] run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rand_pattern_1/strength/main
    ##summon
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] as @e[tag=season2DunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run tellraw @a[tag=DungeonPlay_season2] [{"text": "Michelle>>","color": "gold"},{"text": "召喚：戦士","color": "#FFCCCC"}]
        execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] as @a[tag=DungeonPlay_season2] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
        #乱数
            execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run scoreboard players set @s MK.r.RandValue 4
            execute if entity @a[scores={season2BossSkill=230},tag=BossBattleseason2,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [剣士(男)]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=0}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rand_pattern_2/summon/male
        #乱数==1        [ゴーレム]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=1}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rand_pattern_2/summon/golem
        #乱数==2        [剣士(女)]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=2}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rand_pattern_2/summon/female
        #乱数==3        [masic witch]
            execute if entity @a[scores={season2BossSkill=231},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=3}] as @a[tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rand_pattern_2/summon/witch
            ##masic            
            execute if entity @a[scores={season2BossSkill=20},tag=BossBattleseason2] as @e[tag=season2Dun_Witch] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rand_pattern_2/summon/masic/before_particle
            execute if entity @a[scores={season2BossSkill=40},tag=BossBattleseason2] as @e[tag=season2Dun_Witch] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rand_pattern_2/summon/masic/main
        


    ##mainloop 1 再帰
    execute if entity @a[scores={season2BossSkill=293..}] run scoreboard players set @a season2BossSkill 0

    

##mainloop 2 skill 1
    ##前に突進
        execute if entity @a[scores={season2BossSkill2=84},tag=BossBattleseason2,limit=1] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rush_forward/main
    ##剣雨＆風律剣
        #乱数
        execute if entity @a[scores={season2BossSkill2=124},tag=BossBattleseason2,limit=1] run scoreboard players set @s MK.r.RandValue 2
        execute if entity @a[scores={season2BossSkill2=124},tag=BossBattleseason2,limit=1] if entity @s[scores={MK.r.RandValue=2}] run function mikatanlib:rand/rand_exe
        #発動(乱数0)    [剣雨]
        execute if entity @a[scores={season2BossSkill2=126},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rainsword/main
        execute if entity @e[scores={season2BossSkill2=126..270},tag=BossBattleseason2] as @e[tag=RainSwordAr] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rainsword/damage_kill
        #発動(乱数1)    [風律剣]
        execute if entity @a[scores={season2BossSkill2=126},tag=BossBattleseason2] if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/windsword/main
        execute if entity @e[scores={season2BossSkill2=126..150},tag=BossBattleseason2] as @e[tag=WindSwordAr] at @s positioned ~ ~1 ~ run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/windsword/damage_kill
        execute if entity @e[scores={season2BossSkill2=155},tag=BossBattleseason2] as @e[tag=WindSwordAr] at @s run kill @s
    
    ##前に突進
        execute if entity @a[scores={season2BossSkill2=340},tag=BossBattleseason2,limit=1] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rush_forward/main

    ##前に突進
        execute if entity @a[scores={season2BossSkill2=483},tag=BossBattleseason2,limit=1] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rush_forward/main

    ##剣舞
        execute if entity @a[scores={season2BossSkill2=500..660},tag=BossBattleseason2] run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/sword/main

        execute if entity @a[scores={season2BossSkill2=500..660},tag=BossBattleseason2] run effect give @s glowing 100 1 true

    execute if entity @a[scores={season2BossSkill2=685..}] run scoreboard players set @a season2BossSkill2 0