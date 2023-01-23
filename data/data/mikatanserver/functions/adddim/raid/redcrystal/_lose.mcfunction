tellraw @a [{"text": "[system]","color": "yellow"},{"text": "レイドボス<紅結晶>の討伐に失敗しました","color": "red"}]

execute as @a at @s run playsound block.anvil.place master @s ~ ~ ~ 1 1.5
forceload remove 1672 -1576 1672 -1576
tp @e[tag=RAID_RedCrystalMob] ~ ~-129 ~
kill @e[tag=RAID_RedCrystalMob]
scoreboard players set $redcrystal RAID_Flag 0
bossbar remove minecraft:raid_redcrystal_bossbar
kill @e[tag=RAID_RedCrystal_Player]
##召喚者ボーナス
tag @a remove RAID_RedCrystal_Caller
##参加中ボーナス
tag @a remove RAID_RedCrystal_Player
##参加ボーナス
tag @a remove RAID_RedCrystal_Player_2
tag @a remove RAID_Player

scoreboard objectives remove RAID_RedCrystal_Skill
scoreboard players reset $redcrystal RAID_Flag