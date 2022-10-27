execute as @a[tag=BossBattle21] run scoreboard players add $21 BossHP 25
execute if score $21 BossHP > $21_max BossHP run scoreboard players operation $21 BossHP = $21_max BossHP
execute if score $21 BossHP matches ..600 run kill @e[distance=..50,type=boat]
effect give @a[tag=BossBattle21] instant_damage 1 0
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_21,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_21] [{"text": "The Gravity>>","color": "#515254"},{"text": "ヒーリング！！","color": "green"}]