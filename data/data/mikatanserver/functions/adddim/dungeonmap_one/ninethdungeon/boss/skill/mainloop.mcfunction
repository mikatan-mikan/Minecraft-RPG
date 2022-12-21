tag @a[tag=DungeonPlay_9,tag=!BossBattle9] add BossBattle9
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle9] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle9] resistance
    ##healing
        execute if entity @a[scores={NineBossSkill=100},tag=BossBattle9] as @e[tag=NinethDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/healing/main
    ##前に突進
        execute if entity @a[scores={NineBossSkill2=137},tag=BossBattle9,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rush_forward/main
    ##blind & absorption & strength
        #乱数
            execute if entity @a[scores={NineBossSkill=172},tag=BossBattle9,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={NineBossSkill=172},tag=BossBattle9,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [blind]
            execute if entity @a[scores={NineBossSkill=173},tag=BossBattle9] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rand_pattern_1/blind/main
        #乱数==1        [absorption]
            execute if entity @a[scores={NineBossSkill=173},tag=BossBattle9] if entity @s[scores={MK.r.RandValue=1}] run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rand_pattern_1/absorption/main
        #乱数==2        [strength]
            execute if entity @a[scores={NineBossSkill=173},tag=BossBattle9] if entity @s[scores={MK.r.RandValue=2}] run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rand_pattern_1/strength/main
    ##summon
        execute if entity @a[scores={NineBossSkill=230},tag=BossBattle9,limit=1] as @e[tag=NinethDunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={NineBossSkill=230},tag=BossBattle9,limit=1] run tellraw @a[tag=DungeonPlay_9] [{"text": "Michelle>>","color": "gold"},{"text": "召喚：戦士","color": "#FFCCCC"}]
        execute if entity @a[scores={NineBossSkill=230},tag=BossBattle9,limit=1] as @a[tag=DungeonPlay_9] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
        #乱数
            execute if entity @a[scores={NineBossSkill=230},tag=BossBattle9,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={NineBossSkill=230},tag=BossBattle9,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [剣士(男)]
            execute if entity @a[scores={NineBossSkill=231},tag=BossBattle9] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rand_pattern_2/summon/male
        #乱数==1        [ゴーレム]
            execute if entity @a[scores={NineBossSkill=231},tag=BossBattle9] if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rand_pattern_2/summon/golem
        #乱数==2        [剣士(女)]
            execute if entity @a[scores={NineBossSkill=231},tag=BossBattle9] if entity @s[scores={MK.r.RandValue=2}] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rand_pattern_2/summon/female
        


    ##mainloop 1 再帰
    execute if entity @a[scores={NineBossSkill=293..}] run scoreboard players set @a NineBossSkill 0

    

##mainloop 2 skill 1
    ##前に突進
        execute if entity @a[scores={NineBossSkill2=84},tag=BossBattle9,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rush_forward/main
    ##剣雨＆風律剣
        #乱数
        execute if entity @a[scores={NineBossSkill2=124},tag=BossBattle9,limit=1] run scoreboard players set @s MK.r.RandValue 2
        execute if entity @a[scores={NineBossSkill2=124},tag=BossBattle9,limit=1] if entity @s[scores={MK.r.RandValue=2}] run function mikatanlib:rand/rand_exe
        #発動(乱数0)    [剣雨]
        execute if entity @a[scores={NineBossSkill2=126},tag=BossBattle9] if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rainsword/main
        execute if entity @e[scores={NineBossSkill2=126..270},tag=BossBattle9] as @e[tag=RainSwordAr] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rainsword/damage_kill
        #発動(乱数1)    [風律剣]
        execute if entity @a[scores={NineBossSkill2=126},tag=BossBattle9] if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/windsword/main
        execute if entity @e[scores={NineBossSkill2=126..150},tag=BossBattle9] as @e[tag=WindSwordAr] at @s positioned ~ ~1 ~ run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/windsword/damage_kill
        execute if entity @e[scores={NineBossSkill2=155},tag=BossBattle9] as @e[tag=WindSwordAr] at @s run kill @s
    
    ##前に突進
        execute if entity @a[scores={NineBossSkill2=340},tag=BossBattle9,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rush_forward/main

    ##前に突進
        execute if entity @a[scores={NineBossSkill2=483},tag=BossBattle9,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rush_forward/main

    ##剣舞
        execute if entity @a[scores={NineBossSkill2=500..600},tag=BossBattle9] run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/sword/main

        execute if entity @a[scores={NineBossSkill2=500..600},tag=BossBattle9] run effect give @s glowing 100 1 true

    execute if entity @a[scores={NineBossSkill2=675..}] run scoreboard players set @a NineBossSkill2 0