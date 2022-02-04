execute if entity @a[scores={CometTimer=..11}] run execute as @e[tag=FourthDunBoss] at @s run particle explosion ~ ~ ~ 0.5 0.5 0.5 2 10
execute as @a[scores={CometTimer=..1}] at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 2 0
execute as @a[scores={CometTimer=10..11}] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 2 0
execute if entity @a[scores={CometTimer=12..}] run scoreboard objectives remove CometTimer