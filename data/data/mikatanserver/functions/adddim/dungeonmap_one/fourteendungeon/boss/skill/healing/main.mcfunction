execute as @a[tag=BossBattle14] run scoreboard players add $14 BossHP 25
execute if score $14 BossHP > $14_max BossHP run scoreboard players operation $14 BossHP = $14_max BossHP
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_14,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_14] [{"text": "略奪者>>","color": "dark_purple"},{"text": "ヒーリング！！","color": "green"}]