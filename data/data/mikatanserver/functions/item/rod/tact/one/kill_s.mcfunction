scoreboard players add @e[tag=ZomAllies] TactOneTimer 1

execute as @e[tag=ZomAllies] at @s unless entity @e[distance=..10,tag=EnemyMobChecker] run kill @s
execute as @e[tag=ZomAllies,scores={TactOneTimer=200..}] run kill @s

execute if entity @e[type=zombie,tag=ZomAllies,scores={TactOneTimer=..200}] run schedule function mikatanserver:item/rod/tact/one/kill_s 1t