effect clear @a[tag=BossBattle33]
effect give @a[tag=BossBattle33] instant_damage 1 1
execute as @a[tag=BossBattle33] at @s run playsound block.glass.break master @s ~ ~ ~ 1 1.3
tellraw @a[tag=DungeonPlay_33] [{"text": "Walcrutor>>","color": "aqua"},{"text": "エフェクトマテリアル","color": "white"}]