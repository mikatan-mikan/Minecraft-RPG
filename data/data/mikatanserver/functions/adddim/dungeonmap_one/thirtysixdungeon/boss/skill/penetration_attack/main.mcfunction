tellraw @a[tag=DungeonPlay_36] [{"text": "Mods Golem>>","color": "gray"},{"text": "ペネトレーションアタック","color": "gold"}]
execute at @a[tag=BossBattle36] run playsound entity.item.break master @s ~ ~ ~ 2 0 1
execute if score $36_Difficulty Temporary matches 2 run effect give @a[tag=BossBattle36] instant_damage 1 2
execute if score $36_Difficulty Temporary matches 1 run effect give @a[tag=BossBattle36] instant_damage 1 1
execute if score $36_Difficulty Temporary matches 0 run effect give @a[tag=BossBattle36] instant_damage 1 0
effect clear @a[tag=BossBattle36] absorption