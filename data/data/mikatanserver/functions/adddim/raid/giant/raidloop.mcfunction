##ボス視点
scoreboard players add $timer RAID_Giant_Skill 1


##二体以上スライムがいる場合の処理(例外処理)
execute store result score $giants RAID_Giant_Skill if entity @e[type=giant,distance=..10]
    #もし2以上なら一体を奈落にtpした後killをする
    execute if score $giants RAID_Giant_Skill matches 2.. as @e[type=giant,distance=0.01..10] at @s run function mikatanserver:adddim/raid/giant/exception/double_giant

execute facing entity @p eyes run tp @s ~ ~ ~



##この辺りにHP管理+途中抜けして帰ってきたときには既にスライムがおらず帰れないのでプレイヤーをkillするためのフラグをセットする処理を書く(killするのは./mainloop.mcfunction内)
##bossの現在HPをgetする
execute store result score $raid_giant boss_hp_checker run data get entity @e[tag=RAID_Giant,limit=1] Health
##減ったhpを検知する
scoreboard players operation $raid_giant TMP = $1024 int
scoreboard players operation $raid_giant TMP -= $raid_giant boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $raid_giant BossHP -= $raid_giant TMP
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $cnt RAID_Giant_Skill matches 100.. if score $raid_giant BossHP matches ..0 run kill @s
execute store result bossbar minecraft:raid_giant_bossbar value run scoreboard players get $raid_giant BossHP

bossbar set minecraft:raid_giant_bossbar players @a

##参加中ボーナス
tag @a[distance=..60] add RAID_Giant_Player
##参加ボーナス
tag @a[distance=..60] add RAID_Giant_Player_2
##何らかのレイドに参加している
tag @a[distance=..60] add RAID_Player

##スキル用変数
execute if score $timer RAID_Giant_Skill matches 1 run function mikatanserver:adddim/raid/giant/skill/rand

##30m以内
    execute if score $timer RAID_Giant_Skill matches 20..280 if score @s MK.r.RandValue matches 0 run function mikatanserver:adddim/raid/giant/skill/near/call
    execute if score $timer RAID_Giant_Skill matches 280 if score @s MK.r.RandValue matches 0 run function mikatanserver:adddim/raid/giant/skill/near/main
##10mより遠い
    execute if score $timer RAID_Giant_Skill matches 20..280 if score @s MK.r.RandValue matches 1 run function mikatanserver:adddim/raid/giant/skill/far/call
    execute if score $timer RAID_Giant_Skill matches 280 if score @s MK.r.RandValue matches 1 run function mikatanserver:adddim/raid/giant/skill/far/main
##ランダム地点
    execute if score $timer RAID_Giant_Skill matches 20..280 if score @s MK.r.RandValue matches 2 run function mikatanserver:adddim/raid/giant/skill/random/call
    execute if score $timer RAID_Giant_Skill matches 280 if score @s MK.r.RandValue matches 2 run function mikatanserver:adddim/raid/giant/skill/random/main
##zombieがいたなら爆破
    execute if score $timer RAID_Giant_Skill matches 20..280 if score @s MK.r.RandValue matches 3 as @e[tag=RAID_GiantMob] at @s run function mikatanserver:adddim/raid/giant/skill/zombie/call
    execute if score $timer RAID_Giant_Skill matches 280 if score @s MK.r.RandValue matches 3 run function mikatanserver:adddim/raid/giant/skill/zombie/main


execute if score $timer RAID_Giant_Skill matches 300.. run scoreboard players set $timer RAID_Giant_Skill 0