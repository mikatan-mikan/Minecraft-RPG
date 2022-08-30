
tellraw @a[tag=DungeonPlay_13] [{"text": "神子>>","color": "white"},{"text": "エフェクトマテリアル！！","color": "gold"}]

summon area_effect_cloud 302.5 209 -43.5 {CustomNameVisible:1,ReapplicationDelay:20,Radius:5f,Duration:200,Effects:[{Id:1,Amplifier:1,Duration:20}],Color:52479}
summon area_effect_cloud 302.5 209 -19.5 {CustomNameVisible:1,ReapplicationDelay:20,Radius:5f,Duration:200,Effects:[{Id:5,Amplifier:1,Duration:20}],Color:16753193}
summon area_effect_cloud 274.5 209 -31.5 {CustomNameVisible:1,ReapplicationDelay:20,Radius:5f,Duration:200,Effects:[{Id:10,Amplifier:2,Duration:20}],Color:16711680}

execute as @a[tag=DungeonPlay_13] at @s run playsound block.fire.extinguish master @s ~ ~ ~ 2 0