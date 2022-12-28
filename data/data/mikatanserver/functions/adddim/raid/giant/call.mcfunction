##レイドプログラムの開始
## as at 召喚アイテム使用者

execute in mikatanserver:dungeon run tp @s 2018.5 -61 -1681.5 135 0

##本体の召喚
execute in mikatanserver:dungeon run summon giant 2000.5 -59 -1699.5 {NoAI:1b,PersistenceRequired:true,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.knockback_resistance",Base:1.0}],Health:1024,Tags:["RAID_Giant","Non_HPBar","RAID_Boss"]}

##前回の残骸スライムがいたなら
execute as @e[tag=RAID_Giant] at @s run tp @e[type=giant,tag=!RAID_Giant,distance=..10] ~ -129 ~

##変数の定義
scoreboard objectives add RAID_Giant_Skill dummy

#(アイテムを渡す制約の変更により不要)
# ##参加->退出->ボスがいなくなってる->召喚->参加していないのに報酬がもらえる対策
# tag @a remove RAID_Giant_Caller
# tag @a remove RAID_Giant_Player
# tag @a remove RAID_Giant_Player_2

##ボスバー
execute as @e[tag=RAID_Giant] store result score @s MobNowHP run data get entity @s Health
bossbar add raid_giant_bossbar "オートマトナー"
bossbar set minecraft:raid_giant_bossbar players @a
bossbar set minecraft:raid_giant_bossbar max 9000
bossbar set minecraft:raid_giant_bossbar color red
bossbar set minecraft:raid_giant_bossbar style notched_20
scoreboard players set $raid_giant BossHP 9000

##召喚者ボーナス
tag @s add RAID_Giant_Caller
##参加中ボーナス
tag @s add RAID_Giant_Player
##参加ボーナス
tag @s add RAID_Giant_Player_2
##フラグ用タグ(死亡時タグ削除など)
tag @s add RAID_Player

gamemode adventure @s

##フラグの有効化
scoreboard players set $giant RAID_Flag 1

##召喚アイテム消費
clear @s carrot_on_a_stick{CustomModelData:143} 1