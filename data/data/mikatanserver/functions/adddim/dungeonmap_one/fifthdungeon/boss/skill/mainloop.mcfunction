tag @a[tag=DungeonPlay_5,tag=!BossBattle5] add BossBattle5
##メインループ関数 (ここでタイムを満たしているかをチェックする)

execute if entity @a[scores={FifBossSkill=1}] as @e[tag=FifthDunBoss] run effect give @s glowing 40 1
##goblin and skelton summon
execute if entity @a[scores={FifBossSkill=100}] as @e[tag=FifthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/spawn/mob
execute if entity @a[scores={FifBossSkill=100}] as @e[tag=FifthDunBoss] run tellraw @a[tag=DungeonPlay_5] [{"text": "Goblin king>>","color": "dark_green"},{"text": "Summon Allies","color": "red"}]

execute if entity @a[scores={FifBossSkill=375}] as @e[tag=FifthDunBoss] run tp @s @a[tag=DungeonPlay_5,tag=BossBattle5,sort=random,limit=1]
execute if entity @a[scores={FifBossSkill=375}] as @e[tag=FifthDunBoss] run tellraw @a[tag=DungeonPlay_5] [{"text": "Goblin king>>","color": "dark_green"},{"text": "teleport","color": "green"}]

execute if entity @a[scores={FifBossSkill=526}] as @e[tag=FifthDunBoss] run tp @s @a[tag=DungeonPlay_5,tag=BossBattle5,sort=random,limit=1]
execute if entity @a[scores={FifBossSkill=526}] as @e[tag=FifthDunBoss] run tellraw @a[tag=DungeonPlay_5] [{"text": "Goblin king>>","color": "dark_green"},{"text": "teleport","color": "green"}]



##loop reset
execute if entity @a[scores={FifBossSkill=625..}] run scoreboard players set @a FifBossSkill 0