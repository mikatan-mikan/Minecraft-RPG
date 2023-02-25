execute as @a[tag=BossBattle34] run scoreboard players add $34 BossHP 34
execute if score $34 BossHP > $34_max BossHP run scoreboard players operation $34 BossHP = $34_max BossHP
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_34,distance=..34] ~ ~ ~ 2 1
execute if score @s BossHP matches ..1000 run kill @e[distance=..50,type=boat]
tellraw @a[tag=DungeonPlay_34] [{"text": "大精霊 ウィンディーネ>>","color": "aqua"},{"text": "ヒーリング","color": "green"}]

# effect give @s instant_health 1 4
# execute store result score @s MobNowHP run data get entity @s Health
# execute if score @s MobNowHP matches ..600 run kill @e[distance=..50,type=boat]
# execute if score @s MobNowHP matches ..200 run effect give @a[tag=BossBattle22] instant_health 1 2
# particle heart ~ ~ ~ 1 1 1 1 100
# playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_10,distance=..34] ~ ~ ~ 2 1
# tellraw @a[tag=DungeonPlay_22] [{"text": "iron blade>>","color": "gray"},{"text": "ヒーリング！！","color": "green"}]