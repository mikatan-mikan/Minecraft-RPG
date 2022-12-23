execute as @a[tag=BossBattle25] run scoreboard players add $25 BossHP 25
execute if score $25 BossHP > $25_max BossHP run scoreboard players operation $25 BossHP = $25_max BossHP
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_25,distance=..30] ~ ~ ~ 2 1
effect give @a[distance=..50] instant_damage 1 2
tellraw @a[tag=DungeonPlay_25] [{"text": "聖杯を奪いし者>>","color": "yellow"},{"text": "ヒーリング","color": "green"}]