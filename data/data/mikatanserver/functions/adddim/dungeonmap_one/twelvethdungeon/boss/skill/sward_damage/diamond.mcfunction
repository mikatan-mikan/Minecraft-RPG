effect give @a[distance=..1] instant_damage 1 2
effect give @a[distance=..1] blindness 2 0
execute as @a[distance=..1] at @s run playsound item.shield.break master @s ~ ~ ~ 1 1
kill @s