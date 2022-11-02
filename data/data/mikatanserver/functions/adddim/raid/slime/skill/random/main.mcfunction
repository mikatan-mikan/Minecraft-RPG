execute as @e[tag=RAID_Slime_Warn] at @s run effect give @a[distance=..2] instant_damage 1 5
kill @e[tag=RAID_Slime_Warn]
execute as @a[tag=RAID_Slime_Player] at @s run playsound entity.lightning_bolt.impact master @s ~ ~ ~ 1 1.8