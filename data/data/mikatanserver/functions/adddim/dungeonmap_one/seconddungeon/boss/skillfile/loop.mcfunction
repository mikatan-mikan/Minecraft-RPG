scoreboard players add @s windmasiccount 1
particle minecraft:sweep_attack ~ ~ ~ 0.125 0.125 0.125 1 10
execute as @s at @s run tp @s ^ ^ ^1
execute at @s as @e[distance=..1,type=!armor_stand] if entity @s[tag=!SecondDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillfile/executation
# summon lightning_bolt ~ ~ ~
execute as @s[scores={windmasiccount=..20}] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillfile/loop
execute if entity @s[scores={windmasiccount=20..}] run kill @s