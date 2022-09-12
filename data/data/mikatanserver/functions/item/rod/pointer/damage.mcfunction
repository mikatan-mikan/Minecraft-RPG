execute as @e[type=#mikatanserver:mobs,distance=..15,sort=nearest,limit=1] at @s run function mikatanserver:item/rod/pointer/mob_exe

summon area_effect_cloud ~ ~ ~ {CustomNameVisible:1,ReapplicationDelay:50,Radius:1f,Duration:6,Effects:[{Id:11,Amplifier:4,Duration:8}]}

playsound block.anvil.place master @s ~ ~ ~ 0.2 0