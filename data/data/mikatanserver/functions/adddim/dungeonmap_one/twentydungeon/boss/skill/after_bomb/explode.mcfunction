execute as @a[tag=BossBattle20] at @s run playsound block.glass.break master @s ~ ~ ~ 1 1
execute as @e[tag=TwentyBombMob] at @s run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/after_bomb/self
execute as @e[tag=TwentyDunBoss] run data merge entity @s {NoAI:false}