execute as @e[tag=FireBallArmor2] at @s run effect give @e[type=#mikatanserver:undead,distance=..3] instant_health 2 2
execute as @e[tag=FireBallArmor2] at @s run effect give @e[type=#mikatanserver:not_undead,distance=..3] instant_damage 2 2
execute as @e[tag=FireBallArmor2] at @s as @e[type=#mikatanserver:mobs,distance=..3] run data merge entity @s {Fire:200}
execute as @e[tag=FireBallArmor2] at @s if entity @e[type=#mikatanserver:mobs,distance=..3] run particle explosion ~ ~ ~ 0.2 0.2 0.2 1 3
execute as @e[tag=FireBallArmor2] at @s if entity @e[type=#mikatanserver:mobs,distance=..3] run playsound minecraft:entity.generic.explode master @a[distance=..15]
execute as @e[tag=FireBallArmor2] at @s if entity @e[type=#mikatanserver:mobs,distance=..3] run kill @s

execute as @e[tag=FireBallArmor2] run kill @s[nbt={OnGround:1b}]

execute as @e[tag=FireBallArmor2] at @s run particle lava ~ ~ ~ 0.2 0.2 0.2 0 5

execute if entity @e[tag=FireBallArmor2] run schedule function mikatanserver:item/rod/fireball/damage_2 1t