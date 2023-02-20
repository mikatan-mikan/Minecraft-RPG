particle dust 0.373 0.831 0.957 1 ~ ~4 ~ 0.5 2 0.5 1 10
particle dust 1 1 1 1 ~ ~4 ~ 0.5 2 0.5 1 10
particle dust 0.663 0.925 1 1 ~ ~4 ~ 0.5 2 0.5 1 10

execute if entity @a[scores={ThirtythreeBossSkill=180},tag=BossBattle33] if score $33_Difficulty Temporary matches 0 positioned ~-1 ~ ~-1 run effect give @a[dx=2,dz=2,dy=8] instant_damage 1 3
execute if entity @a[scores={ThirtythreeBossSkill=180},tag=BossBattle33] if score $33_Difficulty Temporary matches 1 positioned ~-1 ~ ~-1 run effect give @a[dx=2,dz=2,dy=8] instant_damage 1 4
execute if entity @a[scores={ThirtythreeBossSkill=180},tag=BossBattle33] run kill @s

execute if entity @a[scores={ThirtythreeBossSkill=280},tag=BossBattle33] if score $33_Difficulty Temporary matches 0 positioned ~-1 ~ ~-1 run effect give @a[dx=2,dz=2,dy=8] instant_damage 1 3
execute if entity @a[scores={ThirtythreeBossSkill=280},tag=BossBattle33] if score $33_Difficulty Temporary matches 1 positioned ~-1 ~ ~-1 run effect give @a[dx=2,dz=2,dy=8] instant_damage 1 4
execute if entity @a[scores={ThirtythreeBossSkill=280},tag=BossBattle33] run kill @s