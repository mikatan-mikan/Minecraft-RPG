effect give @s instant_damage 1 5
execute store result score @s MobNowHP run data get entity @s Health
execute if score @s MobNowHP matches ..600 run kill @e[distance=..50,type=boat]
execute if score @s MobNowHP matches ..200 run effect give @a[tag=BossBattle11] instant_health 1 2
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_11,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_11] [{"text": "master satellite>>","color": "green"},{"text": "ヒーリング！！","color": "green"}]
kill @e[type=armor_stand,tag=BossWindArmor11]