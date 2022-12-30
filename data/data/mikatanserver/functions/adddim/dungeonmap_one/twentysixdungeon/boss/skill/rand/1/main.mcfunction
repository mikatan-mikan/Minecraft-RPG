effect give @a[tag=BossBattle26] hunger 255 2
effect give @a[tag=BossBattle26] weakness 3 0
execute as @a[tag=BossBattle26] at @s run playsound block.bamboo.break master @s ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_26] [{"text": "大精霊 シルフ>>","color": "#abdbb3"},{"text": "風の加護","color": "dark_green"}]
