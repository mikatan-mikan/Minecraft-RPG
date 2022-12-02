scoreboard players set $mana TMP 50
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @a[distance=..3] regeneration 1 3
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.7
execute as @a[distance=..3] at @s run particle heart ~ ~ ~ 0.25 0.5 0.25 1 20