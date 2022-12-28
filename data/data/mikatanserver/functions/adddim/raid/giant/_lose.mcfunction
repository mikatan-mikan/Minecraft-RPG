tellraw @a [{"text": "[system]","color": "yellow"},{"text": "レイドボス<オートマトナー>の討伐に失敗しました","color": "red"}]

kill @e[tag=RAID_GiantMob]
scoreboard players set $giant RAID_Flag 0
bossbar remove minecraft:raid_giant_bossbar
kill @e[tag=RAID_Giant_Player]
##召喚者ボーナス
tag @a remove RAID_Giant_Caller
##参加中ボーナス
tag @a remove RAID_Giant_Player
##参加ボーナス
tag @a remove RAID_Giant_Player_2
tag @a remove RAID_Player

scoreboard objectives remove RAID_Giant_Skill
scoreboard players reset $giant RAID_Flag