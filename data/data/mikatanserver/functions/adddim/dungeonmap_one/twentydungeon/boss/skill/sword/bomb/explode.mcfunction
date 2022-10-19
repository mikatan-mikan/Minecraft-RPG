particle explosion_emitter ~ ~ ~ 0.2 0.2 0.2 1 1
execute as @a[tag=BossBattle20] at @s run playsound entity.generic.explode master @s ~ ~ ~ 1 1
execute as @a[tag=BossBattle20,distance=..5] at @s run effect give @s instant_damage 1 4
kill @s