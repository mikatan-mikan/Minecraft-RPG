execute as @a[tag=BossBattle17] run scoreboard players add $17 BossHP 17
execute if score $17 BossHP > $17_max BossHP run scoreboard players operation $17 BossHP = $17_max BossHP
execute if score $17 BossHP matches ..1200 run kill @e[distance=..50,type=boat]
execute if score $17 BossHP matches ..1000 run effect give @a[tag=BossBattle17] instant_damage 1 2
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_17,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_17] [{"text": "Michelle>>","color": "gold"},{"text": "ヒーリング！！","color": "green"}]