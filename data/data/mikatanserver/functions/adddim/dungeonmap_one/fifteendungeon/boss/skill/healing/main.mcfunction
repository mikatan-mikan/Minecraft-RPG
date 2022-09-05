execute as @a[tag=BossBattle15] run scoreboard players add $15 BossHP 25
execute if score $15 BossHP > $15_max BossHP run scoreboard players operation $15 BossHP = $15_max BossHP
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_15,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_15] [{"text": "溶岩塊>>","color": "red"},{"text": "ヒーリング！！","color": "green"}]