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

    ##コーダ
        execute if entity @a[scores={season2BossSkill=50},tag=BossBattleseason2] if predicate mikatanserver:chance/0.30 run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/coda/main
    ##healing
        execute if entity @a[scores={season2BossSkill=100},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/healing/main
    ##コーダ
        execute if entity @a[scores={season2BossSkill=105},tag=BossBattleseason2] if predicate mikatanserver:chance/0.30 run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/coda/main
    ##デクレッシェンド or クレッシェンド
        execute if entity @a[scores={season2BossSkill=124},tag=BossBattleseason2] at @s run scoreboard players set @s MK.r.RandValue 2
        execute if entity @a[scores={season2BossSkill=124},tag=BossBattleseason2] at @s run function mikatanlib:rand/rand_exe
        execute if entity @a[scores={season2BossSkill=124},tag=BossBattleseason2] at @s if score @s MK.r.RandValue matches 0 run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/decrescendo/main
        execute if entity @a[scores={season2BossSkill=124},tag=BossBattleseason2] at @s if score @s MK.r.RandValue matches 1 run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/crescendo/main
    ##コーダ
        execute if entity @a[scores={season2BossSkill=146},tag=BossBattleseason2] if predicate mikatanserver:chance/0.30 run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/coda/main
    ##ペザンテ
        execute if entity @a[scores={season2BossSkill=205},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/pesante/main
    ##グランディオーソ
        execute if entity @a[scores={season2BossSkill=267},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/grandioso/main
    ##mainloop 1 再帰
    execute if entity @a[scores={season2BossSkill=293..}] run scoreboard players set @a season2BossSkill 0

    ##フェルマータ(難易度3のphase2のみ)
        execute if entity @a[scores={season2BossSkill2=172},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/fermate/before
        execute if entity @a[scores={season2BossSkill2=192..212},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/fermate/main
        execute if entity @a[scores={season2BossSkill2=212},tag=BossBattleseason2] at @s run data merge entity @s {NoAI:false}
        execute if entity @a[scores={season2BossSkill2=212},tag=BossBattleseason2] at @s run playsound block.glass.break master @s ~ ~ ~ 1 1.4
    ##コン・フオーコ
        execute if entity @a[scores={season2BossSkill2=307},tag=BossBattleseason2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/con_fuoco/main
        execute if entity @a[scores={season2BossSkill2=310..370},tag=BossBattleseason2] as @e[tag=season2_Con] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/con_fuoco/particle
        execute if entity @a[scores={season2BossSkill2=370},tag=BossBattleseason2] as @e[tag=season2_Con] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/con_fuoco/bomb
        execute if entity @a[scores={season2BossSkill2=370},tag=BossBattleseason2] as @a[tag=DungeonPlay_season2] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 2
    ##mainloop 2 再帰
    execute if entity @a[scores={season2BossSkill2=425..}] run scoreboard players set @a season2BossSkill2 0


##移動スコアの変更
scoreboard players reset @a season2BossWalk 
scoreboard players reset @a season2BossDush 