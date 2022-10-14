scoreboard players add @e[tag=RuinsZomAllies] TactOneTimer 1

execute as @e[tag=RuinsZomAllies] at @s unless entity @e[distance=..10,tag=EnemyMobChecker] run kill @s
execute as @e[tag=RuinsZomAllies,scores={TactOneTimer=200..}] run kill @s

execute if entity @e[type=zombie,tag=RuinsZomAllies,scores={TactOneTimer=..200}] run schedule function mikatanserver:item/rod/tact/three/kill_s 1t