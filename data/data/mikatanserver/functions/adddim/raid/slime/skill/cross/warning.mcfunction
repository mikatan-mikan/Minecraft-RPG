

execute as @e[tag=RAID_Slime_Warn] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=RAID_Slime_Warn] at @s if block ~ ~-1 ~ air run tp ~ ~-1 ~
execute as @e[tag=RAID_Slime_Warn] at @s run particle dust 1 0 0 2 ~ ~ ~ 0 0 0 0 1