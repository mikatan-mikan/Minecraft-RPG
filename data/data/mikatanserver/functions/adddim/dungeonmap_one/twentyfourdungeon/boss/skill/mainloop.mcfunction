
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle24] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle24] resistance
##bossの現在HPをgetする
execute store result score $24_boss_hp boss_hp_checker run data get entity @e[tag=TwentyfourDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $24_boss_hp TMP = $1024 int
scoreboard players operation $24_boss_hp TMP -= $24_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $24 BossHP -= $24_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
effect give @s instant_damage 1 200
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $24 BossHP matches ..0 run kill @s
##phase移行
execute if score $diff TwentyfourBossSkill matches 3 if score $24 BossHP < $24_4 BossHP if entity @s[tag=!Phase2] in mikatanserver:dungeon run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/_phase/to_2

    ##コーダ
        execute if entity @a[scores={TwentyfourBossSkill=50},tag=BossBattle24] if predicate mikatanserver:chance/0.30 run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/coda/main
    ##healing
        execute if entity @a[scores={TwentyfourBossSkill=100},tag=BossBattle24] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/healing/main
    ##コーダ
        execute if entity @a[scores={TwentyfourBossSkill=105},tag=BossBattle24] if predicate mikatanserver:chance/0.30 run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/coda/main
    ##デクレッシェンド or クレッシェンド
        execute if entity @a[scores={TwentyfourBossSkill=124},tag=BossBattle24] at @s if score $diff TwentyfourBossSkill matches 1.. run scoreboard players set @s MK.r.RandValue 2
        execute if entity @a[scores={TwentyfourBossSkill=124},tag=BossBattle24] at @s if score $diff TwentyfourBossSkill matches 1.. run function mikatanlib:rand/rand_exe
        execute if entity @a[scores={TwentyfourBossSkill=124},tag=BossBattle24] at @s if score $diff TwentyfourBossSkill matches 1.. if score @s MK.r.RandValue matches 0 run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/decrescendo/main
        execute if entity @a[scores={TwentyfourBossSkill=124},tag=BossBattle24] at @s if score $diff TwentyfourBossSkill matches 1.. if score @s MK.r.RandValue matches 1 run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/crescendo/main
    ##コーダ
        execute if entity @a[scores={TwentyfourBossSkill=146},tag=BossBattle24] if predicate mikatanserver:chance/0.30 run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/coda/main
    ##ペザンテ
        execute if entity @a[scores={TwentyfourBossSkill=205},tag=BossBattle24] if score $diff TwentyfourBossSkill matches 2.. at @s run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/pesante/main
    ##グランディオーソ
        execute if entity @a[scores={TwentyfourBossSkill=267},tag=BossBattle24] if score $diff TwentyfourBossSkill matches 1.. at @s run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/grandioso/main
    ##mainloop 1 再帰
    execute if entity @a[scores={TwentyfourBossSkill=293..}] run scoreboard players set @a TwentyfourBossSkill 0

    ##フェルマータ(難易度3のphase2のみ)
        execute if entity @a[scores={TwentyfourBossSkill2=172},tag=BossBattle24] if entity @s[tag=Phase2] at @s if score $diff TwentyfourBossSkill matches 3 run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/fermate/before
        execute if entity @a[scores={TwentyfourBossSkill2=192..212},tag=BossBattle24] if entity @s[tag=Phase2] at @s if score $diff TwentyfourBossSkill matches 3 run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/fermate/main
        execute if entity @a[scores={TwentyfourBossSkill2=212},tag=BossBattle24] if entity @s[tag=Phase2] at @s if score $diff TwentyfourBossSkill matches 3 run data merge entity @s {NoAI:false}
        execute if entity @a[scores={TwentyfourBossSkill2=212},tag=BossBattle24] if entity @s[tag=Phase2] at @s if score $diff TwentyfourBossSkill matches 3 run playsound block.glass.break master @s ~ ~ ~ 1 1.4
    ##コン・フオーコ
        execute if entity @a[scores={TwentyfourBossSkill2=307},tag=BossBattle24] at @s if score $diff TwentyfourBossSkill matches 2.. run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/con_fuoco/main
        execute if entity @a[scores={TwentyfourBossSkill2=310..370},tag=BossBattle24] as @e[tag=Twentyfour_Con] at @s if score $diff TwentyfourBossSkill matches 2.. run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/con_fuoco/particle
        execute if entity @a[scores={TwentyfourBossSkill2=370},tag=BossBattle24] as @e[tag=Twentyfour_Con] at @s if score $diff TwentyfourBossSkill matches 2.. run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/con_fuoco/bomb
        execute if entity @a[scores={TwentyfourBossSkill2=370},tag=BossBattle24] if score $diff TwentyfourBossSkill matches 2.. as @a[tag=DungeonPlay_24] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 2
    ##mainloop 2 再帰
    execute if entity @a[scores={TwentyfourBossSkill2=425..}] run scoreboard players set @a TwentyfourBossSkill2 0


##移動スコアの変更
scoreboard players reset @a TwentyfourBossWalk 
scoreboard players reset @a TwentyfourBossDush 