execute as @a[tag=BossBattle23] run scoreboard players add $23 BossHP 100
execute if score $23 BossHP > $23_max BossHP run scoreboard players operation $23 BossHP = $23_max BossHP
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_23,distance=..30] ~ ~ ~ 2 1
effect give @a[distance=..50] instant_damage 1 1
tellraw @a[tag=DungeonPlay_23] [{"text": "Comet>>","color": "aqua"},{"text": "healing!!","color": "green"}]