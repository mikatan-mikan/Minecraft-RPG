particle heart ~ ~1 ~ 0.5 0.5 0.5 0 10
execute at @a[tag=BossBattle36] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if score $36_Difficulty Temporary matches 2 as @a[tag=BossBattle36] run scoreboard players add $36 BossHP 32
execute if score $36_Difficulty Temporary matches 2 run effect give @s absorption 10 9
execute if score $36_Difficulty Temporary matches 1 as @a[tag=BossBattle36] run scoreboard players add $36 BossHP 16
execute if score $36_Difficulty Temporary matches 1 run effect give @s absorption 10 4
execute if score $36_Difficulty Temporary matches 0 as @a[tag=BossBattle36] run scoreboard players add $36 BossHP 8
execute if score $36_Difficulty Temporary matches 0 run effect give @s absorption 10 1
execute if score $36 BossHP > $36_max BossHP run scoreboard players operation $36 BossHP = $36_max BossHP
execute if score @s BossHP matches ..1000 run kill @e[distance=..50,type=boat]
tellraw @a[tag=DungeonPlay_36] [{"text": "Mods Golem>>","color": "gray"},{"text": "アブソープションヒーリング","color": "yellow"}]