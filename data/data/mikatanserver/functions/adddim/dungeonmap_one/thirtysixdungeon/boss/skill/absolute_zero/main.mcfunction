tellraw @a[tag=BossBattle36] [{"text": "Mods Golem>>","color": "gray"},{"text": "アブソリュートゼロ","color": "aqua"}]
execute at @a[tag=BossBattle36] run playsound block.glass.break master @s ~ ~ ~ 2 2 1
execute if score $36_Difficulty Temporary matches 2 run effect give @a[tag=BossBattle36] slowness 2 200
execute if score $36_Difficulty Temporary matches 2 run effect give @a[tag=BossBattle36] levitation 2 200
execute if score $36_Difficulty Temporary matches 1 run effect give @a[tag=BossBattle36] slowness 2 200
execute if score $36_Difficulty Temporary matches 0 run effect give @a[tag=BossBattle36] slowness 2 1
execute if score $36_Difficulty Temporary matches 0..1 at @a[tag=BossBattle36] run fill ~-1 ~20 ~-1 ~1 ~20 ~1 anvil replace air
execute if score $36_Difficulty Temporary matches 2 at @a[tag=BossBattle36] run fill ~-2 ~40 ~-2 ~2 ~40 ~2 anvil replace air