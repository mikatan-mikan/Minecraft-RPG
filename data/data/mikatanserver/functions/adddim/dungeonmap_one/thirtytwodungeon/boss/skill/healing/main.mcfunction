execute if score $32_Difficulty Temporary matches 0 as @a[tag=BossBattle32] run scoreboard players add $32 BossHP 10
execute if score $32_Difficulty Temporary matches 1 as @a[tag=BossBattle32] run scoreboard players add $32 BossHP 20
execute if score $32_Difficulty Temporary matches 2 as @a[tag=BossBattle32] run scoreboard players add $32 BossHP 40
execute if score $32 BossHP > $32_max BossHP run scoreboard players operation $32 BossHP = $32_max BossHP
execute if score $32 BossHP matches ..600 run kill @e[distance=..50,type=boat]
effect give @a[tag=BossBattle32] instant_damage 1 0
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_32,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_32] [{"text": "グリーンキューブ>>","color": "red"},{"text": "ヒーリング","color": "green"}]