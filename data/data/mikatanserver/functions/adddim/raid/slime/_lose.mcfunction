tellraw @a [{"text": "[system]","color": "yellow"},{"text": "レイドボス<キングスライム>の討伐に失敗しました","color": "red"}]

execute as @a at @s run playsound block.anvil.place master @s ~ ~ ~ 1 1.5
tp @e[tag=RAID_SlimeMob] ~ ~-129 ~
kill @e[tag=RAID_SlimeMob]
scoreboard players set $slime RAID_Flag 0
bossbar remove minecraft:raid_slime_bossbar
kill @e[tag=RAID_Slime_Player]
##召喚者ボーナス
tag @a remove RAID_Slime_Caller
##参加中ボーナス
tag @a remove RAID_Slime_Player
##参加ボーナス
tag @a remove RAID_Slime_Player_2
tag @a remove RAID_Player

scoreboard objectives remove RAID_Slime_Skill
scoreboard players reset $slime RAID_Flag