
tellraw @a[tag=DungeonPlay_13] [{"text": "神子>>","color": "white"},{"text": "エフェクトマテリアル！！","color": "gold"}]

summon area_effect_cloud 302.5 209 -43.5 {CustomNameVisible:1,ReapplicationDelay:20,Radius:5f,Duration:200,Effects:[{Id:11,Amplifier:1,Duration:20}],Color:5723991}
summon area_effect_cloud 302.5 209 -19.5 {CustomNameVisible:1,ReapplicationDelay:20,Radius:5f,Duration:200,Effects:[{Id:23,Amplifier:1,Duration:20}],Color:3931945}
summon area_effect_cloud 274.5 209 -31.5 {CustomNameVisible:1,ReapplicationDelay:20,Radius:5f,Duration:200,Effects:[{Id:12,Amplifier:1,Duration:20}],Color:16711680}

execute as @a[tag=DungeonPlay_13] at @s run playsound block.fire.extinguish master @s ~ ~ ~ 2 0