tag @a[tag=DungeonPlay_11,tag=!BossBattle11] add BossBattle11
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle11] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle11] resistance
    ##healing
        execute if entity @a[scores={ElevenBossSkill=100},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/healing/main
        
    ##衝撃波を放つ
        execute if entity @a[scores={ElevenBossSkill=115},tag=BossBattle11] run tellraw @a[tag=DungeonPlay_11] [{"text":"master satellite>>","color": "green"},{"text": "暴風","color": "blue"}]
        execute in mikatanserver:dungeon if entity @a[scores={ElevenBossSkill=115}] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/wind/main
    ##blind & speed
        #乱数
            execute if score @a[tag=BossBattle11,limit=1] ElevenBossSkill matches 200 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattle11,limit=1] ElevenBossSkill matches 200 run function mikatanlib:rand/rand_exe
        #乱数==1        [speed]
            execute if score @a[tag=BossBattle11,limit=1] ElevenBossSkill matches 200 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/rand_pattern_1/speed/main
    ##召喚
        #乱数
            execute if score @a[tag=BossBattle11,limit=1] ElevenBossSkill matches 257 run scoreboard players set @s MK.r.RandValue 2
            execute if score @a[tag=BossBattle11,limit=1] ElevenBossSkill matches 257 run function mikatanlib:rand/rand_exe
        #乱数==0        [wither skelton]
            execute if score @a[tag=BossBattle11,limit=1] ElevenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=0}] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/rand_pattern_2/wither_skelton/main
        #乱数==1        [clear effect]
            execute if score @a[tag=BossBattle11,limit=1] ElevenBossSkill matches 257 if entity @s[scores={MK.r.RandValue=1}] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/rand_pattern_2/effect/main

    ##mainloop 1 再帰
    execute if entity @a[scores={ElevenBossSkill=293..}] run scoreboard players set @a ElevenBossSkill 0

    

##mainloop 2 skill 1
    ##8方向に矢を放つ
        ##方角取得
        execute if entity @a[scores={ElevenBossSkill2=100..120},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s facing entity @p eyes run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/main

    ##矢を起爆
        execute in mikatanserver:dungeon if entity @a[scores={ElevenBossSkill2=215}] run tellraw @a[tag=DungeonPlay_11] [{"text": "master satellite>>","color": "green"},{"text": "竜巻！！","color": "gold"}]
        execute in mikatanserver:dungeon if entity @a[scores={ElevenBossSkill2=215}] as @e[type=arrow,tag=EBthroughArrowAr] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/imp/main

    execute if entity @a[scores={ElevenBossSkill2=325..}] run scoreboard players set @a ElevenBossSkill2 0