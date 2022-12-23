effect clear @a[tag=BossBattle25]
effect give @e[tag=TwentyfiveDunBoss] speed 2 0
effect give @a[distance=..5] instant_damage 1 2
execute as @a[tag=DungeonPlay_25] at @s run playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 1 2 1
tellraw @a[tag=DungeonPlay_25] [{"text": "聖杯を奪いし者>>","color": "yellow"},{"text": "疾風","color": "aqua"}]