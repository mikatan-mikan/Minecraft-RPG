execute as @a[tag=BossBattle33] run scoreboard players add $33 BossHP 23
execute if score $33 BossHP > $33_max BossHP run scoreboard players operation $33 BossHP = $33_max BossHP
execute if score $33 BossHP matches ..600 run kill @e[distance=..50,type=boat]
effect give @a[tag=BossBattle33] instant_damage 1 0
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_33,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_33] [{"text": "Walcrutor>>","color": "aqua"},{"text": "ヒーリング","color": "green"}]