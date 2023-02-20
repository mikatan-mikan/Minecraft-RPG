tag @a[tag=DungeonPlay_32,tag=!BossBattle32] add BossBattle32
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle32] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle32] resistance

##bossの現在HPをgetする
execute store result score $32_boss_hp boss_hp_checker run data get entity @e[tag=ThirtytwoDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $32_boss_hp TMP = $1024 int
scoreboard players operation $32_boss_hp TMP -= $32_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $32 BossHP -= $32_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $32 BossHP matches ..0 run kill @s

    ##healing
        execute if entity @a[scores={ThirtytwoBossSkill=100},tag=BossBattle32] as @e[tag=ThirtytwoDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/boss/skill/healing/main
    ##summon
        execute if entity @a[scores={ThirtytwoBossSkill=230},tag=BossBattle32,limit=1] as @e[tag=ThirtytwoDunBoss] at @s if score @s MobNowHP matches ..400 run kill @e[distance=..50,type=boat]
        execute if entity @a[scores={ThirtytwoBossSkill=230},tag=BossBattle32,limit=1] run tellraw @a[tag=DungeonPlay_32] [{"text": "グリーンキューブ>>","color": "red"},{"text": "召喚：味方","color": "red"}]
        execute if entity @a[scores={ThirtytwoBossSkill=230},tag=BossBattle32,limit=1] as @a[tag=DungeonPlay_32] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
        #乱数==0        [mic]
            execute if entity @a[scores={ThirtytwoBossSkill=231},tag=BossBattle32] as @a[tag=BossBattle32] at @s run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/boss/skill/summon/skeleton
    ##clear effect & damage
            execute if entity @a[scores={ThirtytwoBossSkill=322},tag=BossBattle32] run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/boss/skill/clear_effect/main


    ##mainloop 1 再帰
    execute if entity @a[scores={ThirtytwoBossSkill=303..}] run scoreboard players set @a ThirtytwoBossSkill 0

    

##mainloop 2 skill 1

    ##ライトニング(雷)
        execute if entity @a[scores={ThirtytwoBossSkill2=148},tag=BossBattle32] at @s run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/boss/skill/lightning/main

    ##空腹 + 毒の付与
        execute if entity @a[scores={ThirtytwoBossSkill2=350},tag=BossBattle32] at @s run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/boss/skill/debuf/main

    ##大爆破(上に飛び上がった後着地し、大爆破)
        execute if entity @a[scores={ThirtytwoBossSkill2=400},tag=BossBattle32] at @s run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/boss/skill/bomb/start
        execute if entity @a[scores={ThirtytwoBossSkill2=420..},tag=BossBattle32] if entity @s[tag=Jumping] if data entity @s {OnGround:1b} at @s run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/boss/skill/bomb/end


    execute if entity @a[scores={ThirtytwoBossSkill2=500..}] run scoreboard players set @a ThirtytwoBossSkill2 0