tag @a[tag=DungeonPlay_36,tag=!BossBattle36] add BossBattle36
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle36] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle36] resistance

##bossの現在HPをgetする
execute store result score $36_boss_hp boss_hp_checker run data get entity @e[tag=ThirtysixDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $36_boss_hp TMP = $1024 int
scoreboard players operation $36_boss_hp TMP -= $36_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $36 BossHP -= $36_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $36 BossHP matches ..0 run kill @s

    execute if entity @a[scores={ThirtysixBossSkill=95},tag=BossBattle36] positioned 1353 251 -1840 run fill ~ ~ ~ ~60 ~4 ~60 air replace #anvil
    ##absolute zero
        execute if entity @a[scores={ThirtysixBossSkill=95},tag=BossBattle36] as @e[tag=ThirtysixDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/boss/skill/absolute_zero/main
    ##healing
        execute if entity @a[scores={ThirtysixBossSkill=193},tag=BossBattle36] as @e[tag=ThirtysixDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/boss/skill/absorption_heal/main
    ##absolute zero
        execute if entity @a[scores={ThirtysixBossSkill=230},tag=BossBattle36] as @e[tag=ThirtysixDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/boss/skill/penetration_attack/main


    ##mainloop 1 再帰
    execute if entity @a[scores={ThirtysixBossSkill=240..}] run scoreboard players set @a ThirtysixBossSkill 0

    

##mainloop 2 skill 1

    ##summon alies
        execute if entity @a[scores={ThirtysixBossSkill2=62},tag=BossBattle36] at @s run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/boss/skill/summon/main
    ##Long Distance Attack
        execute if entity @a[scores={ThirtysixBossSkill2=200},tag=BossBattle36] at @s run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/boss/skill/long_attack/main
    ##iron bullet
        execute if entity @a[scores={ThirtysixBossSkill2=237},tag=BossBattle36] at @s run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/boss/skill/iron_bullet/main
        execute as @e[tag=36_IronBulletAr,tag=ThirtysixDunMob] at @s anchored eyes if entity @a[distance=..1] run function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/boss/skill/iron_bullet/damage
        execute as @e[tag=36_IronBulletAr,tag=ThirtysixDunMob] run scoreboard players add @s ThirtysixBossSkill2 1
        execute as @e[tag=36_IronBulletAr,tag=ThirtysixDunMob] if score @s ThirtysixBossSkill2 matches 100.. run kill @s


    execute if entity @a[scores={ThirtysixBossSkill2=250..}] run scoreboard players set @a ThirtysixBossSkill2 0