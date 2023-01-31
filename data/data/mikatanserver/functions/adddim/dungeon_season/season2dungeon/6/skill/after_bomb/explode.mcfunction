execute as @a[tag=BossBattleseason2] at @s run playsound block.glass.break master @s ~ ~ ~ 1 1
execute as @e[tag=season2BombMob] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/after_bomb/self
execute as @e[tag=season2DunBoss] run data merge entity @s {NoAI:false}