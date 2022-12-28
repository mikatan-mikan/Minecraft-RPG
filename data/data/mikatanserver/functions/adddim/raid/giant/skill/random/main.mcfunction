execute as @e[tag=RAID_Giant_Warn] at @s run effect give @a[distance=..2] instant_damage 1 5
execute as @e[tag=RAID_Giant_Warn] at @s run summon zombie ~ ~ ~ {Tags:["RAID_GiantMob"],DeathLootTable:"null",Attributes:[{Name:"minecraft:generic.max_health",Base:250}],Health:50}
kill @e[tag=RAID_Giant_Warn]
execute as @a[tag=RAID_Giant_Player] at @s run playsound entity.lightning_bolt.impact master @s ~ ~ ~ 1 1.8