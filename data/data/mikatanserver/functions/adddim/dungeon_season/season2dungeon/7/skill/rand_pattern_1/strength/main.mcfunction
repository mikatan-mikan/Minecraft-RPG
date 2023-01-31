effect clear @e[tag=season2DunBoss]
effect give @a[tag=BossBattleseason2] hunger 5 255
effect clear @a[tag=BossBattleseason2] absorption
effect give @a[tag=BossBattleseason2] instant_damage 1 1

execute as @a[tag=DungeonPlay_season2] at @s run playsound item.trident.thunder master @s ~ ~ ~ 2 2 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "命の希釈！！","color": "yellow"}]