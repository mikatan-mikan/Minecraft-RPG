execute as @a[tag=BossBattleseason2] run scoreboard players add $season2 BossHP 20
execute if score $season2 BossHP > $season2_max BossHP run scoreboard players operation $season2 BossHP = $season2_max BossHP
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_season2,distance=..30] ~ ~ ~ 2 1
execute if score @s BossHP matches ..1000 run kill @e[distance=..50,type=boat]
effect give @a[tag=BossBattleseason2] instant_damage 1 2
tellraw @a[tag=DungeonPlay_season2] [{"text": "Music of Finale>>","color": "red"},{"text": "ヒーリング","color": "green"}]

# effect give @s instant_health 1 4
# execute store result score @s MobNowHP run data get entity @s Health
# execute if score @s MobNowHP matches ..600 run kill @e[distance=..50,type=boat]
# execute if score @s MobNowHP matches ..200 run effect give @a[tag=BossBattle22] instant_health 1 2
# particle heart ~ ~ ~ 1 1 1 1 100
# playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_10,distance=..30] ~ ~ ~ 2 1
# tellraw @a[tag=DungeonPlay_22] [{"text": "iron blade>>","color": "gray"},{"text": "ヒーリング！！","color": "green"}]