tag @a[tag=DungeonPlay_2,tag=!BossBattle2] add BossBattle2

scoreboard players add @s SecDSkillTimer1 1
execute as @s at @s if entity @s[scores={SecDSkillTimer1=60}] if block ^3 ^ ^ air run tellraw @a[tag=DungeonPlay_2] [{"text":"✧satellite>>","color": "green"},{"text": "teleport!","color": "dark_green"}]
execute as @s at @s if entity @s[scores={SecDSkillTimer1=60}] if block ^3 ^ ^ air run tp @s ^3 ^ ^
execute as @s at @s if entity @s[scores={SecDSkillTimer1=60}] if block ^1 ^ ^2 air run tellraw @a[tag=DungeonPlay_2] [{"text":"✧satellite>>","color": "green"},{"text": "teleport!","color": "dark_green"}]
execute as @s at @s if entity @s[scores={SecDSkillTimer1=80}] if block ^-1 ^ ^2 air run tp @s ^-1 ^ ^2
execute as @s at @s if entity @s[scores={SecDSkillTimer1=60}] if block ^-4 ^ ^3 air run tellraw @a[tag=DungeonPlay_2] [{"text":"✧satellite>>","color": "green"},{"text": "teleport!","color": "dark_green"}]
execute as @s at @s if entity @s[scores={SecDSkillTimer1=100}] if block ^-4 ^ ^3 air run tp @s ^-4 ^ ^3
execute as @s at @s if entity @s[scores={SecDSkillTimer1=150}] run tellraw @a[tag=DungeonPlay_2] [{"text":"✧satellite>>","color": "green"},{"text": "windmasic!","color": "aqua"}]
execute as @s at @s if entity @s[scores={SecDSkillTimer1=150}] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillfile/main
execute as @s at @s if entity @s[scores={SecDSkillTimer1=160}] run scoreboard players set @s SecDSkillTimer1 0