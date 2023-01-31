effect clear @s
effect give @s resistance 10 2
effect give @a[tag=BossBattleseason2] weakness 10 0
execute as @a[tag=DungeonPlay_season2] at @s run playsound block.anvil.destroy master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "Michelle>>","color": "gold"},{"text": "防剣の構え！！","color": "yellow"}]