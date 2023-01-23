##レイドプログラムの開始
## as at 召喚アイテム使用者

execute in mikatanserver:dungeon run tp @s 1707.5 -23 -1557.5 121 0

##本体の召喚
execute in mikatanserver:dungeon run summon magma_cube 1672.5 -22 -1576.5 {Size:20,NoAI:1b,PersistenceRequired:true,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.knockback_resistance",Base:1.0}],Health:1024,Tags:["RAID_RedCrystal","Non_HPBar","RAID_Boss"],Rotation:[-90.0f,0.0f]}

forceload add 1672 -1576 1672 -1576

##前回の残骸スライムがいたなら
execute as @e[tag=RAID_RedCrystal] at @s run tp @e[type=magma_cube,tag=!RAID_RedCrystal,distance=..10] ~ -129 ~

##変数の定義
scoreboard objectives add RAID_RedCrystal_Skill dummy
scoreboard players remove $Rot RAID_RedCrystal_Skill 90

#(アイテムを渡す制約の変更により不要)
# ##参加->退出->ボスがいなくなってる->召喚->参加していないのに報酬がもらえる対策
# tag @a remove RAID_RedCrystal_Caller
# tag @a remove RAID_RedCrystal_Player
# tag @a remove RAID_RedCrystal_Player_2

##ボスバー
execute as @e[tag=RAID_RedCrystal] store result score @s MobNowHP run data get entity @s Health
bossbar add raid_redcrystal_bossbar "紅結晶"
bossbar set minecraft:raid_redcrystal_bossbar players @a
bossbar set minecraft:raid_redcrystal_bossbar max 9000
bossbar set minecraft:raid_redcrystal_bossbar color red
bossbar set minecraft:raid_redcrystal_bossbar style notched_20
scoreboard players set $raid_redcrystal BossHP 9000

##召喚者ボーナス
tag @s add RAID_RedCrystal_Caller
##参加中ボーナス
tag @s add RAID_RedCrystal_Player
##参加ボーナス
tag @s add RAID_RedCrystal_Player_2
##フラグ用タグ(死亡時タグ削除など)
tag @s add RAID_Player

gamemode adventure @s

##フラグの有効化
scoreboard players set $redcrystal RAID_Flag 1

##召喚アイテム消費
clear @s carrot_on_a_stick{CustomModelData:152} 1