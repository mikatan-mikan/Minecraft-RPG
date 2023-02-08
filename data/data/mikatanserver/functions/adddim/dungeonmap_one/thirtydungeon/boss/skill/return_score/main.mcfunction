scoreboard players set @a[tag=BossBattle30] ThirtyBossSkill2 230
execute as @a[tag=DungeonPlay_30] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1.4
tellraw @a[tag=DungeonPlay_30] [{"text": "大精霊 サラマンダー>>","color": "#cc0000"},{"text": "時間加速","color": "aqua"}]