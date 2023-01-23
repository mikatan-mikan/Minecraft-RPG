tellraw @a [{"text": "[system]","color": "yellow"},{"text": "レイドボス<紅結晶>を討伐した","color": "green"}]
give @a[tag=RAID_RedCrystal_Caller] chest{BlockEntityTag:{LootTable:"mikatanserver:raid/redcrystal/caller"},display:{Name:'[{"text": "紅結晶 - 召喚ボーナス"}]'}} 1
give @a[tag=RAID_RedCrystal_Player] chest{BlockEntityTag:{LootTable:"mikatanserver:raid/redcrystal/player"},display:{Name:'[{"text": "紅結晶 - 生存ボーナス"}]'}} 1
give @a[tag=RAID_RedCrystal_Player_2] chest{BlockEntityTag:{LootTable:"mikatanserver:raid/redcrystal/part"},display:{Name:'[{"text": "紅結晶 - 参加ボーナス"}]'}} 1
tp @e[tag=RAID_RedCrystalMob] ~ ~-129 ~
kill @e[tag=RAID_RedCrystalMob]

forceload remove 1672 -1576 1672 -1576
scoreboard players set $redcrystal RAID_Flag 0


bossbar remove minecraft:raid_redcrystal_bossbar

execute in minecraft:overworld run tp @a[tag=RAID_RedCrystal_Player] 0 100 0
##召喚者ボーナス
tag @a remove RAID_RedCrystal_Caller
##参加中ボーナス
tag @a remove RAID_RedCrystal_Player
##参加ボーナス
tag @a remove RAID_RedCrystal_Player_2
tag @a remove RAID_Player

execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 2 0

scoreboard objectives remove RAID_RedCrystal_Skill
scoreboard players reset $redcrystal RAID_Flag