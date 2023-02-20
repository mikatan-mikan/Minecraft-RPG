# tag @a[tag=DungeonPlay_33,tag=!BossBattle33] add BossBattle33 <-ラグ対策だが道中があるダンジョンなので恐らくBossBattle33がつかないくらいラグいなら鯖が落ちる
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle33] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle33] resistance

##bossの現在HPをgetする
execute store result score $33_boss_hp boss_hp_checker run data get entity @e[tag=ThirtythreeDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $33_boss_hp TMP = $1024 int
scoreboard players operation $33_boss_hp TMP -= $33_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $33 BossHP -= $33_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
# execute if score $33 BossHP matches ..0 run kill @s

    ##healing
        execute if entity @a[scores={ThirtythreeBossSkill=100},tag=BossBattle33] as @e[tag=ThirtythreeDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/healing/main
    ##ウォーターホール
        execute if entity @a[scores={ThirtythreeBossSkill=150},tag=BossBattle33] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/water_hall/main
        execute if entity @a[scores={ThirtythreeBossSkill=150..180},tag=BossBattle33] as @e[tag=WaterHallMarker,tag=ThirtythreeDunMob] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/water_hall/part_and_damage
    ##summon
        execute if entity @a[scores={ThirtythreeBossSkill=230},tag=BossBattle33,limit=1] as @e[tag=ThirtythreeDunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={ThirtythreeBossSkill=230},tag=BossBattle33,limit=1] run tellraw @a[tag=DungeonPlay_33] [{"text": "Walcrutor>>","color": "aqua"},{"text": "召喚：味方","color": "red"}]
        execute if entity @a[scores={ThirtythreeBossSkill=230},tag=BossBattle33,limit=1] as @a[tag=DungeonPlay_33] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
        #乱数
            execute if entity @a[scores={ThirtythreeBossSkill=230},tag=BossBattle33,limit=1] run scoreboard players set @s MK.r.RandValue 3
            execute if entity @a[scores={ThirtythreeBossSkill=230},tag=BossBattle33,limit=1] run function mikatanlib:rand/rand_exe
        #乱数==0        [mic]
            execute if entity @a[scores={ThirtythreeBossSkill=231},tag=BossBattle33] if entity @s[scores={MK.r.RandValue=0}] as @a[tag=BossBattle33] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/summon/mic
        #乱数==1        [skeleton]
            execute if entity @a[scores={ThirtythreeBossSkill=231},tag=BossBattle33] if entity @s[scores={MK.r.RandValue=1}] as @a[tag=BossBattle33] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/summon/skeleton
        #乱数==2        [silverfish]
            execute if entity @a[scores={ThirtythreeBossSkill=231},tag=BossBattle33] if entity @s[scores={MK.r.RandValue=2}] as @a[tag=BossBattle33] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/summon/silverfish
    ##ウォーターホール
        execute if entity @a[scores={ThirtythreeBossSkill=250},tag=BossBattle33] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/water_hall/main
        execute if entity @a[scores={ThirtythreeBossSkill=250..280},tag=BossBattle33] as @e[tag=WaterHallMarker,tag=ThirtythreeDunMob] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/water_hall/part_and_damage
    ##clear effect & damage
            execute if entity @a[scores={ThirtythreeBossSkill=332},tag=BossBattle33] run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/clear_effect/main


    ##mainloop 1 再帰
    execute if entity @a[scores={ThirtythreeBossSkill=343..}] run scoreboard players set @a ThirtythreeBossSkill 0



##mainloop 2 skill 1

    ##磔
        execute if entity @a[scores={ThirtythreeBossSkill2=200},tag=BossBattle33] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/stop/main


    ##前に波動を出す
            execute as @e[tag=BlessMarker] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/bless/move
        execute if entity @a[scores={ThirtythreeBossSkill2=300},tag=BossBattle33] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/bless/main
        execute if entity @a[scores={ThirtythreeBossSkill2=400},tag=BossBattle33] at @s run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skill/bless/main

        execute if entity @a[scores={ThirtythreeBossSkill2=500..548},tag=BossBattle33] run effect give @s glowing 100 1 true

    execute if entity @a[scores={ThirtythreeBossSkill2=433..}] run scoreboard players set @a ThirtythreeBossSkill2 0