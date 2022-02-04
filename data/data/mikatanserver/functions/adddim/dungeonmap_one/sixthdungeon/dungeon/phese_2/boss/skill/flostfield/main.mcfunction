tellraw @a[tag=DungeonPlay_6] [{"text": "Leaf Spirit of Future>>", "color": "green","bold": true},{"text": "frost field","color": "white"}]
effect give @a[tag=DungeonPlay_6] slowness 1 50
execute as @e[tag=SixthDunBoss] run effect give @a[tag=DungeonPlay_6,distance=..10] poison 10 50
execute as @a[tag=DungeonPlay_6] at @s run playsound block.glass.break master @s ~ ~ ~ 2 2