execute as @a[tag=BossBattle18] run scoreboard players add $18 BossHP 11
execute if score $18 BossHP > $18_max BossHP run scoreboard players operation $18 BossHP = $18_max BossHP
execute if score $18 BossHP matches ..600 run kill @e[distance=..50,type=boat]
execute if score $18 BossHP matches ..600 run effect give @a[tag=BossBattle18] instant_damage 1 2
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_18,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_18] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "ヒーリング！！","color": "green"}]