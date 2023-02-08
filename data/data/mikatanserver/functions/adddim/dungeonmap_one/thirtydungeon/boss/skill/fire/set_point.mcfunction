execute in mikatanserver:dungeon run tp @s -679.5 99 1119.5
scoreboard players set $ai_bool ThirtyBossSkill 0
playsound entity.generic.explode master @a ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_30] [{"text": "大精霊 サラマンダー>>","color": "#cc0000"},{"text": "精霊の願い","color": "red"}]