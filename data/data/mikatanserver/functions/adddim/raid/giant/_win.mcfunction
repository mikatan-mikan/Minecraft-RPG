tellraw @a [{"text": "[system]","color": "yellow"},{"text": "レイドボス<オートマトナー>を討伐した","color": "green"}]
give @a[tag=RAID_Giant_Caller] chest{BlockEntityTag:{LootTable:"mikatanserver:raid/giant/caller"},display:{Name:'[{"text": "オートマトナー - 召喚ボーナス"}]'}} 1
give @a[tag=RAID_Giant_Player] chest{BlockEntityTag:{LootTable:"mikatanserver:raid/giant/player"},display:{Name:'[{"text": "オートマトナー - 生存ボーナス"}]'}} 1
give @a[tag=RAID_Giant_Player_2] chest{BlockEntityTag:{LootTable:"mikatanserver:raid/giant/part"},display:{Name:'[{"text": "オートマトナー - 参加ボーナス"}]'}} 1
tp @e[tag=RAID_GiantMob] ~ ~-129 ~
kill @e[tag=RAID_GiantMob]

scoreboard players set $giant RAID_Flag 0


bossbar remove minecraft:raid_giant_bossbar

execute in minecraft:overworld run tp @a[tag=RAID_Giant_Player] 0 100 0
##召喚者ボーナス
tag @a remove RAID_Giant_Caller
##参加中ボーナス
tag @a remove RAID_Giant_Player
##参加ボーナス
tag @a remove RAID_Giant_Player_2
tag @a remove RAID_Player

execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 2 0

scoreboard objectives remove RAID_Giant_Skill
scoreboard players reset $giant RAID_Flag