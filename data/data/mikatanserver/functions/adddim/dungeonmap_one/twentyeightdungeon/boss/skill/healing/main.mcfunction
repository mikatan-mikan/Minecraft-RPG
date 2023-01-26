execute as @a[tag=BossBattle28] run scoreboard players add $28 BossHP 19
execute if score $28 BossHP > $28_max BossHP run scoreboard players operation $28 BossHP = $28_max BossHP
execute if score $28 BossHP matches ..600 run kill @e[distance=..50,type=boat]
effect give @a[tag=BossBattle28] instant_damage 1 0
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_28,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_28] [{"text": "Dream Eater>>","color": "red"},{"text": "ヒーリング","color": "green"}]