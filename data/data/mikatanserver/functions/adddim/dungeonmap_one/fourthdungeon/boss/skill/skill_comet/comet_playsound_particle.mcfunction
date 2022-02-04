execute if entity @a[scores={FourBossSkill=..206}] run execute as @e[tag=CometWMob] at @s run particle explosion ~ ~ ~ 0.5 0.5 0.5 2 10
execute as @a[scores={FourBossSkill=176}] at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 2 0
execute as @a[scores={FourBossSkill=206}] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 2 0
execute if entity @a[scores={FourBossSkill=206}] as @e[tag=CometWMob] at @s run effect give @e[distance=..5] instant_damage 1 1 false
execute as @a[scores={FourBossSkill=206}] run tag @e[tag=CometWMob] remove CometWMob