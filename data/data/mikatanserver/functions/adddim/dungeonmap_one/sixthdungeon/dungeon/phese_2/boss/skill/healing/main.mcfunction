tellraw @a[tag=DungeonPlay_6] [{"text": "Leaf Spirit of Future>>", "color": "green","bold": true},{"text": "healing","color": "green"}]
effect give @e[tag=SixthDunBoss] instant_damage 1 4
execute as @a[tag=DungeonPlay_6] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 2 2
execute at @e[tag=SixthDunBoss] run particle heart ~ ~ ~ 1 1 1 1 100