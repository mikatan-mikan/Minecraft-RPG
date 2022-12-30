execute as @a[tag=BossBattle26] run scoreboard players add $26 BossHP 30
execute if score $26 BossHP > $26_max BossHP run scoreboard players operation $26 BossHP = $26_max BossHP
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_26,distance=..30] ~ ~ ~ 2 1
execute if score @s BossHP matches ..1000 run kill @e[distance=..50,type=boat]
tellraw @a[tag=DungeonPlay_26] [{"text": "大精霊 シルフ>>","color": "#abdbb3"},{"text": "ヒーリング","color": "green"}]

# effect give @s instant_health 1 4
# execute store result score @s MobNowHP run data get entity @s Health
# execute if score @s MobNowHP matches ..600 run kill @e[distance=..50,type=boat]
# execute if score @s MobNowHP matches ..200 run effect give @a[tag=BossBattle22] instant_health 1 2
# particle heart ~ ~ ~ 1 1 1 1 100
# playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_10,distance=..30] ~ ~ ~ 2 1
# tellraw @a[tag=DungeonPlay_22] [{"text": "iron blade>>","color": "gray"},{"text": "ヒーリング！！","color": "green"}]