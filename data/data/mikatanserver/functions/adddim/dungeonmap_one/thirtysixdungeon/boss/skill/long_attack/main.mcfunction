tellraw @a[tag=DungeonPlay_36] [{"text": "Mods Golem>>","color": "gray"},{"text": "ロングディスタンスアタック","color": "yellow"}]
execute at @a[tag=BossBattle36,distance=10..15] run particle flame ~ ~-0.5 ~ 0.3 0.125 0.3 0 50
execute at @a[tag=BossBattle36,distance=15..25] run particle angry_villager ~ ~-0.5 ~ 0.3 0.125 0.3 0 1
execute at @a[tag=BossBattle36,distance=25..100] run particle enchant ~ ~-0.5 ~ 0.3 0.125 0.3 0 20
execute at @a[tag=BossBattle36,distance=10..] run summon lightning_bolt ~ ~ ~
execute as @a[tag=BossBattle36,distance=15..] at @s run effect give @s poison 5 20
execute if score $36_Difficulty Temporary matches 2 as @a[tag=BossBattle36,distance=25..] at @s run effect give @s instant_damage 60 0
execute if score $36_Difficulty Temporary matches 1 as @a[tag=BossBattle36,distance=25..] at @s run effect give @s instant_damage 30 0
execute if score $36_Difficulty Temporary matches 0 as @a[tag=BossBattle36,distance=25..] at @s run effect give @s instant_damage 10 0