execute as @a[tag=BossBattle20] run scoreboard players add $20 BossHP 19
execute if score $20 BossHP > $20_max BossHP run scoreboard players operation $20 BossHP = $20_max BossHP
execute if score $20 BossHP matches ..600 run kill @e[distance=..50,type=boat]
effect give @a[tag=BossBattle20] instant_damage 1 0
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_20,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_20] [{"text": "Maiden Valkyrie>>","color": "red"},{"text": "ヒーリング！！","color": "green"}]