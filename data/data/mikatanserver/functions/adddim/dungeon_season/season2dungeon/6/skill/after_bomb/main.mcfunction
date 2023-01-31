execute as @e[tag=season2DunBoss] in mikatanserver:dungeon run tp -1279.5 0 1020.5
execute as @a[tag=season2BombMob] at @s run particle block orange_stained_glass ~ ~1 ~ 0.5 0.5 0.5 1 50
execute as @a[tag=BossBattleseason2] at @s run playsound block.glass.break master @s ~ ~ ~ 1 0
execute as @e[tag=season2DunBoss] run data merge entity @s {NoAI:true}
summon zombie ~ ~ ~ {Tags:["season2BombMob","season2DunMob"],ActiveEffects:[{Id:24,ShowIcon:false,ShowParticles:false,Duration:1000000000}]}