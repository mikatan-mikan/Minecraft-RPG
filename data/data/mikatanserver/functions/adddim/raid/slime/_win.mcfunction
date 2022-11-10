tellraw @a [{"text": "[system]","color": "yellow"},{"text": "レイドボス<キングスライム>を討伐した","color": "green"}]
give @a[tag=RAID_Slime_Caller] chest{BlockEntityTag:{LootTable:"mikatanserver:raid/slime/caller"},display:{Name:'[{"text": "スライム - 召喚ボーナス"}]'}} 1
give @a[tag=RAID_Slime_Player] chest{BlockEntityTag:{LootTable:"mikatanserver:raid/slime/player"},display:{Name:'[{"text": "スライム - 生存ボーナス"}]'}} 1
give @a[tag=RAID_Slime_Player_2] chest{BlockEntityTag:{LootTable:"mikatanserver:raid/slime/part"},display:{Name:'[{"text": "スライム - 参加ボーナス"}]'}} 1
tp @e[tag=RAID_SlimeMob] ~ ~-129 ~
kill @e[tag=RAID_SlimeMob]

scoreboard players set $slime RAID_Flag 0


bossbar remove minecraft:raid_slime_bossbar

execute in minecraft:overworld run tp @a[tag=RAID_Slime_Player] 0 100 0
##召喚者ボーナス
tag @a remove RAID_Slime_Caller
##参加中ボーナス
tag @a remove RAID_Slime_Player
##参加ボーナス
tag @a remove RAID_Slime_Player_2
tag @a remove RAID_Player

execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 2 0

scoreboard objectives remove RAID_Slime_Skill
scoreboard players reset $slime RAID_Flag