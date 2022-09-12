execute as @a[tag=BossBattle14] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1
particle flame ~ ~ ~ 0.5 0.5 0.5 1 100
function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/tp/particle
effect give @a[distance=..5] instant_damage 1 3
kill @s