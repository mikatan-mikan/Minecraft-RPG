effect give @a[tag=BossBattle30] instant_damage 1 2
effect give @a[tag=BossBattle30] slowness 1 4
execute as @a[tag=BossBattle30] at @s run playsound item.shield.block master @s ~ ~ ~ 1 1.6
tellraw @a[tag=DungeonPlay_30] [{"text": "大精霊 サラマンダー>>","color": "#cc0000"},{"text": "炎律","color": "#b22222"}]