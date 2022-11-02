##ボス視点
scoreboard players add $timer RAID_Sime_Skill 1

execute facing entity @p eyes run tp @s ~ ~ ~

##残り時間の計算
scoreboard players operation $20t RAID_Sime_Skill = $cnt RAID_Sime_Skill 
scoreboard players operation $20t RAID_Sime_Skill %= $20 int
execute if score $20t RAID_Slime_Skill matches 0 run function mikatanserver:adddim/raid/slime/set_time

##この辺りにHP管理+途中抜けして帰ってきたときには既にスライムがおらず帰れないのでプレイヤーをkillするためのフラグをセットする処理を書く(killするのは./mainloop.mcfunction内)
##bossの現在HPをgetする
execute store result score $raid_slime boss_hp_checker run data get entity @e[tag=RAID_Slime,limit=1] Health
##減ったhpを検知する
scoreboard players operation $raid_slime TMP = $1024 int
scoreboard players operation $raid_slime TMP -= $raid_slime boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $raid_slime BossHP -= $raid_slime TMP
##ボス本体のhpを回復させる
effect give @s instant_health 1 200
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $cnt RAID_Sime_Skill matches 100.. if score $raid_slime BossHP matches ..0 run kill @s
execute store result bossbar minecraft:raid_slime_bossbar value run scoreboard players get $raid_slime BossHP

bossbar set minecraft:raid_slime_bossbar players @a

##参加中ボーナス
tag @a[distance=..60] add RAID_Slime_Player
##参加ボーナス
tag @a[distance=..60] add RAID_Slime_Player_2
##何らかのレイドに参加している
tag @a[distance=..60] add RAID_Player

##スキル用変数
execute if score $timer RAID_Sime_Skill matches 1 run function mikatanserver:adddim/raid/slime/skill/rand

##30m以内
    execute if score $timer RAID_Sime_Skill matches 20..280 if score @s MK.r.RandValue matches 0 run function mikatanserver:adddim/raid/slime/skill/near/call
    execute if score $timer RAID_Sime_Skill matches 280 if score @s MK.r.RandValue matches 0 run function mikatanserver:adddim/raid/slime/skill/near/main
##10mより遠い
    execute if score $timer RAID_Sime_Skill matches 20..280 if score @s MK.r.RandValue matches 1 run function mikatanserver:adddim/raid/slime/skill/far/call
    execute if score $timer RAID_Sime_Skill matches 280 if score @s MK.r.RandValue matches 1 run function mikatanserver:adddim/raid/slime/skill/far/main
##十字
    execute if score $timer RAID_Sime_Skill matches 20..280 if score @s MK.r.RandValue matches 2 run function mikatanserver:adddim/raid/slime/skill/cross/call
    execute if score $timer RAID_Sime_Skill matches 280 if score @s MK.r.RandValue matches 2 run function mikatanserver:adddim/raid/slime/skill/cross/main
##ランダム地点
    execute if score $timer RAID_Sime_Skill matches 20..280 if score @s MK.r.RandValue matches 3 run function mikatanserver:adddim/raid/slime/skill/random/call
    execute if score $timer RAID_Sime_Skill matches 280 if score @s MK.r.RandValue matches 3 run function mikatanserver:adddim/raid/slime/skill/random/main

execute if score $timer RAID_Sime_Skill matches 300.. run scoreboard players set $timer RAID_Sime_Skill 0