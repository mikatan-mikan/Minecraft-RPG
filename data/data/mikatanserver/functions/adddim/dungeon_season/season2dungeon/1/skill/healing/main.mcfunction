effect give @s instant_health 1 4
execute store result score @s MobNowHP run data get entity @s Health
execute if score @s MobNowHP matches ..600 run kill @e[distance=..50,type=boat]
execute if score @s MobNowHP matches ..200 run effect give @a[tag=BossBattleseason2] instant_health 1 2
particle heart ~ ~ ~ 1 1 1 1 10
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_season2,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "iron blade>>","color": "gray"},{"text": "ヒーリング！！","color": "green"}]