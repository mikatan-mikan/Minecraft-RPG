##ボス視点
scoreboard players add $timer RAID_RedCrystal_Skill 1


##二体以上スライムがいる場合の処理(例外処理)
execute store result score $redcrystal RAID_RedCrystal_Skill if entity @e[type=magma_cube,distance=..10,tag=!DontTp]
    #もし2以上なら一体を奈落にtpした後killをする
    execute if score $redcrystal RAID_RedCrystal_Skill matches 2.. as @e[type=magma_cube,distance=0.01..10,tag=!DontTp] at @s run function mikatanserver:adddim/raid/redcrystal/exception/double_redcrystal

execute facing entity @p eyes run tp @s ~ ~ ~



##この辺りにHP管理+途中抜けして帰ってきたときには既にスライムがおらず帰れないのでプレイヤーをkillするためのフラグをセットする処理を書く(killするのは./mainloop.mcfunction内)
##bossの現在HPをgetする
execute store result score $raid_redcrystal boss_hp_checker run data get entity @e[tag=RAID_RedCrystal,limit=1] Health
##減ったhpを検知する
scoreboard players operation $raid_redcrystal TMP = $1024 int
scoreboard players operation $raid_redcrystal TMP -= $raid_redcrystal boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $raid_redcrystal BossHP -= $raid_redcrystal TMP
##ボス本体のhpを回復させる
data merge entity @s {Health:1024.0f}
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $cnt RAID_RedCrystal_Skill matches 100.. if score $raid_redcrystal BossHP matches ..0 run kill @s
execute store result bossbar minecraft:raid_redcrystal_bossbar value run scoreboard players get $raid_redcrystal BossHP

bossbar set minecraft:raid_redcrystal_bossbar players @a

##参加中ボーナス
tag @a[distance=..60] add RAID_RedCrystal_Player
##参加ボーナス
tag @a[distance=..60] add RAID_RedCrystal_Player_2
##何らかのレイドに参加している
tag @a[distance=..60] add RAID_Player

##スキル用変数
execute if score $timer RAID_RedCrystal_Skill matches 1 run function mikatanserver:adddim/raid/redcrystal/skill/rand

##30m以内
    execute if score $timer RAID_RedCrystal_Skill matches 20..280 if score @s MK.r.RandValue matches 0 run function mikatanserver:adddim/raid/redcrystal/skill/near/call
    execute if score $timer RAID_RedCrystal_Skill matches 280 if score @s MK.r.RandValue matches 0 run function mikatanserver:adddim/raid/redcrystal/skill/near/main
##一回転
    execute if score $timer RAID_RedCrystal_Skill matches 20..120 if score @s MK.r.RandValue matches 1 run function mikatanserver:adddim/raid/redcrystal/skill/rot/call
    execute if score $timer RAID_RedCrystal_Skill matches 120..280 if score @s MK.r.RandValue matches 1 run function mikatanserver:adddim/raid/redcrystal/skill/rot/main
##ランダム地点
    execute if score $timer RAID_RedCrystal_Skill matches 20..280 if score @s MK.r.RandValue matches 2 run function mikatanserver:adddim/raid/redcrystal/skill/random/call
    execute if score $timer RAID_RedCrystal_Skill matches 280 if score @s MK.r.RandValue matches 2 run function mikatanserver:adddim/raid/redcrystal/skill/random/main
##マグマキューブを大量に呼び出す
    execute if score $timer RAID_RedCrystal_Skill matches 20..260 if score @s MK.r.RandValue matches 3 run function mikatanserver:adddim/raid/redcrystal/skill/summon/call
    execute if score $timer RAID_RedCrystal_Skill matches 260 if score @s MK.r.RandValue matches 3 run function mikatanserver:adddim/raid/redcrystal/skill/summon/main
    execute if score $timer RAID_RedCrystal_Skill matches 270 if score @s MK.r.RandValue matches 3 run function mikatanserver:adddim/raid/redcrystal/skill/summon/main
    execute if score $timer RAID_RedCrystal_Skill matches 280 if score @s MK.r.RandValue matches 3 run function mikatanserver:adddim/raid/redcrystal/skill/summon/main
    execute if score $timer RAID_RedCrystal_Skill matches 290 if score @s MK.r.RandValue matches 3 run function mikatanserver:adddim/raid/redcrystal/skill/summon/main


execute if score $timer RAID_RedCrystal_Skill matches 300.. run scoreboard players set $timer RAID_RedCrystal_Skill 0

execute if entity @e