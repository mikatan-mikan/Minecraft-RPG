execute as @a[tag=BossBattleseason2] at @s run particle soul ~ ~ ~ 0.5 1 0.5 1 50
playsound block.fire.extinguish master @s ~ ~ ~ 1 1

effect give @a[tag=BossBattleseason2] weakness 3 0
effect give @a[tag=BossBattleseason2] slowness 2 0
effect give @a[tag=BossBattleseason2] wither 5 5
effect give @a[tag=DungeonPlay_season2] blindness 4 0
effect give @a[tag=DungeonPlay_season2] instant_damage 1 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "Music of Finale>>","color": "red"},{"text": "デクレッシェンド","color": "blue"}]