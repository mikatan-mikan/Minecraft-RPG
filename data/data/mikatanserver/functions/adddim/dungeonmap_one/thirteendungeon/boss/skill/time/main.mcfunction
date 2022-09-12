tellraw @a[tag=DungeonPlay_13] [{"text": "神子>>","color": "white"},{"text": "時の煌めき！！","color": "aqua"}]
summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:1,ReapplicationDelay:50,Radius:1f,Duration:6,Effects:[{Id:1,Amplifier:5,Duration:5}]}
execute as @a[tag=BossBattle13] at @s run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:1,ReapplicationDelay:50,Radius:1f,Duration:6,Effects:[{Id:2,Amplifier:1,Duration:5}]}
execute as @a[tag=BossBattle13] at @s run playsound block.glass.break master @s ~ ~ ~ 1 2