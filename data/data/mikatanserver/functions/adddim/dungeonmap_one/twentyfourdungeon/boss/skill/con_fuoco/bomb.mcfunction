particle falling_water ~ ~ ~ 0 0 0 1 20

execute if score $diff TwentyfourBossSkill matches 2 run effect give @a[distance=..3] instant_damage 1 4
execute if score $diff TwentyfourBossSkill matches 3 run effect give @a[distance=..3] instant_damage 1 5

kill @s