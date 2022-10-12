effect give @a[distance=..1] instant_damage 1 2
effect give @a[distance=..1] slowness 5 1
execute as @a[distance=..1] at @s run playsound item.shield.break master @s ~ ~ ~ 1 0
kill @s