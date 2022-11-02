execute in mikatanserver:dungeon positioned -912.5 50 516.5 run effect give @a[dx=43,dy=40,dz=28] instant_damage 1 5
execute in mikatanserver:dungeon positioned -912.5 50 516.5 run effect give @a[dx=-43,dy=40,dz=28] instant_damage 1 5
execute in mikatanserver:dungeon positioned -926.5 50 530.5 run effect give @a[dx=28,dy=40,dz=43] instant_damage 1 5
execute in mikatanserver:dungeon positioned -926.5 50 530.5 run effect give @a[dx=28,dy=40,dz=-43] instant_damage 1 5
kill @e[tag=RAID_Slime_Warn]


execute as @a[tag=RAID_Slime_Player] at @s run playsound entity.lightning_bolt.impact master @s ~ ~ ~ 1 1.8