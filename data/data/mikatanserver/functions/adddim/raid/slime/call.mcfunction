##レイドプログラムの開始
## as at 召喚アイテム使用者

execute in mikatanserver:dungeon run tp @s -887.5 49 555.5 135 0

##本体の召喚
execute in mikatanserver:dungeon run summon slime -912.5 51 530.5 {Size:20,NoAI:1b,PersistenceRequired:true,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.knockback_resistance",Base:1.0}],Health:1024,Tags:["RAID_Slime","Non_HPBar","RAID_Boss"]}

##前回の残骸スライムがいたなら
execute as @e[tag=RAID_Slime] at @s run tp @e[type=slime,tag=!RAID_Slime,distance=..10] ~ -129 ~

##変数の定義
scoreboard objectives add RAID_Slime_Skill dummy

#(アイテムを渡す制約の変更により不要)
# ##参加->退出->ボスがいなくなってる->召喚->参加していないのに報酬がもらえる対策
# tag @a remove RAID_Slime_Caller
# tag @a remove RAID_Slime_Player
# tag @a remove RAID_Slime_Player_2

##ボスバー
execute as @e[tag=RAID_Slime] store result score @s MobNowHP run data get entity @s Health
bossbar add raid_slime_bossbar "キングスライム"
bossbar set minecraft:raid_slime_bossbar players @a
bossbar set minecraft:raid_slime_bossbar max 9000
bossbar set minecraft:raid_slime_bossbar color green
bossbar set minecraft:raid_slime_bossbar style notched_20
scoreboard players set $raid_slime BossHP 9000

##召喚者ボーナス
tag @s add RAID_Slime_Caller
##参加中ボーナス
tag @s add RAID_Slime_Player
##参加ボーナス
tag @s add RAID_Slime_Player_2
##フラグ用タグ(死亡時タグ削除など)
tag @s add RAID_Player

gamemode adventure @s

##フラグの有効化
scoreboard players set $slime RAID_Flag 1

##召喚アイテム消費
clear @s carrot_on_a_stick{CustomModelData:109} 1