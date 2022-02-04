tellraw @a[tag=DungeonPlay_6] [{"text": "Lava Cube>>", "color": "red","bold": true},{"text": "healing","color": "green"}]
effect give @e[tag=SixthDunBoss] instant_health 1 3
execute as @a[tag=DungeonPlay_6] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 2 2
execute at @e[tag=SixthDunBoss] run particle heart ~ ~ ~ 1 1 1 1 100