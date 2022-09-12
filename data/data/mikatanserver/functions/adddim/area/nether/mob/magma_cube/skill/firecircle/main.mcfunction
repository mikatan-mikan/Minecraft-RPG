function mikatanserver:adddim/area/nether/mob/magma_cube/skill/firecircle/particle
execute as @a[distance=..10] run playsound item.firecharge.use master @s ~ ~ ~ 1 0.7
effect give @a[distance=..10] instant_damage 1 3