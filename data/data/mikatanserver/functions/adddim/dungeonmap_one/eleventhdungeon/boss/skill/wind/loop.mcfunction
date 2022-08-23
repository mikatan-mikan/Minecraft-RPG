scoreboard players add @s windmasiccount 1
particle minecraft:sweep_attack ~ ~ ~ 0.125 0.125 0.125 1 100
execute as @s at @s run tp @s ^ ^ ^1
execute at @s as @e[distance=..1,type=!armor_stand] if entity @s[tag=!EleventhDunBoss,type=player] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/wind/executation
#execute as @s[scores={windmasiccount=..20}] run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/wind/loop
execute as @s[scores={windmasiccount=..20}] run schedule function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/wind/loop_fun 1t
execute if entity @s[scores={windmasiccount=20..}] run kill @s