execute store result score @s MobNowHP run bossbar get twelvethboss_bar value
execute as @a[tag=BossBattle19] run scoreboard players add @s MobNowHP 4
execute store result bossbar twelvethboss_bar value run scoreboard players get @s MobNowHP
execute as @a[tag = BossBattle19] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 2
particle heart ~ ~ ~ 0.5 1 0.5 0 50