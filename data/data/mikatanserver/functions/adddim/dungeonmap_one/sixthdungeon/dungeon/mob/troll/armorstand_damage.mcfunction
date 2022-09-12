effect give @a[distance=..2] instant_damage 1 0
execute if entity @a[distance=..2] run kill @s

execute at @s if entity @s[nbt={OnGround:1b}] run kill @s