execute as @e[tag=TwentyDunBoss] in mikatanserver:dungeon run tp 312.5 79 567.5
execute as @a[tag=TwentyBombMob] at @s run particle block orange_stained_glass ~ ~1 ~ 0.5 0.5 0.5 1 50
execute as @a[tag=BossBattle20] at @s run playsound block.glass.break master @s ~ ~ ~ 1 0
execute as @e[tag=TwentyDunBoss] run data merge entity @s {NoAI:true}
summon zombie ~ ~ ~ {Tags:["TwentyBombMob","TwentyDunMob"],ActiveEffects:[{Id:24,ShowIcon:false,ShowParticles:false,Duration:1000000000}]}