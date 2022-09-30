scoreboard players add @e[tag=IceZomAllies] TactOneTimer 1

execute as @e[tag=IceZomAllies] at @s unless entity @e[distance=..10,tag=EnemyMobChecker] run kill @s
execute as @e[tag=IceZomAllies,scores={TactOneTimer=200..}] run kill @s

execute if entity @e[type=zombie,tag=IceZomAllies,scores={TactOneTimer=..200}] run schedule function mikatanserver:item/rod/tact/two/kill_s 1t