
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle18] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle18] resistance

##bossの現在HPをgetする
execute store result score $18_boss_hp_god boss_hp_checker run data get entity @e[tag=Eightteen_Goddess,limit=1] Health
execute store result score $18_boss_hp_venus boss_hp_checker run data get entity @e[tag=Eightteen_Venus,limit=1] Health
##減ったhpを検知する
scoreboard players operation $18_boss_hp_god TMP = $1024 int
scoreboard players operation $18_boss_hp_venus TMP = $1024 int
scoreboard players operation $18_boss_hp_god TMP -= $18_boss_hp_god boss_hp_checker
scoreboard players operation $18_boss_hp_venus TMP -= $18_boss_hp_venus boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $18 BossHP -= $18_boss_hp_god TMP
scoreboard players operation $18 BossHP -= $18_boss_hp_venus TMP
##ボス本体のhpを回復させる
effect give @e[tag=EightteenDunBoss] instant_damage 1 200
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $18 BossHP matches ..0 run kill @e[tag=EightteenDunBoss]
    ##healing
        execute if entity @a[scores={EightteenBossSkill=100},tag=BossBattle18] as @e[tag=EightteenDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/healing/main
    ##前に突進
        execute if entity @a[scores={EightteenBossSkill2=137},tag=BossBattle18,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rush_forward/main
    ##blind & speed & hunger
        #乱数
            execute if entity @a[scores={EightteenBossSkill=172},tag=BossBattle18,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={EightteenBossSkill=172},tag=BossBattle18,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [blind]
            execute if entity @a[scores={EightteenBossSkill=173},tag=BossBattle18] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rand_pattern_1/blind/main
        #乱数==1        [speed]
            execute if entity @a[scores={EightteenBossSkill=173},tag=BossBattle18] if entity @s[scores={MK.r.RandValue=1}] run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rand_pattern_1/absorption/main
        #乱数==2        [hunger]
            execute if entity @a[scores={EightteenBossSkill=173},tag=BossBattle18] if entity @s[scores={MK.r.RandValue=2}] run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rand_pattern_1/strength/main
    ##summon
        execute if entity @a[scores={EightteenBossSkill=230},tag=BossBattle18,limit=1] as @e[tag=EightteenDunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={EightteenBossSkill=230},tag=BossBattle18,limit=1] run tellraw @a[tag=DungeonPlay_18] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "召喚：神官","color": "#FFCCCC"}]
        execute if entity @a[scores={EightteenBossSkill=230},tag=BossBattle18,limit=1] as @a[tag=DungeonPlay_18] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
        #乱数
            execute if entity @a[scores={EightteenBossSkill=230},tag=BossBattle18,limit=1] run scoreboard players set @s MK.r.RandValue 4
            execute if entity @a[scores={EightteenBossSkill=230},tag=BossBattle18,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [zombie]
            execute if entity @a[scores={EightteenBossSkill=231},tag=BossBattle18] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rand_pattern_2/summon/zombie
        #乱数==1        [skeleton]
            execute if entity @a[scores={EightteenBossSkill=231},tag=BossBattle18] if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rand_pattern_2/summon/skeleton
        #乱数==2        [zombie golem]
            execute if entity @a[scores={EightteenBossSkill=231},tag=BossBattle18] if entity @s[scores={MK.r.RandValue=2}] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rand_pattern_2/summon/golem
        #乱数==3        [masic witch]
            execute if entity @a[scores={EightteenBossSkill=231},tag=BossBattle18] if entity @s[scores={MK.r.RandValue=3}] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rand_pattern_2/summon/witch
            ##masic            
            execute if entity @a[scores={EightteenBossSkill=20},tag=BossBattle18] as @e[tag=EightteenDun_Witch] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rand_pattern_2/summon/masic/before_particle
            execute if entity @a[scores={EightteenBossSkill=40},tag=BossBattle18] as @e[tag=EightteenDun_Witch] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rand_pattern_2/summon/masic/main
        #乱数==4        [hardend zombie]
            execute if entity @a[scores={EightteenBossSkill=231},tag=BossBattle18] if entity @s[scores={MK.r.RandValue=4}] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rand_pattern_2/summon/hardend_zombie
        #乱数==5        [guardian]
            execute if entity @a[scores={EightteenBossSkill=231},tag=BossBattle18] if entity @s[scores={MK.r.RandValue=5}] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rand_pattern_2/summon/guardian
        


    ##mainloop 1 再帰
    execute if entity @a[scores={EightteenBossSkill=293..}] run scoreboard players set @a EightteenBossSkill 0

    

##mainloop 2 skill 1
    ##前に突進
        execute if entity @a[scores={EightteenBossSkill2=84},tag=BossBattle18,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rush_forward/main
    ##フローズンmasic＆風masic
        #乱数
        execute if entity @a[scores={EightteenBossSkill2=124},tag=BossBattle18,limit=1] run scoreboard players set @s MK.r.RandValue 2
        execute if entity @a[scores={EightteenBossSkill2=124},tag=BossBattle18,limit=1] if entity @s[scores={MK.r.RandValue=2}] run function mikatanlib:rand/rand_exe
        #発動(乱数0)    [frozen(鈍足付与3 + 継続ダメージ(毒5 3s) + 採掘低下1)]
        execute if entity @a[scores={EightteenBossSkill2=126},tag=BossBattle18] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/frozen/main
        #発動(乱数1)    [wind(プレイヤーの方角をrandom変更)]
        execute if entity @a[scores={EightteenBossSkill2=126},tag=BossBattle18] if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/wind/main
    
    ##前に突進
        execute if entity @a[scores={EightteenBossSkill2=340},tag=BossBattle18,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rush_forward/main

    ##前に突進
        execute if entity @a[scores={EightteenBossSkill2=483},tag=BossBattle18,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/rush_forward/main

    ##剣舞
        execute if entity @a[scores={EightteenBossSkill2=500..660},tag=BossBattle18] run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/sword/main

        execute if entity @a[scores={EightteenBossSkill2=500..660},tag=BossBattle18] run effect give @s glowing 100 1 true

    execute if entity @a[scores={EightteenBossSkill2=685..}] run scoreboard players set @a EightteenBossSkill2 0