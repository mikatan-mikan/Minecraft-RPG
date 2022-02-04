effect give @s instant_damage 1 4
execute store result score @s MobNowHP run data get entity @s Health
execute if score @s MobNowHP matches ..600 run kill @e[distance=..50,type=boat]
execute if score @s MobNowHP matches ..200 run effect give @a[tag=BossBattle9] instant_damage 1 2
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_9,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_9] [{"text": "Michelle>>","color": "gold"},{"text": "ヒーリング！！","color": "green"}]