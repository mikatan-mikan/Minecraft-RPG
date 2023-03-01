tag @a[tag=DungeonPlay_35,tag=!BossBattle35] add BossBattle35
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle35] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle35] resistance

##bossの現在HPをgetする
execute store result score $35_boss_hp boss_hp_checker run data get entity @e[tag=ThirtyfiveDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $35_boss_hp TMP = $1024 int
scoreboard players operation $35_boss_hp TMP -= $35_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $35 BossHP -= $35_boss_hp TMP
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $35 BossHP matches ..0 run kill @s