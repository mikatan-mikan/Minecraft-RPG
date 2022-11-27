execute as @a[tag=BossBattle23] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1
particle soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 1 100
function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/bomb/set_par
effect give @a[distance=..5] instant_damage 1 3
kill @s