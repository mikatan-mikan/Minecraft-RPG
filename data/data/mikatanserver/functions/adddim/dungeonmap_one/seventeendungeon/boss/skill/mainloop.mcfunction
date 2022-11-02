
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle17] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle17] resistance

##bossの現在HPをgetする
execute store result score $17_boss_hp boss_hp_checker run data get entity @e[tag=SeventeenDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $17_boss_hp TMP = $1024 int
scoreboard players operation $17_boss_hp TMP -= $17_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $17 BossHP -= $17_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
effect give @s instant_damage 1 200
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $17 BossHP matches ..0 run kill @s
    ##healing
        execute if entity @a[scores={SeventeenBossSkill=100},tag=BossBattle17] as @e[tag=SeventeenDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/healing/main
    ##前に突進
        execute if entity @a[scores={SeventeenBossSkill2=137},tag=BossBattle17,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rush_forward/main
    ##blind & absorption & strength
        #乱数
            execute if entity @a[scores={SeventeenBossSkill=172},tag=BossBattle17,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={SeventeenBossSkill=172},tag=BossBattle17,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [blind]
            execute if entity @a[scores={SeventeenBossSkill=173},tag=BossBattle17] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rand_pattern_1/blind/main
        #乱数==1        [absorption]
            execute if entity @a[scores={SeventeenBossSkill=173},tag=BossBattle17] if entity @s[scores={MK.r.RandValue=1}] run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rand_pattern_1/absorption/main
        #乱数==2        [strength]
            execute if entity @a[scores={SeventeenBossSkill=173},tag=BossBattle17] if entity @s[scores={MK.r.RandValue=2}] run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rand_pattern_1/strength/main
    ##summon
        execute if entity @a[scores={SeventeenBossSkill=230},tag=BossBattle17,limit=1] as @e[tag=SeventeenDunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={SeventeenBossSkill=230},tag=BossBattle17,limit=1] run tellraw @a[tag=DungeonPlay_17] [{"text": "Michelle>>","color": "gold"},{"text": "召喚：戦士","color": "#FFCCCC"}]
        execute if entity @a[scores={SeventeenBossSkill=230},tag=BossBattle17,limit=1] as @a[tag=DungeonPlay_17] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
        #乱数
            execute if entity @a[scores={SeventeenBossSkill=230},tag=BossBattle17,limit=1] run scoreboard players set @s MK.r.RandValue 4
            execute if entity @a[scores={SeventeenBossSkill=230},tag=BossBattle17,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [剣士(男)]
            execute if entity @a[scores={SeventeenBossSkill=231},tag=BossBattle17] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rand_pattern_2/summon/male
        #乱数==1        [ゴーレム]
            execute if entity @a[scores={SeventeenBossSkill=231},tag=BossBattle17] if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rand_pattern_2/summon/golem
        #乱数==2        [剣士(女)]
            execute if entity @a[scores={SeventeenBossSkill=231},tag=BossBattle17] if entity @s[scores={MK.r.RandValue=2}] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rand_pattern_2/summon/female
        #乱数==3        [masic witch]
            execute if entity @a[scores={SeventeenBossSkill=231},tag=BossBattle17] if entity @s[scores={MK.r.RandValue=3}] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rand_pattern_2/summon/witch
            ##masic            
            execute if entity @a[scores={SeventeenBossSkill=20},tag=BossBattle17] as @e[tag=SeventeenDun_Witch] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rand_pattern_2/summon/masic/before_particle
            execute if entity @a[scores={SeventeenBossSkill=40},tag=BossBattle17] as @e[tag=SeventeenDun_Witch] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rand_pattern_2/summon/masic/main
        


    ##mainloop 1 再帰
    execute if entity @a[scores={SeventeenBossSkill=293..}] run scoreboard players set @a SeventeenBossSkill 0

    

##mainloop 2 skill 1
    ##前に突進
        execute if entity @a[scores={SeventeenBossSkill2=84},tag=BossBattle17,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rush_forward/main
    ##剣雨＆風律剣
        #乱数
        execute if entity @a[scores={SeventeenBossSkill2=124},tag=BossBattle17,limit=1] run scoreboard players set @s MK.r.RandValue 2
        execute if entity @a[scores={SeventeenBossSkill2=124},tag=BossBattle17,limit=1] if entity @s[scores={MK.r.RandValue=2}] run function mikatanlib:rand/rand_exe
        #発動(乱数0)    [剣雨]
        execute if entity @a[scores={SeventeenBossSkill2=126},tag=BossBattle17] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rainsword/main
        execute if entity @e[scores={SeventeenBossSkill2=126..270},tag=BossBattle17] as @e[tag=RainSwordAr] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rainsword/damage_kill
        #発動(乱数1)    [風律剣]
        execute if entity @a[scores={SeventeenBossSkill2=126},tag=BossBattle17] if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/windsword/main
        execute if entity @e[scores={SeventeenBossSkill2=126..150},tag=BossBattle17] as @e[tag=WindSwordAr] at @s positioned ~ ~1 ~ run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/windsword/damage_kill
        execute if entity @e[scores={SeventeenBossSkill2=155},tag=BossBattle17] as @e[tag=WindSwordAr] at @s run kill @s
    
    ##前に突進
        execute if entity @a[scores={SeventeenBossSkill2=340},tag=BossBattle17,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rush_forward/main

    ##前に突進
        execute if entity @a[scores={SeventeenBossSkill2=483},tag=BossBattle17,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rush_forward/main

    ##剣舞
        execute if entity @a[scores={SeventeenBossSkill2=500..660},tag=BossBattle17] run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/sword/main

        execute if entity @a[scores={SeventeenBossSkill2=500..660},tag=BossBattle17] run effect give @s glowing 100 1 true

    execute if entity @a[scores={SeventeenBossSkill2=685..}] run scoreboard players set @a SeventeenBossSkill2 0